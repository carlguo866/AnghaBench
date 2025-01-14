
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct j1939_sk_buff_cb {int dummy; } ;
struct j1939_priv {int dummy; } ;
typedef int pgn_t ;
typedef enum j1939_xtp_abort { ____Placeholder_j1939_xtp_abort } j1939_xtp_abort ;
typedef int dat ;


 int J1939_TP_CMD_ABORT ;
 int j1939_tp_im_involved (struct j1939_sk_buff_cb const*,int) ;
 int j1939_xtp_do_tx_ctl (struct j1939_priv*,struct j1939_sk_buff_cb const*,int,int ,int*) ;
 int memset (int*,int,int) ;

__attribute__((used)) static int j1939_xtp_tx_abort(struct j1939_priv *priv,
         const struct j1939_sk_buff_cb *re_skcb,
         bool swap_src_dst,
         enum j1939_xtp_abort err,
         pgn_t pgn)
{
 u8 dat[5];

 if (!j1939_tp_im_involved(re_skcb, swap_src_dst))
  return 0;

 memset(dat, 0xff, sizeof(dat));
 dat[0] = J1939_TP_CMD_ABORT;
 dat[1] = err;
 return j1939_xtp_do_tx_ctl(priv, re_skcb, swap_src_dst, pgn, dat);
}
