
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct rvu {int dummy; } ;
struct npc_kpu_profile_cam {int state; int state_mask; int dp0; int dp0_mask; int dp1; int dp1_mask; int dp2; int dp2_mask; } ;
struct npc_kpu_cam {int state; int dp0_data; int dp1_data; int dp2_data; int member_0; } ;


 int NPC_AF_KPUX_ENTRYX_CAMX (int,int,int) ;
 int rvu_write64 (struct rvu*,int,int ,int ) ;

__attribute__((used)) static void npc_config_kpucam(struct rvu *rvu, int blkaddr,
         struct npc_kpu_profile_cam *kpucam,
         int kpu, int entry)
{
 struct npc_kpu_cam cam0 = {0};
 struct npc_kpu_cam cam1 = {0};

 cam1.state = kpucam->state & kpucam->state_mask;
 cam1.dp0_data = kpucam->dp0 & kpucam->dp0_mask;
 cam1.dp1_data = kpucam->dp1 & kpucam->dp1_mask;
 cam1.dp2_data = kpucam->dp2 & kpucam->dp2_mask;

 cam0.state = ~kpucam->state & kpucam->state_mask;
 cam0.dp0_data = ~kpucam->dp0 & kpucam->dp0_mask;
 cam0.dp1_data = ~kpucam->dp1 & kpucam->dp1_mask;
 cam0.dp2_data = ~kpucam->dp2 & kpucam->dp2_mask;

 rvu_write64(rvu, blkaddr,
      NPC_AF_KPUX_ENTRYX_CAMX(kpu, entry, 0), *(u64 *)&cam0);
 rvu_write64(rvu, blkaddr,
      NPC_AF_KPUX_ENTRYX_CAMX(kpu, entry, 1), *(u64 *)&cam1);
}
