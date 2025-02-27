
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct cnic_id_tbl {int table; int lock; void* next; void* max; void* start; } ;


 int BITS_TO_LONGS (void*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kcalloc (int ,int,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int cnic_init_id_tbl(struct cnic_id_tbl *id_tbl, u32 size, u32 start_id,
       u32 next)
{
 id_tbl->start = start_id;
 id_tbl->max = size;
 id_tbl->next = next;
 spin_lock_init(&id_tbl->lock);
 id_tbl->table = kcalloc(BITS_TO_LONGS(size), sizeof(long), GFP_KERNEL);
 if (!id_tbl->table)
  return -ENOMEM;

 return 0;
}
