
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct icc_node {int num_links; struct icc_node** links; int provider; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct icc_node*) ;
 int PTR_ERR (struct icc_node*) ;
 int icc_lock ;
 struct icc_node* icc_node_create_nolock (int const) ;
 struct icc_node** krealloc (struct icc_node**,int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct icc_node* node_find (int const) ;

int icc_link_create(struct icc_node *node, const int dst_id)
{
 struct icc_node *dst;
 struct icc_node **new;
 int ret = 0;

 if (!node->provider)
  return -EINVAL;

 mutex_lock(&icc_lock);

 dst = node_find(dst_id);
 if (!dst) {
  dst = icc_node_create_nolock(dst_id);

  if (IS_ERR(dst)) {
   ret = PTR_ERR(dst);
   goto out;
  }
 }

 new = krealloc(node->links,
         (node->num_links + 1) * sizeof(*node->links),
         GFP_KERNEL);
 if (!new) {
  ret = -ENOMEM;
  goto out;
 }

 node->links = new;
 node->links[node->num_links++] = dst;

out:
 mutex_unlock(&icc_lock);

 return ret;
}
