
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct uverbs_attr_bundle {int dummy; } ;
struct mlx5_ib_flow_matcher {int ns_type; } ;
typedef enum mlx5_ib_uapi_flow_table_type { ____Placeholder_mlx5_ib_uapi_flow_table_type } mlx5_ib_uapi_flow_table_type ;


 int EINVAL ;
 int IB_FLOW_ATTR_FLAGS_EGRESS ;
 int MLX5_FLOW_NAMESPACE_BYPASS ;
 int MLX5_IB_ATTR_FLOW_MATCHER_FLOW_FLAGS ;
 int MLX5_IB_ATTR_FLOW_MATCHER_FT_TYPE ;
 int MLX5_IB_UAPI_FLOW_TABLE_TYPE_NIC_RX ;
 int MLX5_IB_UAPI_FLOW_TABLE_TYPE_NIC_TX ;
 int mlx5_ib_ft_type_to_namespace (int,int *) ;
 scalar_t__ uverbs_attr_is_valid (struct uverbs_attr_bundle*,int ) ;
 int uverbs_get_const (int*,struct uverbs_attr_bundle*,int ) ;
 int uverbs_get_flags32 (scalar_t__*,struct uverbs_attr_bundle*,int ,int ) ;

__attribute__((used)) static int mlx5_ib_matcher_ns(struct uverbs_attr_bundle *attrs,
         struct mlx5_ib_flow_matcher *obj)
{
 enum mlx5_ib_uapi_flow_table_type ft_type =
  MLX5_IB_UAPI_FLOW_TABLE_TYPE_NIC_RX;
 u32 flags;
 int err;




 if (uverbs_attr_is_valid(attrs, MLX5_IB_ATTR_FLOW_MATCHER_FT_TYPE) &&
     uverbs_attr_is_valid(attrs, MLX5_IB_ATTR_FLOW_MATCHER_FLOW_FLAGS))
  return -EINVAL;

 if (uverbs_attr_is_valid(attrs, MLX5_IB_ATTR_FLOW_MATCHER_FT_TYPE)) {
  err = uverbs_get_const(&ft_type, attrs,
           MLX5_IB_ATTR_FLOW_MATCHER_FT_TYPE);
  if (err)
   return err;

  err = mlx5_ib_ft_type_to_namespace(ft_type, &obj->ns_type);
  if (err)
   return err;

  return 0;
 }

 if (uverbs_attr_is_valid(attrs, MLX5_IB_ATTR_FLOW_MATCHER_FLOW_FLAGS)) {
  err = uverbs_get_flags32(&flags, attrs,
      MLX5_IB_ATTR_FLOW_MATCHER_FLOW_FLAGS,
      IB_FLOW_ATTR_FLAGS_EGRESS);
  if (err)
   return err;

  if (flags) {
   mlx5_ib_ft_type_to_namespace(
    MLX5_IB_UAPI_FLOW_TABLE_TYPE_NIC_TX,
    &obj->ns_type);
   return 0;
  }
 }

 obj->ns_type = MLX5_FLOW_NAMESPACE_BYPASS;

 return 0;
}
