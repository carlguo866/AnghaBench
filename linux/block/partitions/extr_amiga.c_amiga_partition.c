
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp ;
struct parsed_partitions {int pp_buf; int bdev; } ;
struct RigidDiskBlock {scalar_t__ rdb_SummedLongs; scalar_t__ rdb_BlockBytes; scalar_t__ rdb_PartitionList; } ;
struct PartitionBlock {scalar_t__ pb_Next; scalar_t__ pb_ID; scalar_t__ pb_SummedLongs; scalar_t__* pb_Environment; } ;
typedef scalar_t__ __be32 ;
typedef int Sector ;


 int BDEVNAME_SIZE ;
 int IDNAME_PARTITION ;
 int IDNAME_RIGIDDISK ;
 int PAGE_SIZE ;
 int RDB_ALLOCATION_LIMIT ;
 int bdevname (int ,char*) ;
 int be32_to_cpu (scalar_t__) ;
 scalar_t__ checksum_block (scalar_t__*,int) ;
 scalar_t__ cpu_to_be32 (int ) ;
 int pr_err (char*,int,...) ;
 int put_dev_sector (int ) ;
 int put_partition (struct parsed_partitions*,int ,int,int) ;
 unsigned char* read_part_sector (struct parsed_partitions*,int,int *) ;
 int snprintf (char*,int,char*,int,...) ;
 int strlcat (int ,char*,int ) ;
 scalar_t__ warn_no_part ;

int amiga_partition(struct parsed_partitions *state)
{
 Sector sect;
 unsigned char *data;
 struct RigidDiskBlock *rdb;
 struct PartitionBlock *pb;
 int start_sect, nr_sects, blk, part, res = 0;
 int blksize = 1;
 int slot = 1;
 char b[BDEVNAME_SIZE];

 for (blk = 0; ; blk++, put_dev_sector(sect)) {
  if (blk == RDB_ALLOCATION_LIMIT)
   goto rdb_done;
  data = read_part_sector(state, blk, &sect);
  if (!data) {
   if (warn_no_part)
    pr_err("Dev %s: unable to read RDB block %d\n",
           bdevname(state->bdev, b), blk);
   res = -1;
   goto rdb_done;
  }
  if (*(__be32 *)data != cpu_to_be32(IDNAME_RIGIDDISK))
   continue;

  rdb = (struct RigidDiskBlock *)data;
  if (checksum_block((__be32 *)data, be32_to_cpu(rdb->rdb_SummedLongs) & 0x7F) == 0)
   break;



  *(__be32 *)(data+0xdc) = 0;
  if (checksum_block((__be32 *)data,
    be32_to_cpu(rdb->rdb_SummedLongs) & 0x7F)==0) {
   pr_err("Trashed word at 0xd0 in block %d ignored in checksum calculation\n",
          blk);
   break;
  }

  pr_err("Dev %s: RDB in block %d has bad checksum\n",
         bdevname(state->bdev, b), blk);
 }


 blksize = be32_to_cpu( rdb->rdb_BlockBytes ) / 512;

 {
  char tmp[7 + 10 + 1 + 1];


  snprintf(tmp, sizeof(tmp), " RDSK (%d)", blksize * 512);
  strlcat(state->pp_buf, tmp, PAGE_SIZE);
 }
 blk = be32_to_cpu(rdb->rdb_PartitionList);
 put_dev_sector(sect);
 for (part = 1; blk>0 && part<=16; part++, put_dev_sector(sect)) {
  blk *= blksize;
  data = read_part_sector(state, blk, &sect);
  if (!data) {
   if (warn_no_part)
    pr_err("Dev %s: unable to read partition block %d\n",
           bdevname(state->bdev, b), blk);
   res = -1;
   goto rdb_done;
  }
  pb = (struct PartitionBlock *)data;
  blk = be32_to_cpu(pb->pb_Next);
  if (pb->pb_ID != cpu_to_be32(IDNAME_PARTITION))
   continue;
  if (checksum_block((__be32 *)pb, be32_to_cpu(pb->pb_SummedLongs) & 0x7F) != 0 )
   continue;



  nr_sects = (be32_to_cpu(pb->pb_Environment[10]) + 1 -
       be32_to_cpu(pb->pb_Environment[9])) *
      be32_to_cpu(pb->pb_Environment[3]) *
      be32_to_cpu(pb->pb_Environment[5]) *
      blksize;
  if (!nr_sects)
   continue;
  start_sect = be32_to_cpu(pb->pb_Environment[9]) *
        be32_to_cpu(pb->pb_Environment[3]) *
        be32_to_cpu(pb->pb_Environment[5]) *
        blksize;
  put_partition(state,slot++,start_sect,nr_sects);
  {

   char dostype[4];
   char tmp[42];

   __be32 *dt = (__be32 *)dostype;
   *dt = pb->pb_Environment[16];
   if (dostype[3] < ' ')
    snprintf(tmp, sizeof(tmp), " (%c%c%c^%c)",
     dostype[0], dostype[1],
     dostype[2], dostype[3] + '@' );
   else
    snprintf(tmp, sizeof(tmp), " (%c%c%c%c)",
     dostype[0], dostype[1],
     dostype[2], dostype[3]);
   strlcat(state->pp_buf, tmp, PAGE_SIZE);
   snprintf(tmp, sizeof(tmp), "(res %d spb %d)",
    be32_to_cpu(pb->pb_Environment[6]),
    be32_to_cpu(pb->pb_Environment[4]));
   strlcat(state->pp_buf, tmp, PAGE_SIZE);
  }
  res = 1;
 }
 strlcat(state->pp_buf, "\n", PAGE_SIZE);

rdb_done:
 return res;
}
