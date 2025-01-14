
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16_t ;
struct bt_mesh_msg_ctx {int addr; } ;


 scalar_t__ CID_NVAL ;
 int EINVAL ;
 int OP_MOD_SUB_GET_VND ;
 int mod_sub_get (int ,struct bt_mesh_msg_ctx*,scalar_t__,scalar_t__,scalar_t__) ;

int bt_mesh_cfg_mod_sub_get_vnd(struct bt_mesh_msg_ctx *ctx, u16_t elem_addr,
                                u16_t mod_id, u16_t cid)
{
    if (!ctx || !ctx->addr || cid == CID_NVAL) {
        return -EINVAL;
    }
    return mod_sub_get(OP_MOD_SUB_GET_VND, ctx, elem_addr, mod_id, cid);
}
