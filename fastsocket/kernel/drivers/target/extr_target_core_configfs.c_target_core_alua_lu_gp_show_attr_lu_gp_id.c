
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t10_alua_lu_gp {int lu_gp_id; int lu_gp_valid_id; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int ) ;

__attribute__((used)) static ssize_t target_core_alua_lu_gp_show_attr_lu_gp_id(
 struct t10_alua_lu_gp *lu_gp,
 char *page)
{
 if (!lu_gp->lu_gp_valid_id)
  return 0;

 return sprintf(page, "%hu\n", lu_gp->lu_gp_id);
}
