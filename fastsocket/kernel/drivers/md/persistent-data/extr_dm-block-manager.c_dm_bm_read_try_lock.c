
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_buffer {int dummy; } ;
struct dm_block_validator {int dummy; } ;
struct dm_block_manager {int bufio; } ;
struct dm_block {int dummy; } ;
struct buffer_aux {int lock; scalar_t__ write_locked; } ;
typedef int dm_block_t ;


 int EWOULDBLOCK ;
 int IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int bl_down_read_nonblock (int *) ;
 int bl_up_read (int *) ;
 int dm_bm_validate_buffer (struct dm_block_manager*,int ,struct buffer_aux*,struct dm_block_validator*) ;
 void* dm_bufio_get (int ,int ,struct dm_buffer**) ;
 struct buffer_aux* dm_bufio_get_aux_data (int ) ;
 int dm_bufio_release (int ) ;
 int report_recursive_bug (int ,int) ;
 int to_buffer (struct dm_block*) ;
 scalar_t__ unlikely (int) ;

int dm_bm_read_try_lock(struct dm_block_manager *bm,
   dm_block_t b, struct dm_block_validator *v,
   struct dm_block **result)
{
 struct buffer_aux *aux;
 void *p;
 int r;

 p = dm_bufio_get(bm->bufio, b, (struct dm_buffer **) result);
 if (unlikely(IS_ERR(p)))
  return PTR_ERR(p);
 if (unlikely(!p))
  return -EWOULDBLOCK;

 aux = dm_bufio_get_aux_data(to_buffer(*result));
 r = bl_down_read_nonblock(&aux->lock);
 if (r < 0) {
  dm_bufio_release(to_buffer(*result));
  report_recursive_bug(b, r);
  return r;
 }
 aux->write_locked = 0;

 r = dm_bm_validate_buffer(bm, to_buffer(*result), aux, v);
 if (unlikely(r)) {
  bl_up_read(&aux->lock);
  dm_bufio_release(to_buffer(*result));
  return r;
 }

 return 0;
}
