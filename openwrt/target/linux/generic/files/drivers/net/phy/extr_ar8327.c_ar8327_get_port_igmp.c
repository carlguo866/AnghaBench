
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ar8xxx_priv {int dummy; } ;


 int AR8327_FRAME_ACK_CTRL_IGMP_JOIN ;
 int AR8327_FRAME_ACK_CTRL_IGMP_LEAVE ;
 int AR8327_FRAME_ACK_CTRL_IGMP_MLD ;
 int AR8327_FRAME_ACK_CTRL_S (int) ;
 int AR8327_FWD_CTRL1_IGMP_S ;
 int AR8327_REG_FRAME_ACK_CTRL (int) ;
 int AR8327_REG_FWD_CTRL1 ;
 int BIT (int) ;
 int ar8xxx_read (struct ar8xxx_priv*,int ) ;

__attribute__((used)) static int
ar8327_get_port_igmp(struct ar8xxx_priv *priv, int port)
{
 u32 fwd_ctrl, frame_ack;

 fwd_ctrl = (BIT(port) << AR8327_FWD_CTRL1_IGMP_S);
 frame_ack = ((AR8327_FRAME_ACK_CTRL_IGMP_MLD |
        AR8327_FRAME_ACK_CTRL_IGMP_JOIN |
        AR8327_FRAME_ACK_CTRL_IGMP_LEAVE) <<
       AR8327_FRAME_ACK_CTRL_S(port));

 return (ar8xxx_read(priv, AR8327_REG_FWD_CTRL1) &
   fwd_ctrl) == fwd_ctrl &&
  (ar8xxx_read(priv, AR8327_REG_FRAME_ACK_CTRL(port)) &
   frame_ack) == frame_ack;
}
