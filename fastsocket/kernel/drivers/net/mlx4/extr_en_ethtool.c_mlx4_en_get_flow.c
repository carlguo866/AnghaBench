
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mlx4_en_priv {struct ethtool_flow_id* ethtool_rules; } ;
struct ethtool_rxnfc {int fs; } ;
struct ethtool_rx_flow_spec {int dummy; } ;
struct ethtool_flow_id {int flow_spec; scalar_t__ id; } ;


 int EINVAL ;
 int ENOENT ;
 int MAX_NUM_OF_FS_RULES ;
 int memcpy (int *,int *,int) ;
 struct mlx4_en_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int mlx4_en_get_flow(struct net_device *dev, struct ethtool_rxnfc *cmd,
       int loc)
{
 int err = 0;
 struct ethtool_flow_id *rule;
 struct mlx4_en_priv *priv = netdev_priv(dev);

 if (loc < 0 || loc >= MAX_NUM_OF_FS_RULES)
  return -EINVAL;

 rule = &priv->ethtool_rules[loc];
 if (rule->id)
  memcpy(&cmd->fs, &rule->flow_spec,
         sizeof(struct ethtool_rx_flow_spec));
 else
  err = -ENOENT;

 return err;
}
