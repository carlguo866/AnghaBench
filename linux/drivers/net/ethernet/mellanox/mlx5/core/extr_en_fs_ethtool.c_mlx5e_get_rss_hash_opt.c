
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int* rx_hash_fields; } ;
struct mlx5e_priv {TYPE_1__ rss_params; } ;
struct ethtool_rxnfc {int data; int flow_type; } ;
typedef enum mlx5e_traffic_types { ____Placeholder_mlx5e_traffic_types } mlx5e_traffic_types ;


 int EINVAL ;
 int MLX5E_NUM_INDIR_TIRS ;
 int MLX5_HASH_FIELD_SEL_DST_IP ;
 int MLX5_HASH_FIELD_SEL_L4_DPORT ;
 int MLX5_HASH_FIELD_SEL_L4_SPORT ;
 int MLX5_HASH_FIELD_SEL_SRC_IP ;
 int RXH_IP_DST ;
 int RXH_IP_SRC ;
 int RXH_L4_B_0_1 ;
 int RXH_L4_B_2_3 ;
 int flow_type_to_traffic_type (int ) ;

__attribute__((used)) static int mlx5e_get_rss_hash_opt(struct mlx5e_priv *priv,
      struct ethtool_rxnfc *nfc)
{
 enum mlx5e_traffic_types tt;
 u32 hash_field = 0;

 tt = flow_type_to_traffic_type(nfc->flow_type);
 if (tt == MLX5E_NUM_INDIR_TIRS)
  return -EINVAL;

 hash_field = priv->rss_params.rx_hash_fields[tt];
 nfc->data = 0;

 if (hash_field & MLX5_HASH_FIELD_SEL_SRC_IP)
  nfc->data |= RXH_IP_SRC;
 if (hash_field & MLX5_HASH_FIELD_SEL_DST_IP)
  nfc->data |= RXH_IP_DST;
 if (hash_field & MLX5_HASH_FIELD_SEL_L4_SPORT)
  nfc->data |= RXH_L4_B_0_1;
 if (hash_field & MLX5_HASH_FIELD_SEL_L4_DPORT)
  nfc->data |= RXH_L4_B_2_3;

 return 0;
}
