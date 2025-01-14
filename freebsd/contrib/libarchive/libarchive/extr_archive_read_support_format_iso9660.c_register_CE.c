
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct read_ce_req {scalar_t__ offset; struct file_info* file; } ;
struct read_ce_queue {int cnt; int allocated; struct read_ce_req* reqs; } ;
struct iso9660 {scalar_t__ current_position; scalar_t__ volume_size; struct read_ce_queue read_ce_req; scalar_t__ logical_block_size; } ;
struct file_info {int mode; scalar_t__ offset; scalar_t__ ce_offset; scalar_t__ ce_size; } ;
struct archive_read {int archive; TYPE_1__* format; } ;
typedef int p ;
typedef scalar_t__ int32_t ;
struct TYPE_2__ {scalar_t__ data; } ;


 int AE_IFMT ;
 int AE_IFREG ;
 int ARCHIVE_ERRNO_MISC ;
 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int ENOMEM ;
 int archive_set_error (int *,int ,char*) ;
 struct read_ce_req* calloc (int,int) ;
 int free (struct read_ce_req*) ;
 int memcpy (struct read_ce_req*,struct read_ce_req*,int) ;

__attribute__((used)) static int
register_CE(struct archive_read *a, int32_t location,
    struct file_info *file)
{
 struct iso9660 *iso9660;
 struct read_ce_queue *heap;
 struct read_ce_req *p;
 uint64_t offset, parent_offset;
 int hole, parent;

 iso9660 = (struct iso9660 *)(a->format->data);
 offset = ((uint64_t)location) * (uint64_t)iso9660->logical_block_size;
 if (((file->mode & AE_IFMT) == AE_IFREG &&
     offset >= file->offset) ||
     offset < iso9660->current_position ||
     (((uint64_t)file->ce_offset) + file->ce_size)
       > (uint64_t)iso9660->logical_block_size ||
     offset + file->ce_offset + file->ce_size
    > iso9660->volume_size) {
  archive_set_error(&a->archive, ARCHIVE_ERRNO_MISC,
      "Invalid parameter in SUSP \"CE\" extension");
  return (ARCHIVE_FATAL);
 }


 heap = &(iso9660->read_ce_req);
 if (heap->cnt >= heap->allocated) {
  int new_size;

  if (heap->allocated < 16)
   new_size = 16;
  else
   new_size = heap->allocated * 2;

  if (new_size <= heap->allocated) {
   archive_set_error(&a->archive, ENOMEM, "Out of memory");
   return (ARCHIVE_FATAL);
  }
  p = calloc(new_size, sizeof(p[0]));
  if (p == ((void*)0)) {
   archive_set_error(&a->archive, ENOMEM, "Out of memory");
   return (ARCHIVE_FATAL);
  }
  if (heap->reqs != ((void*)0)) {
   memcpy(p, heap->reqs, heap->cnt * sizeof(*p));
   free(heap->reqs);
  }
  heap->reqs = p;
  heap->allocated = new_size;
 }




 hole = heap->cnt++;
 while (hole > 0) {
  parent = (hole - 1)/2;
  parent_offset = heap->reqs[parent].offset;
  if (offset >= parent_offset) {
   heap->reqs[hole].offset = offset;
   heap->reqs[hole].file = file;
   return (ARCHIVE_OK);
  }

  heap->reqs[hole] = heap->reqs[parent];
  hole = parent;
 }
 heap->reqs[0].offset = offset;
 heap->reqs[0].file = file;
 return (ARCHIVE_OK);
}
