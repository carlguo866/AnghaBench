
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dummy; } ;
struct mlx4_en_priv {int port; struct mlx4_en_dev* mdev; } ;
struct mlx4_en_dev {int dev; } ;
struct ethtool_eeprom {int offset; int len; } ;


 int DRV ;
 int EINVAL ;
 int en_dbg (int ,struct mlx4_en_priv*,char*,int,int,int) ;
 int en_err (struct mlx4_en_priv*,char*,int,int,int,int) ;
 int memset (int *,int ,int) ;
 int mlx4_get_module_info (int ,int ,int,int,int *) ;
 struct mlx4_en_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int mlx4_en_get_module_eeprom(struct net_device *dev,
         struct ethtool_eeprom *ee,
         u8 *data)
{
 struct mlx4_en_priv *priv = netdev_priv(dev);
 struct mlx4_en_dev *mdev = priv->mdev;
 int offset = ee->offset;
 int i = 0, ret;

 if (ee->len == 0)
  return -EINVAL;

 memset(data, 0, ee->len);

 while (i < ee->len) {
  en_dbg(DRV, priv,
         "mlx4_get_module_info i(%d) offset(%d) len(%d)\n",
         i, offset, ee->len - i);

  ret = mlx4_get_module_info(mdev->dev, priv->port,
        offset, ee->len - i, data + i);

  if (!ret)
   return 0;

  if (ret < 0) {
   en_err(priv,
          "mlx4_get_module_info i(%d) offset(%d) bytes_to_read(%d) - FAILED (0x%x)\n",
          i, offset, ee->len - i, ret);
   return 0;
  }

  i += ret;
  offset += ret;
 }
 return 0;
}
