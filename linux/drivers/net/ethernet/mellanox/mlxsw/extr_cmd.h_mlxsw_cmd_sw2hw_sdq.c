
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlxsw_core {int dummy; } ;


 int MLXSW_CMD_OPCODE_MOD_SDQ ;
 int __mlxsw_cmd_sw2hw_dq (struct mlxsw_core*,char*,int ,int ) ;

__attribute__((used)) static inline int mlxsw_cmd_sw2hw_sdq(struct mlxsw_core *mlxsw_core,
          char *in_mbox, u32 dq_number)
{
 return __mlxsw_cmd_sw2hw_dq(mlxsw_core, in_mbox, dq_number,
        MLXSW_CMD_OPCODE_MOD_SDQ);
}
