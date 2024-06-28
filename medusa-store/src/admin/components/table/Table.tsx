import {
  ColumnDef,
  OnChangeFn,
  PaginationState,
  flexRender,
  getCoreRowModel,
  useReactTable,
} from '@tanstack/react-table';
import { Table as MedusaTable, Button } from '@medusajs/ui';
import { ChevronLeft, ChevronRight } from '@medusajs/icons';

interface TableProps<T extends { id: string }> {
  data: T[];
  columns: ColumnDef<T>[];
  rowCount?: number;
  pagination?: PaginationState;
  total?: number;
  onPaginationChange?: OnChangeFn<PaginationState>;
}

const Table = <T extends { id: string }>({
  data,
  columns,
  rowCount,
  pagination,
  total,
  onPaginationChange,
}: TableProps<T>) => {
  const table = useReactTable({
    data,
    columns,
    rowCount, // new in v8.13.0 - alternatively, just pass in `pageCount` directly
    state: {
      pagination,
    },
    onPaginationChange,
    getCoreRowModel: getCoreRowModel(),
    manualPagination: true, //we're doing manual "server-side" pagination
    debugTable: true,
  });

  return (
    <>
      <MedusaTable>
        <MedusaTable.Header>
          {table.getHeaderGroups().map((headerGroup) => (
            <MedusaTable.Row key={headerGroup.id}>
              {headerGroup.headers.map((header) => {
                return (
                  <MedusaTable.HeaderCell key={header.id} colSpan={header.colSpan}>
                    {header.isPlaceholder ? null : (
                      <div>{flexRender(header.column.columnDef.header, header.getContext())}</div>
                    )}
                  </MedusaTable.HeaderCell>
                );
              })}
            </MedusaTable.Row>
          ))}
        </MedusaTable.Header>
        <MedusaTable.Body>
          {table.getRowModel().rows.map((row) => {
            return (
              <MedusaTable.Row key={row.id}>
                {row.getVisibleCells().map((cell) => {
                  return (
                    <MedusaTable.Cell key={cell.id}>
                      {flexRender(cell.column.columnDef.cell, cell.getContext())}
                    </MedusaTable.Cell>
                  );
                })}
              </MedusaTable.Row>
            );
          })}
        </MedusaTable.Body>
      </MedusaTable>
      <div>
        <div className='inter-small-regular text-grey-50 flex w-full justify-between'>
          <div className='h-fit w-fit'>
            <div>{total} Products</div>
          </div>
          <div className='flex space-x-4'>
            <div className='h-fit w-fit'>
              <div>
                {table.getState().pagination.pageIndex + 1} of {table.getPageCount().toLocaleString()}
              </div>
            </div>
          </div>
          <div className='flex items-center space-x-4'>
            <Button onClick={() => table.previousPage()} disabled={!table.getCanPreviousPage()}>
              <ChevronLeft />
            </Button>
            <Button onClick={() => table.nextPage()} disabled={!table.getCanNextPage()}>
              <ChevronRight />
            </Button>
          </div>
        </div>
      </div>
    </>
  );
};

export default Table;
