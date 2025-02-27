
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ath5k_txq_info {int tqi_type; int tqi_cw_min; int tqi_cw_max; int tqi_aifs; int tqi_cbr_period; int tqi_cbr_overflow_limit; int tqi_ready_time; int tqi_burst_time; int tqi_flags; } ;
struct TYPE_3__ {int q_tx_num; } ;
struct TYPE_4__ {TYPE_1__ cap_queues; } ;
struct ath5k_hw {scalar_t__ ah_version; scalar_t__ ah_mac_version; int ah_txq_imr_txok; int ah_txq_imr_txerr; int ah_txq_imr_txurn; int ah_txq_imr_txdesc; int ah_txq_imr_txeol; int ah_txq_imr_cbrorn; int ah_txq_imr_cbrurn; int ah_txq_imr_qtrig; int ah_txq_imr_nofrm; int ah_txq_status; struct ath5k_txq_info* ah_txq; TYPE_2__ ah_capabilities; } ;


 scalar_t__ AR5K_AR5210 ;
 int AR5K_ASSERT_ENTRY (unsigned int,int ) ;
 int AR5K_DCU_CHAN_TIME_DUR ;
 int AR5K_DCU_CHAN_TIME_ENABLE ;
 int AR5K_DCU_LCL_IFS_AIFS ;
 int AR5K_DCU_LCL_IFS_CW_MAX ;
 int AR5K_DCU_LCL_IFS_CW_MIN ;
 int AR5K_DCU_MISC_ARBLOCK_CTL_GLOBAL ;
 int AR5K_DCU_MISC_ARBLOCK_CTL_S ;
 int AR5K_DCU_MISC_ARBLOCK_IGNORE ;
 int AR5K_DCU_MISC_BACKOFF_FRAG ;
 int AR5K_DCU_MISC_BCN_ENABLE ;
 int AR5K_DCU_MISC_FRAG_WAIT ;
 int AR5K_DCU_MISC_POST_FR_BKOFF_DIS ;
 int AR5K_DCU_MISC_SEQNUM_CTL ;
 int AR5K_QCU_CBRCFG_INTVAL ;
 int AR5K_QCU_CBRCFG_ORN_THRES ;
 int AR5K_QCU_MISC_BCN_ENABLE ;
 int AR5K_QCU_MISC_CBREXP_BCN_DIS ;
 int AR5K_QCU_MISC_CBREXP_DIS ;
 int AR5K_QCU_MISC_CBR_THRES_ENABLE ;
 int AR5K_QCU_MISC_FRSHED_CBR ;
 int AR5K_QCU_MISC_FRSHED_DBA_GT ;
 int AR5K_QCU_MISC_RDY_VEOL_POLICY ;
 int AR5K_QCU_RDYTIMECFG_ENABLE ;
 int AR5K_QCU_RDYTIMECFG_INTVAL ;
 int AR5K_QUEUE_CBRCFG (unsigned int) ;
 int AR5K_QUEUE_DFS_CHANNEL_TIME (unsigned int) ;
 int AR5K_QUEUE_DFS_LOCAL_IFS (unsigned int) ;
 int AR5K_QUEUE_DFS_MISC (unsigned int) ;
 int AR5K_QUEUE_MISC (unsigned int) ;
 int AR5K_QUEUE_QCUMASK (unsigned int) ;
 int AR5K_QUEUE_RDYTIMECFG (unsigned int) ;
 int AR5K_Q_ENABLE_BITS (int,unsigned int) ;
 int AR5K_REG_DISABLE_BITS (struct ath5k_hw*,int ,int ) ;
 int AR5K_REG_ENABLE_BITS (struct ath5k_hw*,int ,int) ;
 int AR5K_REG_SM (int,int ) ;
 int AR5K_REG_WRITE_Q (struct ath5k_hw*,int ,unsigned int) ;
 int AR5K_SIMR0 ;
 int AR5K_SIMR0_QCU_TXDESC ;
 int AR5K_SIMR0_QCU_TXOK ;
 int AR5K_SIMR1 ;
 int AR5K_SIMR1_QCU_TXEOL ;
 int AR5K_SIMR1_QCU_TXERR ;
 int AR5K_SIMR2 ;
 int AR5K_SIMR2_QCU_TXURN ;
 int AR5K_SIMR3 ;
 int AR5K_SIMR3_QCBRORN ;
 int AR5K_SIMR3_QCBRURN ;
 int AR5K_SIMR4 ;
 int AR5K_SIMR4_QTRIG ;
 scalar_t__ AR5K_SREV_AR5211 ;
 int AR5K_TUNE_ADDITIONAL_SWBA_BACKOFF ;
 int AR5K_TUNE_DMA_BEACON_RESP ;
 int AR5K_TUNE_SW_BEACON_RESP ;
 int AR5K_TXNOFRM ;
 int AR5K_TXNOFRM_QCU ;
 int AR5K_TXQ_FLAG_BACKOFF_DISABLE ;
 int AR5K_TXQ_FLAG_CBRORNINT_ENABLE ;
 int AR5K_TXQ_FLAG_CBRURNINT_ENABLE ;
 int AR5K_TXQ_FLAG_FRAG_BURST_BACKOFF_ENABLE ;
 int AR5K_TXQ_FLAG_QTRIGINT_ENABLE ;
 int AR5K_TXQ_FLAG_RDYTIME_EXP_POLICY_ENABLE ;
 int AR5K_TXQ_FLAG_TXDESCINT_ENABLE ;
 int AR5K_TXQ_FLAG_TXEOLINT_ENABLE ;
 int AR5K_TXQ_FLAG_TXERRINT_ENABLE ;
 int AR5K_TXQ_FLAG_TXNOFRMINT_ENABLE ;
 int AR5K_TXQ_FLAG_TXOKINT_ENABLE ;
 int AR5K_TXQ_FLAG_TXURNINT_ENABLE ;



 int AR5K_TX_QUEUE_INACTIVE ;

 int ath5k_hw_reg_write (struct ath5k_hw*,int,int ) ;
 int ath5k_hw_set_tx_retry_limits (struct ath5k_hw*,unsigned int) ;

