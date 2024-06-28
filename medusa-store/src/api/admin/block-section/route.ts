import type { MedusaRequest, MedusaResponse } from '@medusajs/medusa';
import { EntityManager } from 'typeorm';

import BlockSectionService from '@/services/block-section';

export async function GET(req: MedusaRequest, res: MedusaResponse) {
  const blockSectionService: BlockSectionService = req.scope.resolve('blockSectionService');

  const id = req.params.id;
  if (id) {
    const status = await blockSectionService.retrieve(id);
    res.status(200).json({ status });
    return;
  }

  const status = await blockSectionService.listAndCount();

  res.status(200).json({ status });
}

export async function POST(req: MedusaRequest, res: MedusaResponse) {
  const blockSectionService: BlockSectionService = req.scope.resolve('blockSectionService');
  const manager: EntityManager = req.scope.resolve('manager');
  const status = await manager.transaction(async (transactionManager) => {
    return await blockSectionService.withTransaction(transactionManager).create(req.body);
  });

  res.status(202).json({ status });
}

export async function PUT(req: MedusaRequest, res: MedusaResponse) {
  const blockSectionService: BlockSectionService = req.scope.resolve('blockSectionService');
  const manager: EntityManager = req.scope.resolve('manager');
  const id = req.params.id;
  const status = await manager.transaction(async (transactionManager) => {
    return await blockSectionService.withTransaction(transactionManager).update(id, req.body);
  });

  res.status(202).json({ status });
}

export async function DELETE(req: MedusaRequest, res: MedusaResponse) {
  const blockSectionService: BlockSectionService = req.scope.resolve('blockSectionService');
  const manager: EntityManager = req.scope.resolve('manager');
  const id = req.params.id;
  const status = await manager.transaction(async (transactionManager) => {
    return await blockSectionService.withTransaction(transactionManager).delete(id);
  });

  res.status(202).json({ status });
}
