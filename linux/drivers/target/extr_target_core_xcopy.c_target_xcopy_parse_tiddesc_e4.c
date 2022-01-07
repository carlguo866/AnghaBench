
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct xcopy_op {unsigned short stdi; unsigned short dtdi; unsigned short src_dev; unsigned short dst_dev; int op_origin; int * dst_tid_wwn; int * local_dev_wwn; int * src_tid_wwn; } ;
struct se_cmd {unsigned short se_dev; } ;


 int EINVAL ;
 int XCOL_DEST_RECV_OP ;
 int XCOL_SOURCE_RECV_OP ;
 int XCOPY_NAA_IEEE_REGEX_LEN ;
 unsigned short get_unaligned_be16 (unsigned char*) ;
 int memcmp (int *,int *,int ) ;
 int memcpy (int *,unsigned char*,int ) ;
 int pr_debug (char*,unsigned short) ;
 int pr_err (char*,...) ;

__attribute__((used)) static int target_xcopy_parse_tiddesc_e4(struct se_cmd *se_cmd, struct xcopy_op *xop,
    unsigned char *p, unsigned short cscd_index)
{
 unsigned char *desc = p;
 unsigned short ript;
 u8 desig_len;



 ript = get_unaligned_be16(&desc[2]);
 pr_debug("XCOPY 0xe4: RELATIVE INITIATOR PORT IDENTIFIER: %hu\n", ript);



 if ((desc[4] & 0x0f) != 0x1) {
  pr_err("XCOPY 0xe4: code set of non binary type not supported\n");
  return -EINVAL;
 }
 if ((desc[5] & 0x30) != 0x00) {
  pr_err("XCOPY 0xe4: association other than LUN not supported\n");
  return -EINVAL;
 }
 if ((desc[5] & 0x0f) != 0x3) {
  pr_err("XCOPY 0xe4: designator type unsupported: 0x%02x\n",
    (desc[5] & 0x0f));
  return -EINVAL;
 }




 desig_len = desc[7];
 if (desig_len != 16) {
  pr_err("XCOPY 0xe4: invalid desig_len: %d\n", (int)desig_len);
  return -EINVAL;
 }
 pr_debug("XCOPY 0xe4: desig_len: %d\n", (int)desig_len);



 if ((desc[8] & 0xf0) != 0x60) {
  pr_err("XCOPY 0xe4: Unsupported DESIGNATOR TYPE: 0x%02x\n",
     (desc[8] & 0xf0));
  return -EINVAL;
 }

 if (cscd_index != xop->stdi && cscd_index != xop->dtdi) {
  pr_debug("XCOPY 0xe4: ignoring CSCD entry %d - neither src nor "
    "dest\n", cscd_index);
  return 0;
 }

 if (cscd_index == xop->stdi) {
  memcpy(&xop->src_tid_wwn[0], &desc[8], XCOPY_NAA_IEEE_REGEX_LEN);



  if (!memcmp(&xop->local_dev_wwn[0], &xop->src_tid_wwn[0],
    XCOPY_NAA_IEEE_REGEX_LEN)) {
   xop->op_origin = XCOL_SOURCE_RECV_OP;
   xop->src_dev = se_cmd->se_dev;
   pr_debug("XCOPY 0xe4: Set xop->src_dev %p from source"
     " received xop\n", xop->src_dev);
  }
 }

 if (cscd_index == xop->dtdi) {
  memcpy(&xop->dst_tid_wwn[0], &desc[8], XCOPY_NAA_IEEE_REGEX_LEN);






  if (!memcmp(&xop->local_dev_wwn[0], &xop->dst_tid_wwn[0],
    XCOPY_NAA_IEEE_REGEX_LEN)) {
   xop->op_origin = XCOL_DEST_RECV_OP;
   xop->dst_dev = se_cmd->se_dev;
   pr_debug("XCOPY 0xe4: Set xop->dst_dev: %p from destination"
    " received xop\n", xop->dst_dev);
  }
 }

 return 0;
}
