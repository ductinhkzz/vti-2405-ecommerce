import { TransactionBaseService, buildQuery } from '@medusajs/medusa';
import { FindConfig, Selector } from '@medusajs/types';
import { EntityManager } from 'typeorm';
import { MedusaError } from '@medusajs/utils';

import { BlockSection } from '../models/block-section';
import BlockSectionRepository from '../repositories/block-section';

type InjectedDependencies = {
  manager: EntityManager;
  blockSectionRepository: typeof BlockSectionRepository;
};

export default class BlockSectionService extends TransactionBaseService {
  protected readonly blockSectionRepository_: typeof BlockSectionRepository;
  constructor({ blockSectionRepository }: InjectedDependencies) {
    super(arguments[0]);

    this.blockSectionRepository_ = blockSectionRepository;
  }

  async listAndCount(
    selector?: Selector<BlockSection>,
    config: FindConfig<BlockSection> = {
      skip: 0,
      take: 20,
      relations: [],
    }
  ): Promise<[BlockSection[], number]> {
    const blockRepo = this.activeManager_.withRepository(this.blockSectionRepository_);

    const query = buildQuery(selector, config);

    return blockRepo.findAndCount(query);
  }

  async retrieve(id: string, config?: FindConfig<BlockSection>): Promise<BlockSection> {
    const blockRepo = this.activeManager_.withRepository(this.blockSectionRepository_);

    const query = buildQuery(
      {
        id,
      },
      config
    );

    const block = await blockRepo.findOne(query);

    if (!block) {
      throw new MedusaError(MedusaError.Types.NOT_FOUND, 'BlockSection was not found');
    }

    return block;
  }

  async create(
    data: Pick<BlockSection, 'title' | 'description' | 'colection_id' | 'media' | 'sub_title'>
  ): Promise<BlockSection> {
    return this.atomicPhase_(async (manager) => {
      const blockRepo = manager.withRepository(this.blockSectionRepository_);
      const block = blockRepo.create();
      block.title = data.title;
      block.colection_id = data.colection_id;
      block.description = data.description;
      block.media = data.media;
      block.sub_title = data.sub_title;
      const result = await blockRepo.save(block);

      return result;
    });
  }

  async update(id: string, data: Omit<Partial<BlockSection>, 'id'>): Promise<BlockSection> {
    return await this.atomicPhase_(async (manager) => {
      const blockRepo = manager.withRepository(this.blockSectionRepository_);
      const block = await this.retrieve(id);

      Object.assign(block, data);

      return await blockRepo.save(block);
    });
  }

  async delete(id: string): Promise<void> {
    return await this.atomicPhase_(async (manager) => {
      const blockRepo = manager.withRepository(this.blockSectionRepository_);
      const block = await this.retrieve(id);

      await blockRepo.remove([block]);
    });
  }
}
