
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_4__ {TYPE_1__* part; } ;
struct g_part_vtoc8_table {TYPE_2__ vtoc; } ;
struct g_part_table {int dummy; } ;
struct g_part_entry {int gpe_index; } ;
struct TYPE_3__ {int tag; } ;


 int G_PART_ALIAS_FREEBSD_NANDFS ;
 int G_PART_ALIAS_FREEBSD_SWAP ;
 int G_PART_ALIAS_FREEBSD_UFS ;
 int G_PART_ALIAS_FREEBSD_VINUM ;
 int G_PART_ALIAS_FREEBSD_ZFS ;
 scalar_t__ VTOC_TAG_FREEBSD_NANDFS ;
 scalar_t__ VTOC_TAG_FREEBSD_SWAP ;
 scalar_t__ VTOC_TAG_FREEBSD_UFS ;
 scalar_t__ VTOC_TAG_FREEBSD_VINUM ;
 scalar_t__ VTOC_TAG_FREEBSD_ZFS ;
 scalar_t__ be16dec (int *) ;
 char const* g_part_alias_name (int ) ;
 int snprintf (char*,size_t,char*,scalar_t__) ;

__attribute__((used)) static const char *
g_part_vtoc8_type(struct g_part_table *basetable, struct g_part_entry *entry,
    char *buf, size_t bufsz)
{
 struct g_part_vtoc8_table *table;
 uint16_t tag;

 table = (struct g_part_vtoc8_table *)basetable;
 tag = be16dec(&table->vtoc.part[entry->gpe_index - 1].tag);
 if (tag == VTOC_TAG_FREEBSD_NANDFS)
  return (g_part_alias_name(G_PART_ALIAS_FREEBSD_NANDFS));
 if (tag == VTOC_TAG_FREEBSD_SWAP)
  return (g_part_alias_name(G_PART_ALIAS_FREEBSD_SWAP));
 if (tag == VTOC_TAG_FREEBSD_UFS)
  return (g_part_alias_name(G_PART_ALIAS_FREEBSD_UFS));
 if (tag == VTOC_TAG_FREEBSD_VINUM)
  return (g_part_alias_name(G_PART_ALIAS_FREEBSD_VINUM));
 if (tag == VTOC_TAG_FREEBSD_ZFS)
  return (g_part_alias_name(G_PART_ALIAS_FREEBSD_ZFS));
 snprintf(buf, bufsz, "!%d", tag);
 return (buf);
}
