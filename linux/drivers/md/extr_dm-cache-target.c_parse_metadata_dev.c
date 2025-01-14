
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct dm_arg_set {int dummy; } ;
struct cache_args {TYPE_1__* metadata_dev; int ti; } ;
typedef scalar_t__ sector_t ;
struct TYPE_3__ {int bdev; } ;


 int BDEVNAME_SIZE ;
 int DMWARN (char*,int ,int ) ;
 scalar_t__ DM_CACHE_METADATA_MAX_SECTORS_WARNING ;
 int EINVAL ;
 int FMODE_READ ;
 int FMODE_WRITE ;
 int THIN_METADATA_MAX_SECTORS ;
 int at_least_one_arg (struct dm_arg_set*,char**) ;
 int bdevname (int ,char*) ;
 int dm_get_device (int ,int ,int,TYPE_1__**) ;
 int dm_shift_arg (struct dm_arg_set*) ;
 scalar_t__ get_dev_size (TYPE_1__*) ;

__attribute__((used)) static int parse_metadata_dev(struct cache_args *ca, struct dm_arg_set *as,
         char **error)
{
 int r;
 sector_t metadata_dev_size;
 char b[BDEVNAME_SIZE];

 if (!at_least_one_arg(as, error))
  return -EINVAL;

 r = dm_get_device(ca->ti, dm_shift_arg(as), FMODE_READ | FMODE_WRITE,
     &ca->metadata_dev);
 if (r) {
  *error = "Error opening metadata device";
  return r;
 }

 metadata_dev_size = get_dev_size(ca->metadata_dev);
 if (metadata_dev_size > DM_CACHE_METADATA_MAX_SECTORS_WARNING)
  DMWARN("Metadata device %s is larger than %u sectors: excess space will not be used.",
         bdevname(ca->metadata_dev->bdev, b), THIN_METADATA_MAX_SECTORS);

 return 0;
}
