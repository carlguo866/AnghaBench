
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_inode {int dummy; } ;
struct gfs2_ea_location {struct gfs2_ea_header* el_prev; struct gfs2_ea_header* el_ea; struct buffer_head* el_bh; } ;
struct gfs2_ea_header {scalar_t__ ea_type; scalar_t__ ea_name_len; } ;
struct ea_find {scalar_t__ type; scalar_t__ namel; struct gfs2_ea_location* ef_el; int name; } ;
struct buffer_head {int dummy; } ;


 int GFS2_EA2NAME (struct gfs2_ea_header*) ;
 scalar_t__ GFS2_EATYPE_UNUSED ;
 int get_bh (struct buffer_head*) ;
 int memcmp (int ,int ,scalar_t__) ;

__attribute__((used)) static int ea_find_i(struct gfs2_inode *ip, struct buffer_head *bh,
       struct gfs2_ea_header *ea, struct gfs2_ea_header *prev,
       void *private)
{
 struct ea_find *ef = private;

 if (ea->ea_type == GFS2_EATYPE_UNUSED)
  return 0;

 if (ea->ea_type == ef->type) {
  if (ea->ea_name_len == ef->namel &&
      !memcmp(GFS2_EA2NAME(ea), ef->name, ea->ea_name_len)) {
   struct gfs2_ea_location *el = ef->ef_el;
   get_bh(bh);
   el->el_bh = bh;
   el->el_ea = ea;
   el->el_prev = prev;
   return 1;
  }
 }

 return 0;
}
