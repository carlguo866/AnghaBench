
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_priv {int dummy; } ;
struct mlx5e_ethtool_rule {int dummy; } ;


 int ENOENT ;
 int ENOSPC ;
 int MAX_NUM_OF_ETHTOOL_RULES ;
 int del_ethtool_rule (struct mlx5e_priv*,struct mlx5e_ethtool_rule*) ;
 struct mlx5e_ethtool_rule* find_ethtool_rule (struct mlx5e_priv*,int) ;

__attribute__((used)) static int
mlx5e_ethtool_flow_remove(struct mlx5e_priv *priv, int location)
{
 struct mlx5e_ethtool_rule *eth_rule;
 int err = 0;

 if (location >= MAX_NUM_OF_ETHTOOL_RULES)
  return -ENOSPC;

 eth_rule = find_ethtool_rule(priv, location);
 if (!eth_rule) {
  err = -ENOENT;
  goto out;
 }

 del_ethtool_rule(priv, eth_rule);
out:
 return err;
}
