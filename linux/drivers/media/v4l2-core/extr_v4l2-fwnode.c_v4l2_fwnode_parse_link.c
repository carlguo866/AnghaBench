
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_fwnode_link {struct fwnode_handle* remote_node; int remote_port; struct fwnode_handle* local_node; int local_port; } ;
struct fwnode_handle {int dummy; } ;


 int ENOLINK ;
 struct fwnode_handle* fwnode_get_next_parent (struct fwnode_handle*) ;
 struct fwnode_handle* fwnode_get_parent (struct fwnode_handle*) ;
 struct fwnode_handle* fwnode_graph_get_remote_endpoint (struct fwnode_handle*) ;
 int fwnode_handle_put (struct fwnode_handle*) ;
 int fwnode_property_read_u32 (struct fwnode_handle*,char const*,int *) ;
 scalar_t__ is_of_node (struct fwnode_handle*) ;
 int memset (struct v4l2_fwnode_link*,int ,int) ;
 scalar_t__ of_node_name_eq (int ,char*) ;
 int to_of_node (struct fwnode_handle*) ;

int v4l2_fwnode_parse_link(struct fwnode_handle *__fwnode,
      struct v4l2_fwnode_link *link)
{
 const char *port_prop = is_of_node(__fwnode) ? "reg" : "port";
 struct fwnode_handle *fwnode;

 memset(link, 0, sizeof(*link));

 fwnode = fwnode_get_parent(__fwnode);
 fwnode_property_read_u32(fwnode, port_prop, &link->local_port);
 fwnode = fwnode_get_next_parent(fwnode);
 if (is_of_node(fwnode) && of_node_name_eq(to_of_node(fwnode), "ports"))
  fwnode = fwnode_get_next_parent(fwnode);
 link->local_node = fwnode;

 fwnode = fwnode_graph_get_remote_endpoint(__fwnode);
 if (!fwnode) {
  fwnode_handle_put(fwnode);
  return -ENOLINK;
 }

 fwnode = fwnode_get_parent(fwnode);
 fwnode_property_read_u32(fwnode, port_prop, &link->remote_port);
 fwnode = fwnode_get_next_parent(fwnode);
 if (is_of_node(fwnode) && of_node_name_eq(to_of_node(fwnode), "ports"))
  fwnode = fwnode_get_next_parent(fwnode);
 link->remote_node = fwnode;

 return 0;
}
