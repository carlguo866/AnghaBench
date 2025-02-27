
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atm_trafprm {unsigned int max_sdu; } ;
typedef int hrz_aal ;


 unsigned int ATM_AAL0_SDU ;
 unsigned int ATM_MAX_AAL34_PDU ;
 int DBG_ERR ;
 int DBG_FLOW ;
 int DBG_QOS ;
 int EINVAL ;
 int PRINTD (int,char*,...) ;




__attribute__((used)) static int check_max_sdu (hrz_aal aal, struct atm_trafprm * tp, unsigned int max_frame_size) {
  PRINTD (DBG_FLOW|DBG_QOS, "check_max_sdu");

  switch (aal) {
    case 130:
      if (!(tp->max_sdu)) {
 PRINTD (DBG_QOS, "defaulting max_sdu");
 tp->max_sdu = ATM_AAL0_SDU;
      } else if (tp->max_sdu != ATM_AAL0_SDU) {
 PRINTD (DBG_QOS|DBG_ERR, "rejecting max_sdu");
 return -EINVAL;
      }
      break;
    case 129:
      if (tp->max_sdu == 0 || tp->max_sdu > ATM_MAX_AAL34_PDU) {
 PRINTD (DBG_QOS, "%sing max_sdu", tp->max_sdu ? "capp" : "default");
 tp->max_sdu = ATM_MAX_AAL34_PDU;
      }
      break;
    case 128:
      if (tp->max_sdu == 0 || tp->max_sdu > max_frame_size) {
 PRINTD (DBG_QOS, "%sing max_sdu", tp->max_sdu ? "capp" : "default");
 tp->max_sdu = max_frame_size;
      }
      break;
  }
  return 0;
}
