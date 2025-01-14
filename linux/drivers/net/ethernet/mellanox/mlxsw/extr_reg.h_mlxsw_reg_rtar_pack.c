
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef enum mlxsw_reg_rtar_op { ____Placeholder_mlxsw_reg_rtar_op } mlxsw_reg_rtar_op ;
typedef enum mlxsw_reg_rtar_key_type { ____Placeholder_mlxsw_reg_rtar_key_type } mlxsw_reg_rtar_key_type ;


 int MLXSW_REG_ZERO (int ,char*) ;
 int mlxsw_reg_rtar_key_type_set (char*,int) ;
 int mlxsw_reg_rtar_op_set (char*,int) ;
 int mlxsw_reg_rtar_region_size_set (char*,int ) ;
 int rtar ;

__attribute__((used)) static inline void mlxsw_reg_rtar_pack(char *payload,
           enum mlxsw_reg_rtar_op op,
           enum mlxsw_reg_rtar_key_type key_type,
           u16 region_size)
{
 MLXSW_REG_ZERO(rtar, payload);
 mlxsw_reg_rtar_op_set(payload, op);
 mlxsw_reg_rtar_key_type_set(payload, key_type);
 mlxsw_reg_rtar_region_size_set(payload, region_size);
}
