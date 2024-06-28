import { dataSource } from "@medusajs/medusa/dist/loaders/database";

import { BlockSection } from '../models/block-section';

const BlockSectionRepository = dataSource.getRepository(BlockSection);

export default BlockSectionRepository;
