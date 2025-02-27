
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int loopdetect_addr; } ;
struct batadv_priv {TYPE_1__ bla; } ;
struct batadv_bla_backbone_gw {int vid; } ;


 int BATADV_CLAIM_TYPE_LOOPDETECT ;
 int BATADV_DBG_BLA ;
 int batadv_bla_send_claim (struct batadv_priv*,int ,int ,int ) ;
 int batadv_dbg (int ,struct batadv_priv*,char*,int ) ;

__attribute__((used)) static void
batadv_bla_send_loopdetect(struct batadv_priv *bat_priv,
      struct batadv_bla_backbone_gw *backbone_gw)
{
 batadv_dbg(BATADV_DBG_BLA, bat_priv, "Send loopdetect frame for vid %d\n",
     backbone_gw->vid);
 batadv_bla_send_claim(bat_priv, bat_priv->bla.loopdetect_addr,
         backbone_gw->vid, BATADV_CLAIM_TYPE_LOOPDETECT);
}