int
ath5k_hw_reset_tx_queue(struct ath5k_hw *ah, unsigned int queue)
{
 struct ath5k_txq_info *tq = &ah->ah_txq[queue];

 AR5K_ASSERT_ENTRY(queue, ah->ah_capabilities.cap_queues.q_tx_num);

 tq = &ah->ah_txq[queue];



 if ((ah->ah_version == AR5K_AR5210) ||
 (tq->tqi_type == AR5K_TX_QUEUE_INACTIVE))
  return 0;





 ath5k_hw_reg_write(ah,
  AR5K_REG_SM(tq->tqi_cw_min, AR5K_DCU_LCL_IFS_CW_MIN) |
  AR5K_REG_SM(tq->tqi_cw_max, AR5K_DCU_LCL_IFS_CW_MAX) |
  AR5K_REG_SM(tq->tqi_aifs, AR5K_DCU_LCL_IFS_AIFS),
  AR5K_QUEUE_DFS_LOCAL_IFS(queue));




 ath5k_hw_set_tx_retry_limits(ah, queue);







 AR5K_REG_ENABLE_BITS(ah, AR5K_QUEUE_DFS_MISC(queue),
    AR5K_DCU_MISC_FRAG_WAIT);


 if (ah->ah_mac_version < AR5K_SREV_AR5211)
  AR5K_REG_ENABLE_BITS(ah, AR5K_QUEUE_DFS_MISC(queue),
     AR5K_DCU_MISC_SEQNUM_CTL);


 if (tq->tqi_cbr_period) {
  ath5k_hw_reg_write(ah, AR5K_REG_SM(tq->tqi_cbr_period,
     AR5K_QCU_CBRCFG_INTVAL) |
     AR5K_REG_SM(tq->tqi_cbr_overflow_limit,
     AR5K_QCU_CBRCFG_ORN_THRES),
     AR5K_QUEUE_CBRCFG(queue));

  AR5K_REG_ENABLE_BITS(ah, AR5K_QUEUE_MISC(queue),
     AR5K_QCU_MISC_FRSHED_CBR);

  if (tq->tqi_cbr_overflow_limit)
   AR5K_REG_ENABLE_BITS(ah, AR5K_QUEUE_MISC(queue),
     AR5K_QCU_MISC_CBR_THRES_ENABLE);
 }


 if (tq->tqi_ready_time && (tq->tqi_type != 130))
  ath5k_hw_reg_write(ah, AR5K_REG_SM(tq->tqi_ready_time,
     AR5K_QCU_RDYTIMECFG_INTVAL) |
     AR5K_QCU_RDYTIMECFG_ENABLE,
     AR5K_QUEUE_RDYTIMECFG(queue));

 if (tq->tqi_burst_time) {
  ath5k_hw_reg_write(ah, AR5K_REG_SM(tq->tqi_burst_time,
     AR5K_DCU_CHAN_TIME_DUR) |
     AR5K_DCU_CHAN_TIME_ENABLE,
     AR5K_QUEUE_DFS_CHANNEL_TIME(queue));

  if (tq->tqi_flags & AR5K_TXQ_FLAG_RDYTIME_EXP_POLICY_ENABLE)
   AR5K_REG_ENABLE_BITS(ah, AR5K_QUEUE_MISC(queue),
     AR5K_QCU_MISC_RDY_VEOL_POLICY);
 }


 if (tq->tqi_flags & AR5K_TXQ_FLAG_BACKOFF_DISABLE)
  ath5k_hw_reg_write(ah, AR5K_DCU_MISC_POST_FR_BKOFF_DIS,
     AR5K_QUEUE_DFS_MISC(queue));


 if (tq->tqi_flags & AR5K_TXQ_FLAG_FRAG_BURST_BACKOFF_ENABLE)
  ath5k_hw_reg_write(ah, AR5K_DCU_MISC_BACKOFF_FRAG,
     AR5K_QUEUE_DFS_MISC(queue));




 switch (tq->tqi_type) {
 case 131:
  AR5K_REG_ENABLE_BITS(ah, AR5K_QUEUE_MISC(queue),
    AR5K_QCU_MISC_FRSHED_DBA_GT |
    AR5K_QCU_MISC_CBREXP_BCN_DIS |
    AR5K_QCU_MISC_BCN_ENABLE);

  AR5K_REG_ENABLE_BITS(ah, AR5K_QUEUE_DFS_MISC(queue),
    (AR5K_DCU_MISC_ARBLOCK_CTL_GLOBAL <<
    AR5K_DCU_MISC_ARBLOCK_CTL_S) |
    AR5K_DCU_MISC_ARBLOCK_IGNORE |
    AR5K_DCU_MISC_POST_FR_BKOFF_DIS |
    AR5K_DCU_MISC_BCN_ENABLE);
  break;

 case 130:

  AR5K_REG_ENABLE_BITS(ah, AR5K_QUEUE_MISC(queue),
     AR5K_QCU_MISC_FRSHED_DBA_GT |
     AR5K_QCU_MISC_CBREXP_DIS |
     AR5K_QCU_MISC_CBREXP_BCN_DIS);

  ath5k_hw_reg_write(ah, ((tq->tqi_ready_time -
     (AR5K_TUNE_SW_BEACON_RESP -
     AR5K_TUNE_DMA_BEACON_RESP) -
    AR5K_TUNE_ADDITIONAL_SWBA_BACKOFF) * 1024) |
     AR5K_QCU_RDYTIMECFG_ENABLE,
     AR5K_QUEUE_RDYTIMECFG(queue));

  AR5K_REG_ENABLE_BITS(ah, AR5K_QUEUE_DFS_MISC(queue),
     (AR5K_DCU_MISC_ARBLOCK_CTL_GLOBAL <<
     AR5K_DCU_MISC_ARBLOCK_CTL_S));
  break;

 case 128:
  AR5K_REG_ENABLE_BITS(ah, AR5K_QUEUE_MISC(queue),
     AR5K_QCU_MISC_CBREXP_DIS);
  break;

 case 129:
 default:
   break;
 }







 if (tq->tqi_flags & AR5K_TXQ_FLAG_TXOKINT_ENABLE)
  AR5K_Q_ENABLE_BITS(ah->ah_txq_imr_txok, queue);

 if (tq->tqi_flags & AR5K_TXQ_FLAG_TXERRINT_ENABLE)
  AR5K_Q_ENABLE_BITS(ah->ah_txq_imr_txerr, queue);

 if (tq->tqi_flags & AR5K_TXQ_FLAG_TXURNINT_ENABLE)
  AR5K_Q_ENABLE_BITS(ah->ah_txq_imr_txurn, queue);

 if (tq->tqi_flags & AR5K_TXQ_FLAG_TXDESCINT_ENABLE)
  AR5K_Q_ENABLE_BITS(ah->ah_txq_imr_txdesc, queue);

 if (tq->tqi_flags & AR5K_TXQ_FLAG_TXEOLINT_ENABLE)
  AR5K_Q_ENABLE_BITS(ah->ah_txq_imr_txeol, queue);

 if (tq->tqi_flags & AR5K_TXQ_FLAG_CBRORNINT_ENABLE)
  AR5K_Q_ENABLE_BITS(ah->ah_txq_imr_cbrorn, queue);

 if (tq->tqi_flags & AR5K_TXQ_FLAG_CBRURNINT_ENABLE)
  AR5K_Q_ENABLE_BITS(ah->ah_txq_imr_cbrurn, queue);

 if (tq->tqi_flags & AR5K_TXQ_FLAG_QTRIGINT_ENABLE)
  AR5K_Q_ENABLE_BITS(ah->ah_txq_imr_qtrig, queue);

 if (tq->tqi_flags & AR5K_TXQ_FLAG_TXNOFRMINT_ENABLE)
  AR5K_Q_ENABLE_BITS(ah->ah_txq_imr_nofrm, queue);




 ah->ah_txq_imr_txok &= ah->ah_txq_status;
 ah->ah_txq_imr_txerr &= ah->ah_txq_status;
 ah->ah_txq_imr_txurn &= ah->ah_txq_status;
 ah->ah_txq_imr_txdesc &= ah->ah_txq_status;
 ah->ah_txq_imr_txeol &= ah->ah_txq_status;
 ah->ah_txq_imr_cbrorn &= ah->ah_txq_status;
 ah->ah_txq_imr_cbrurn &= ah->ah_txq_status;
 ah->ah_txq_imr_qtrig &= ah->ah_txq_status;
 ah->ah_txq_imr_nofrm &= ah->ah_txq_status;

 ath5k_hw_reg_write(ah, AR5K_REG_SM(ah->ah_txq_imr_txok,
     AR5K_SIMR0_QCU_TXOK) |
     AR5K_REG_SM(ah->ah_txq_imr_txdesc,
     AR5K_SIMR0_QCU_TXDESC),
     AR5K_SIMR0);

 ath5k_hw_reg_write(ah, AR5K_REG_SM(ah->ah_txq_imr_txerr,
     AR5K_SIMR1_QCU_TXERR) |
     AR5K_REG_SM(ah->ah_txq_imr_txeol,
     AR5K_SIMR1_QCU_TXEOL),
     AR5K_SIMR1);


 AR5K_REG_DISABLE_BITS(ah, AR5K_SIMR2, AR5K_SIMR2_QCU_TXURN);
 AR5K_REG_ENABLE_BITS(ah, AR5K_SIMR2,
    AR5K_REG_SM(ah->ah_txq_imr_txurn,
    AR5K_SIMR2_QCU_TXURN));

 ath5k_hw_reg_write(ah, AR5K_REG_SM(ah->ah_txq_imr_cbrorn,
    AR5K_SIMR3_QCBRORN) |
    AR5K_REG_SM(ah->ah_txq_imr_cbrurn,
    AR5K_SIMR3_QCBRURN),
    AR5K_SIMR3);

 ath5k_hw_reg_write(ah, AR5K_REG_SM(ah->ah_txq_imr_qtrig,
    AR5K_SIMR4_QTRIG), AR5K_SIMR4);


 ath5k_hw_reg_write(ah, AR5K_REG_SM(ah->ah_txq_imr_nofrm,
    AR5K_TXNOFRM_QCU), AR5K_TXNOFRM);



 if (ah->ah_txq_imr_nofrm == 0)
  ath5k_hw_reg_write(ah, 0, AR5K_TXNOFRM);


 AR5K_REG_WRITE_Q(ah, AR5K_QUEUE_QCUMASK(queue), queue);

 return 0;
}
