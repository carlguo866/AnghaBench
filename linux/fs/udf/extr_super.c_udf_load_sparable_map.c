
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
struct udf_sparing_data {struct buffer_head** s_spar_map; scalar_t__ s_packet_len; } ;
struct TYPE_3__ {struct udf_sparing_data s_sparing; } ;
struct udf_part_map {int s_partition_func; int s_partition_type; TYPE_1__ s_type_specific; } ;
struct super_block {scalar_t__ s_blocksize; } ;
struct TYPE_4__ {int ident; } ;
struct sparingTable {int reallocationTableLen; TYPE_2__ sparingIdent; } ;
struct sparablePartitionMap {int numSparingTables; int * locSparingTable; int packetLength; } ;
struct buffer_head {scalar_t__ b_data; } ;


 int EIO ;
 int UDF_ID_SPARING ;
 int UDF_SPARABLE_MAP15 ;
 int brelse (struct buffer_head*) ;
 int is_power_of_2 (scalar_t__) ;
 scalar_t__ le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int strlen (int ) ;
 scalar_t__ strncmp (int ,int ,int ) ;
 int udf_err (struct super_block*,char*,int) ;
 int udf_get_pblock_spar15 ;
 struct buffer_head* udf_read_tagged (struct super_block*,int ,int ,scalar_t__*) ;

__attribute__((used)) static int udf_load_sparable_map(struct super_block *sb,
     struct udf_part_map *map,
     struct sparablePartitionMap *spm)
{
 uint32_t loc;
 uint16_t ident;
 struct sparingTable *st;
 struct udf_sparing_data *sdata = &map->s_type_specific.s_sparing;
 int i;
 struct buffer_head *bh;

 map->s_partition_type = UDF_SPARABLE_MAP15;
 sdata->s_packet_len = le16_to_cpu(spm->packetLength);
 if (!is_power_of_2(sdata->s_packet_len)) {
  udf_err(sb, "error loading logical volume descriptor: "
   "Invalid packet length %u\n",
   (unsigned)sdata->s_packet_len);
  return -EIO;
 }
 if (spm->numSparingTables > 4) {
  udf_err(sb, "error loading logical volume descriptor: "
   "Too many sparing tables (%d)\n",
   (int)spm->numSparingTables);
  return -EIO;
 }

 for (i = 0; i < spm->numSparingTables; i++) {
  loc = le32_to_cpu(spm->locSparingTable[i]);
  bh = udf_read_tagged(sb, loc, loc, &ident);
  if (!bh)
   continue;

  st = (struct sparingTable *)bh->b_data;
  if (ident != 0 ||
      strncmp(st->sparingIdent.ident, UDF_ID_SPARING,
       strlen(UDF_ID_SPARING)) ||
      sizeof(*st) + le16_to_cpu(st->reallocationTableLen) >
       sb->s_blocksize) {
   brelse(bh);
   continue;
  }

  sdata->s_spar_map[i] = bh;
 }
 map->s_partition_func = udf_get_pblock_spar15;
 return 0;
}
