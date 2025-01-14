
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ state; } ;
struct TYPE_3__ {scalar_t__ state; } ;
struct lcs_card {scalar_t__ state; TYPE_2__ write; TYPE_1__ read; } ;


 scalar_t__ DEV_STATE_DOWN ;
 scalar_t__ DEV_STATE_UP ;
 scalar_t__ LCS_CH_STATE_ERROR ;
 scalar_t__ LCS_CH_STATE_STOPPED ;
 int LCS_DBF_TEXT (int,int ,char*) ;
 int LCS_INITIATOR_TCPIP ;
 int lcs_clear_multicast_list (struct lcs_card*) ;
 int lcs_send_shutdown (struct lcs_card*) ;
 int lcs_send_stoplan (struct lcs_card*,int ) ;
 int lcs_stop_channels (struct lcs_card*) ;
 int setup ;

__attribute__((used)) static int
lcs_stopcard(struct lcs_card *card)
{
 int rc;

 LCS_DBF_TEXT(3, setup, "stopcard");

 if (card->read.state != LCS_CH_STATE_STOPPED &&
     card->write.state != LCS_CH_STATE_STOPPED &&
     card->read.state != LCS_CH_STATE_ERROR &&
     card->write.state != LCS_CH_STATE_ERROR &&
     card->state == DEV_STATE_UP) {
  lcs_clear_multicast_list(card);
  rc = lcs_send_stoplan(card,LCS_INITIATOR_TCPIP);
  rc = lcs_send_shutdown(card);
 }
 rc = lcs_stop_channels(card);
 card->state = DEV_STATE_DOWN;

 return rc;
}
