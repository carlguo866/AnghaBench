
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
typedef int rp ;
struct TYPE_3__ {int status; } ;
typedef TYPE_1__ ng_hci_reset_failed_contact_cntr_rp ;
struct TYPE_4__ {int con_handle; } ;
typedef TYPE_2__ ng_hci_reset_failed_contact_cntr_cp ;
typedef int cp ;


 scalar_t__ ERROR ;
 int FAILED ;
 int NG_HCI_OCF_RESET_FAILED_CONTACT_CNTR ;
 int NG_HCI_OGF_STATUS ;
 int NG_HCI_OPCODE (int ,int ) ;
 int OK ;
 int USAGE ;
 int fprintf (int ,char*,char*,int) ;
 scalar_t__ hci_request (int,int ,char const*,int,char*,int*) ;
 char* hci_status2str (int) ;
 int htole16 (int ) ;
 int sscanf (char*,char*,int*) ;
 int stdout ;

__attribute__((used)) static int
hci_reset_failed_contact_counter(int s, int argc, char **argv)
{
 ng_hci_reset_failed_contact_cntr_cp cp;
 ng_hci_reset_failed_contact_cntr_rp rp;
 int n;

 switch (argc) {
 case 1:

  if (sscanf(argv[0], "%d", &n) != 1 || n <= 0 || n > 0x0eff)
   return (USAGE);

  cp.con_handle = (uint16_t) (n & 0x0fff);
  cp.con_handle = htole16(cp.con_handle);
  break;

 default:
  return (USAGE);
 }


 n = sizeof(rp);
 if (hci_request(s, NG_HCI_OPCODE(NG_HCI_OGF_STATUS,
   NG_HCI_OCF_RESET_FAILED_CONTACT_CNTR),
   (char const *) &cp, sizeof(cp),
   (char *) &rp, &n) == ERROR)
  return (ERROR);

 if (rp.status != 0x00) {
  fprintf(stdout, "Status: %s [%#02x]\n",
   hci_status2str(rp.status), rp.status);
  return (FAILED);
 }

 return (OK);
}
