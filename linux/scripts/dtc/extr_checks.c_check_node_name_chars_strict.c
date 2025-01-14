
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct node {int basenamelen; int * name; } ;
struct dt_info {int dummy; } ;
struct check {int data; } ;


 int FAIL (struct check*,struct dt_info*,struct node*,char*,int ) ;
 int strspn (int *,int ) ;

__attribute__((used)) static void check_node_name_chars_strict(struct check *c, struct dt_info *dti,
      struct node *node)
{
 int n = strspn(node->name, c->data);

 if (n < node->basenamelen)
  FAIL(c, dti, node, "Character '%c' not recommended in node name",
       node->name[n]);
}
