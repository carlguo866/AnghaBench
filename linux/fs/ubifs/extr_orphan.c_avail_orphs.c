
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {int orph_lebs; int ohead_lnum; int orph_first; int leb_size; int ohead_offs; } ;
typedef int __le64 ;


 int UBIFS_ORPH_NODE_SZ ;

__attribute__((used)) static int avail_orphs(struct ubifs_info *c)
{
 int avail_lebs, avail, gap;

 avail_lebs = c->orph_lebs - (c->ohead_lnum - c->orph_first) - 1;
 avail = avail_lebs *
        ((c->leb_size - UBIFS_ORPH_NODE_SZ) / sizeof(__le64));
 gap = c->leb_size - c->ohead_offs;
 if (gap >= UBIFS_ORPH_NODE_SZ + sizeof(__le64))
  avail += (gap - UBIFS_ORPH_NODE_SZ) / sizeof(__le64);
 return avail;
}
