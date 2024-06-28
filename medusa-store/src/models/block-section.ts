import { BaseEntity } from '@medusajs/medusa';
import { Column, Entity } from 'typeorm';

type MediaType = {
  url: string;
  isVideo?: boolean;
};

@Entity()
export class BlockSection extends BaseEntity {
  @Column({ nullable: true })
  title?: string;

  @Column({ nullable: true })
  sub_title?: string;

  @Column({ nullable: true })
  description?: string;

  @Column({ type: 'jsonb' })
  media?: MediaType;

  @Column()
  colection_id?: string;
}
