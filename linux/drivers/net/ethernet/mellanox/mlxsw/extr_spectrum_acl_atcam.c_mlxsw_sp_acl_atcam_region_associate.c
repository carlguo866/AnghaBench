
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u16 ;
struct mlxsw_sp {int core; } ;


 int ACL_MAX_REGIONS ;
 int ENOBUFS ;
 int MLXSW_CORE_RES_GET (int ,int ) ;
 int MLXSW_REG (int ) ;
 int MLXSW_REG_PERAR_LEN ;
 int mlxsw_reg_perar_pack (char*,int,int) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int perar ;

int mlxsw_sp_acl_atcam_region_associate(struct mlxsw_sp *mlxsw_sp,
     u16 region_id)
{
 char perar_pl[MLXSW_REG_PERAR_LEN];

 u16 hw_region = region_id * 3;
 u64 max_regions;

 max_regions = MLXSW_CORE_RES_GET(mlxsw_sp->core, ACL_MAX_REGIONS);
 if (hw_region >= max_regions)
  return -ENOBUFS;

 mlxsw_reg_perar_pack(perar_pl, region_id, hw_region);
 return mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(perar), perar_pl);
}
