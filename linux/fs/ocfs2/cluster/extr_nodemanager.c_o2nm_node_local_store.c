
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct o2nm_node {scalar_t__ nd_num; unsigned long nd_local; int nd_set_attributes; } ;
struct o2nm_cluster {unsigned long cl_has_local; scalar_t__ cl_local_node; } ;
struct config_item {int dummy; } ;
typedef size_t ssize_t ;


 size_t EBUSY ;
 size_t EINVAL ;
 scalar_t__ O2NM_INVALID_NODE_NUM ;
 int O2NM_NODE_ATTR_ADDRESS ;
 int O2NM_NODE_ATTR_NUM ;
 int O2NM_NODE_ATTR_PORT ;
 size_t o2net_start_listening (struct o2nm_node*) ;
 int o2net_stop_listening (struct o2nm_node*) ;
 int o2nm_lock_subsystem () ;
 int o2nm_unlock_subsystem () ;
 unsigned long simple_strtoul (char*,char**,int ) ;
 int test_bit (int ,int *) ;
 struct o2nm_cluster* to_o2nm_cluster_from_node (struct o2nm_node*) ;
 struct o2nm_node* to_o2nm_node (struct config_item*) ;

__attribute__((used)) static ssize_t o2nm_node_local_store(struct config_item *item, const char *page,
         size_t count)
{
 struct o2nm_node *node = to_o2nm_node(item);
 struct o2nm_cluster *cluster;
 unsigned long tmp;
 char *p = (char *)page;
 ssize_t ret;

 tmp = simple_strtoul(p, &p, 0);
 if (!p || (*p && (*p != '\n')))
  return -EINVAL;

 tmp = !!tmp;



 if (!test_bit(O2NM_NODE_ATTR_ADDRESS, &node->nd_set_attributes) ||
     !test_bit(O2NM_NODE_ATTR_NUM, &node->nd_set_attributes) ||
     !test_bit(O2NM_NODE_ATTR_PORT, &node->nd_set_attributes))
  return -EINVAL;

 o2nm_lock_subsystem();
 cluster = to_o2nm_cluster_from_node(node);
 if (!cluster) {
  ret = -EINVAL;
  goto out;
 }



 if (tmp && tmp == cluster->cl_has_local &&
     cluster->cl_local_node != node->nd_num) {
  ret = -EBUSY;
  goto out;
 }


 if (tmp && !cluster->cl_has_local) {
  ret = o2net_start_listening(node);
  if (ret)
   goto out;
 }

 if (!tmp && cluster->cl_has_local &&
     cluster->cl_local_node == node->nd_num) {
  o2net_stop_listening(node);
  cluster->cl_local_node = O2NM_INVALID_NODE_NUM;
 }

 node->nd_local = tmp;
 if (node->nd_local) {
  cluster->cl_has_local = tmp;
  cluster->cl_local_node = node->nd_num;
 }

 ret = count;

out:
 o2nm_unlock_subsystem();
 return ret;
}
