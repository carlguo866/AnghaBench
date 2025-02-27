
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct node {scalar_t__ phandle; int fullpath; } ;
struct dt_info {struct node* dt; } ;
struct check {int dummy; } ;
typedef scalar_t__ cell_t ;


 int FAIL (struct check*,struct dt_info*,struct node*,char*,...) ;
 int assert (int) ;
 scalar_t__ check_phandle_prop (struct check*,struct dt_info*,struct node*,char*) ;
 struct node* get_node_by_phandle (struct node*,scalar_t__) ;

__attribute__((used)) static void check_explicit_phandles(struct check *c, struct dt_info *dti,
        struct node *node)
{
 struct node *root = dti->dt;
 struct node *other;
 cell_t phandle, linux_phandle;


 assert(!node->phandle);

 phandle = check_phandle_prop(c, dti, node, "phandle");

 linux_phandle = check_phandle_prop(c, dti, node, "linux,phandle");

 if (!phandle && !linux_phandle)

  return;

 if (linux_phandle && phandle && (phandle != linux_phandle))
  FAIL(c, dti, node, "mismatching 'phandle' and 'linux,phandle'"
       " properties");

 if (linux_phandle && !phandle)
  phandle = linux_phandle;

 other = get_node_by_phandle(root, phandle);
 if (other && (other != node)) {
  FAIL(c, dti, node, "duplicated phandle 0x%x (seen before at %s)",
       phandle, other->fullpath);
  return;
 }

 node->phandle = phandle;
}
