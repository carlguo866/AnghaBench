
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FDT_ERR_BADPATH ;
 int fdt_add_subnode (void*,int,char*) ;
 int fdt_path_offset (void*,char const*) ;
 int report_error (char const*,int,int) ;
 char* strrchr (char const*,char) ;

__attribute__((used)) static int create_node(void *blob, const char *node_name)
{
 int node = 0;
 char *p;

 p = strrchr(node_name, '/');
 if (!p) {
  report_error(node_name, -1, -FDT_ERR_BADPATH);
  return -1;
 }
 *p = '\0';

 if (p > node_name) {
  node = fdt_path_offset(blob, node_name);
  if (node < 0) {
   report_error(node_name, -1, node);
   return -1;
  }
 }

 node = fdt_add_subnode(blob, node, p + 1);
 if (node < 0) {
  report_error(p + 1, -1, node);
  return -1;
 }

 return 0;
}
