
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* u8 ;
struct intel_pt_pkt {int dummy; } ;


 int INTEL_PT_PKT_DESC_MAX ;
 int INTEL_PT_PKT_MAX_SZ ;
 int TEST_FAIL ;
 int TEST_OK ;
 int intel_pt_pkt_desc (struct intel_pt_pkt*,char*,int) ;
 int pr_debug (char*,...) ;

__attribute__((used)) static int dump_packet(struct intel_pt_pkt *packet, u8 *bytes, int len)
{
 char desc[INTEL_PT_PKT_DESC_MAX];
 int ret, i;

 for (i = 0; i < len; i++)
  pr_debug(" %02x", bytes[i]);
 for (; i < INTEL_PT_PKT_MAX_SZ; i++)
  pr_debug("   ");
 pr_debug("   ");
 ret = intel_pt_pkt_desc(packet, desc, INTEL_PT_PKT_DESC_MAX);
 if (ret < 0) {
  pr_debug("intel_pt_pkt_desc failed!\n");
  return TEST_FAIL;
 }
 pr_debug("%s\n", desc);

 return TEST_OK;
}
