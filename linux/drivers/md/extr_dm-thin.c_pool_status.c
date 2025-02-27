
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct pool_c {int requested_pf; scalar_t__ low_water_blocks; TYPE_5__* data_dev; TYPE_3__* metadata_dev; struct pool* pool; } ;
struct TYPE_6__ {int error_if_no_space; int discard_passdown; int discard_enabled; } ;
struct pool {scalar_t__ sectors_per_block; int pmd; TYPE_1__ pf; int pool_md; } ;
struct dm_target {struct pool_c* private; } ;
typedef int status_type_t ;
typedef enum pool_mode { ____Placeholder_pool_mode } pool_mode ;
typedef scalar_t__ dm_block_t ;
struct TYPE_10__ {TYPE_4__* bdev; } ;
struct TYPE_9__ {int bd_dev; } ;
struct TYPE_8__ {TYPE_2__* bdev; } ;
struct TYPE_7__ {int bd_dev; } ;


 int BDEVNAME_SIZE ;
 int DMEMIT (char*,...) ;
 int DMERR (char*,int ,int) ;
 unsigned int DM_STATUS_NOFLUSH_FLAG ;
 int PM_FAIL ;
 int PM_OUT_OF_DATA_SPACE ;


 scalar_t__ calc_metadata_threshold (struct pool_c*) ;
 int commit (struct pool*) ;
 int dm_device_name (int ) ;
 int dm_pool_get_data_dev_size (int ,scalar_t__*) ;
 int dm_pool_get_free_block_count (int ,scalar_t__*) ;
 int dm_pool_get_free_metadata_block_count (int ,scalar_t__*) ;
 int dm_pool_get_metadata_dev_size (int ,scalar_t__*) ;
 int dm_pool_get_metadata_snap (int ,scalar_t__*) ;
 int dm_pool_get_metadata_transaction_id (int ,scalar_t__*) ;
 int dm_pool_metadata_needs_check (int ) ;
 int dm_suspended (struct dm_target*) ;
 int emit_flags (int *,char*,unsigned int,unsigned int) ;
 int format_dev_t (char*,int ) ;
 int get_pool_mode (struct pool*) ;
 int is_read_only_pool_mode (int) ;

__attribute__((used)) static void pool_status(struct dm_target *ti, status_type_t type,
   unsigned status_flags, char *result, unsigned maxlen)
{
 int r;
 unsigned sz = 0;
 uint64_t transaction_id;
 dm_block_t nr_free_blocks_data;
 dm_block_t nr_free_blocks_metadata;
 dm_block_t nr_blocks_data;
 dm_block_t nr_blocks_metadata;
 dm_block_t held_root;
 enum pool_mode mode;
 char buf[BDEVNAME_SIZE];
 char buf2[BDEVNAME_SIZE];
 struct pool_c *pt = ti->private;
 struct pool *pool = pt->pool;

 switch (type) {
 case 129:
  if (get_pool_mode(pool) == PM_FAIL) {
   DMEMIT("Fail");
   break;
  }


  if (!(status_flags & DM_STATUS_NOFLUSH_FLAG) && !dm_suspended(ti))
   (void) commit(pool);

  r = dm_pool_get_metadata_transaction_id(pool->pmd, &transaction_id);
  if (r) {
   DMERR("%s: dm_pool_get_metadata_transaction_id returned %d",
         dm_device_name(pool->pool_md), r);
   goto err;
  }

  r = dm_pool_get_free_metadata_block_count(pool->pmd, &nr_free_blocks_metadata);
  if (r) {
   DMERR("%s: dm_pool_get_free_metadata_block_count returned %d",
         dm_device_name(pool->pool_md), r);
   goto err;
  }

  r = dm_pool_get_metadata_dev_size(pool->pmd, &nr_blocks_metadata);
  if (r) {
   DMERR("%s: dm_pool_get_metadata_dev_size returned %d",
         dm_device_name(pool->pool_md), r);
   goto err;
  }

  r = dm_pool_get_free_block_count(pool->pmd, &nr_free_blocks_data);
  if (r) {
   DMERR("%s: dm_pool_get_free_block_count returned %d",
         dm_device_name(pool->pool_md), r);
   goto err;
  }

  r = dm_pool_get_data_dev_size(pool->pmd, &nr_blocks_data);
  if (r) {
   DMERR("%s: dm_pool_get_data_dev_size returned %d",
         dm_device_name(pool->pool_md), r);
   goto err;
  }

  r = dm_pool_get_metadata_snap(pool->pmd, &held_root);
  if (r) {
   DMERR("%s: dm_pool_get_metadata_snap returned %d",
         dm_device_name(pool->pool_md), r);
   goto err;
  }

  DMEMIT("%llu %llu/%llu %llu/%llu ",
         (unsigned long long)transaction_id,
         (unsigned long long)(nr_blocks_metadata - nr_free_blocks_metadata),
         (unsigned long long)nr_blocks_metadata,
         (unsigned long long)(nr_blocks_data - nr_free_blocks_data),
         (unsigned long long)nr_blocks_data);

  if (held_root)
   DMEMIT("%llu ", held_root);
  else
   DMEMIT("- ");

  mode = get_pool_mode(pool);
  if (mode == PM_OUT_OF_DATA_SPACE)
   DMEMIT("out_of_data_space ");
  else if (is_read_only_pool_mode(mode))
   DMEMIT("ro ");
  else
   DMEMIT("rw ");

  if (!pool->pf.discard_enabled)
   DMEMIT("ignore_discard ");
  else if (pool->pf.discard_passdown)
   DMEMIT("discard_passdown ");
  else
   DMEMIT("no_discard_passdown ");

  if (pool->pf.error_if_no_space)
   DMEMIT("error_if_no_space ");
  else
   DMEMIT("queue_if_no_space ");

  if (dm_pool_metadata_needs_check(pool->pmd))
   DMEMIT("needs_check ");
  else
   DMEMIT("- ");

  DMEMIT("%llu ", (unsigned long long)calc_metadata_threshold(pt));

  break;

 case 128:
  DMEMIT("%s %s %lu %llu ",
         format_dev_t(buf, pt->metadata_dev->bdev->bd_dev),
         format_dev_t(buf2, pt->data_dev->bdev->bd_dev),
         (unsigned long)pool->sectors_per_block,
         (unsigned long long)pt->low_water_blocks);
  emit_flags(&pt->requested_pf, result, sz, maxlen);
  break;
 }
 return;

err:
 DMEMIT("Error");
}
