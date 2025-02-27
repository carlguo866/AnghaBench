
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct bnx2x_link_report_data {int link_report_flags; int line_speed; } ;
struct TYPE_2__ {scalar_t__ duplex; int flow_ctrl; int link_up; } ;
struct bnx2x {int flags; TYPE_1__ link_vars; } ;


 int BNX2X_FLOW_CTRL_RX ;
 int BNX2X_FLOW_CTRL_TX ;
 int BNX2X_LINK_REPORT_FD ;
 int BNX2X_LINK_REPORT_LINK_DOWN ;
 int BNX2X_LINK_REPORT_RX_FC_ON ;
 int BNX2X_LINK_REPORT_TX_FC_ON ;
 scalar_t__ DUPLEX_FULL ;
 int MF_FUNC_DIS ;
 int __set_bit (int ,int *) ;
 int bnx2x_get_mf_speed (struct bnx2x*) ;
 int memset (struct bnx2x_link_report_data*,int ,int) ;

__attribute__((used)) static void bnx2x_fill_report_data(struct bnx2x *bp,
       struct bnx2x_link_report_data *data)
{
 u16 line_speed = bnx2x_get_mf_speed(bp);

 memset(data, 0, sizeof(*data));


 data->line_speed = line_speed;


 if (!bp->link_vars.link_up || (bp->flags & MF_FUNC_DIS))
  __set_bit(BNX2X_LINK_REPORT_LINK_DOWN,
     &data->link_report_flags);


 if (bp->link_vars.duplex == DUPLEX_FULL)
  __set_bit(BNX2X_LINK_REPORT_FD, &data->link_report_flags);


 if (bp->link_vars.flow_ctrl & BNX2X_FLOW_CTRL_RX)
  __set_bit(BNX2X_LINK_REPORT_RX_FC_ON, &data->link_report_flags);


 if (bp->link_vars.flow_ctrl & BNX2X_FLOW_CTRL_TX)
  __set_bit(BNX2X_LINK_REPORT_TX_FC_ON, &data->link_report_flags);
}
