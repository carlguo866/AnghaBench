
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct adfs_sb_info {unsigned int s_idlen; unsigned int s_map_size; struct adfs_discmap* s_map; } ;
struct adfs_discmap {scalar_t__ dm_startblk; scalar_t__ dm_startbit; } ;


 int lookup_zone (struct adfs_discmap*,unsigned int const,int const,unsigned int*) ;

__attribute__((used)) static int scan_map(struct adfs_sb_info *asb, unsigned int zone,
      const u32 frag_id, unsigned int mapoff)
{
 const unsigned int idlen = asb->s_idlen;
 struct adfs_discmap *dm, *dm_end;
 int result;

 dm = asb->s_map + zone;
 zone = asb->s_map_size;
 dm_end = asb->s_map + zone;

 do {
  result = lookup_zone(dm, idlen, frag_id, &mapoff);

  if (result != -1)
   goto found;

  dm ++;
  if (dm == dm_end)
   dm = asb->s_map;
 } while (--zone > 0);

 return -1;
found:
 result -= dm->dm_startbit;
 result += dm->dm_startblk;

 return result;
}
