
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pt1_table {TYPE_1__* page; } ;
struct pt1 {struct pt1_table* tables; } ;
struct TYPE_2__ {void* next_pfn; } ;


 int ENOMEM ;
 void* cpu_to_le32 (int ) ;
 int pt1_cleanup_table (struct pt1*,struct pt1_table*) ;
 int pt1_init_table (struct pt1*,struct pt1_table*,int *) ;
 int pt1_init_table_count (struct pt1*) ;
 int pt1_nr_tables ;
 int pt1_register_tables (struct pt1*,int ) ;
 int vfree (struct pt1_table*) ;
 struct pt1_table* vmalloc (int) ;

__attribute__((used)) static int pt1_init_tables(struct pt1 *pt1)
{
 struct pt1_table *tables;
 int i, ret;
 u32 first_pfn, pfn;

 tables = vmalloc(sizeof(struct pt1_table) * pt1_nr_tables);
 if (tables == ((void*)0))
  return -ENOMEM;

 pt1_init_table_count(pt1);

 i = 0;
 if (pt1_nr_tables) {
  ret = pt1_init_table(pt1, &tables[0], &first_pfn);
  if (ret)
   goto err;
  i++;
 }

 while (i < pt1_nr_tables) {
  ret = pt1_init_table(pt1, &tables[i], &pfn);
  if (ret)
   goto err;
  tables[i - 1].page->next_pfn = cpu_to_le32(pfn);
  i++;
 }

 tables[pt1_nr_tables - 1].page->next_pfn = cpu_to_le32(first_pfn);

 pt1_register_tables(pt1, first_pfn);
 pt1->tables = tables;
 return 0;

err:
 while (i--)
  pt1_cleanup_table(pt1, &tables[i]);

 vfree(tables);
 return ret;
}
