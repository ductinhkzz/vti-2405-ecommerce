import { MigrationInterface, QueryRunner } from "typeorm";

export class BlockSection1719498603377 implements MigrationInterface {
    name = 'BlockSection1719498603377'

    public async up(queryRunner: QueryRunner): Promise<void> {
        await queryRunner.query(`CREATE TABLE "block_section" ("id" character varying NOT NULL, "created_at" TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT now(), "updated_at" TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT now(), "title" character varying, "sub_title" character varying, "description" character varying, "media" jsonb NOT NULL, "colection_id" character varying NOT NULL, CONSTRAINT "PK_b0bf0e5d9077cc2b931c14c784a" PRIMARY KEY ("id"))`);
    }

    public async down(queryRunner: QueryRunner): Promise<void> {
        await queryRunner.query(`DROP TABLE "block_section"`);
    }

}
