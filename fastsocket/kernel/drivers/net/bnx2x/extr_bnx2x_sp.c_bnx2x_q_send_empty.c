
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x_queue_state_params {struct bnx2x_queue_sp_obj* q_obj; } ;
struct bnx2x_queue_sp_obj {int * cids; } ;
struct bnx2x {int dummy; } ;


 size_t BNX2X_PRIMARY_CID_INDEX ;
 int ETH_CONNECTION_TYPE ;
 int RAMROD_CMD_ID_ETH_EMPTY ;
 int bnx2x_sp_post (struct bnx2x*,int ,int ,int ,int ,int ) ;

__attribute__((used)) static inline int bnx2x_q_send_empty(struct bnx2x *bp,
         struct bnx2x_queue_state_params *params)
{
 struct bnx2x_queue_sp_obj *o = params->q_obj;

 return bnx2x_sp_post(bp, RAMROD_CMD_ID_ETH_EMPTY,
        o->cids[BNX2X_PRIMARY_CID_INDEX], 0, 0,
        ETH_CONNECTION_TYPE);
}
