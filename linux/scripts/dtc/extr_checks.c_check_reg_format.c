
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int len; } ;
struct property {TYPE_1__ val; } ;
struct node {int parent; } ;
struct dt_info {int dummy; } ;
struct check {int dummy; } ;
typedef int cell_t ;


 int FAIL (struct check*,struct dt_info*,struct node*,char*) ;
 int FAIL_PROP (struct check*,struct dt_info*,struct node*,struct property*,char*,...) ;
 struct property* get_property (struct node*,char*) ;
 int node_addr_cells (int ) ;
 int node_size_cells (int ) ;

__attribute__((used)) static void check_reg_format(struct check *c, struct dt_info *dti,
        struct node *node)
{
 struct property *prop;
 int addr_cells, size_cells, entrylen;

 prop = get_property(node, "reg");
 if (!prop)
  return;

 if (!node->parent) {
  FAIL(c, dti, node, "Root node has a \"reg\" property");
  return;
 }

 if (prop->val.len == 0)
  FAIL_PROP(c, dti, node, prop, "property is empty");

 addr_cells = node_addr_cells(node->parent);
 size_cells = node_size_cells(node->parent);
 entrylen = (addr_cells + size_cells) * sizeof(cell_t);

 if (!entrylen || (prop->val.len % entrylen) != 0)
  FAIL_PROP(c, dti, node, prop, "property has invalid length (%d bytes) "
     "(#address-cells == %d, #size-cells == %d)",
     prop->val.len, addr_cells, size_cells);
}
