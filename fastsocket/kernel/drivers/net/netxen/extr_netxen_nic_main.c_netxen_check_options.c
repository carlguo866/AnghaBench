
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct pci_dev {int dev; } ;
struct TYPE_4__ {int board_type; int cut_through; scalar_t__ port_type; int revision_id; } ;
struct TYPE_3__ {int * md_template; } ;
struct netxen_adapter {int driver_mismatch; scalar_t__ fw_version; scalar_t__ portnum; int msix_supported; int rss_supported; int max_rds_rings; scalar_t__ num_lro_rxd; TYPE_2__ ahw; int num_txd; int num_jumbo_rxd; int num_rxd; void* capabilities; struct pci_dev* pdev; TYPE_1__ mdump; } ;
typedef int __le32 ;


 int CRB_FW_CAPABILITIES_1 ;
 int DEFAULT_RCV_DESCRIPTORS_10G ;
 int DEFAULT_RCV_DESCRIPTORS_1G ;
 int MAX_CMD_DESCRIPTORS ;
 int MAX_JUMBO_RCV_DESCRIPTORS_10G ;
 int MAX_JUMBO_RCV_DESCRIPTORS_1G ;
 scalar_t__ MAX_LRO_RCV_DESCRIPTORS ;


 scalar_t__ NETXEN_DECODE_VERSION (scalar_t__) ;
 int NETXEN_FW_VERSION_MAJOR ;
 int NETXEN_FW_VERSION_MINOR ;
 int NETXEN_FW_VERSION_SUB ;
 int NETXEN_MAX_SHORT_NAME ;
 scalar_t__ NETXEN_NIC_GBE ;
 scalar_t__ NETXEN_NIC_XGBE ;
 int NETXEN_SRE_MISC ;
 scalar_t__ NETXEN_VERSION_CODE (int,int,int) ;
 void* NXRD32 (struct netxen_adapter*,int ) ;
 int NX_FW_SERIAL_NUM_OFFSET ;
 int NX_FW_VERSION_OFFSET ;
 scalar_t__ NX_IS_REVISION_P2 (int ) ;
 scalar_t__ NX_IS_REVISION_P3 (int ) ;
 int THIS_MODULE ;
 int cpu_to_le32 (int) ;
 int dev_err (int *,char*,...) ;
 int dev_info (int *,char*,scalar_t__,scalar_t__,scalar_t__,char*) ;
 int dev_warn (int *,char*,scalar_t__,scalar_t__,scalar_t__) ;
 int get_brd_name_by_type (int,char*) ;
 int kfree (int *) ;
 int module_name (int ) ;
 int netxen_rom_fast_read (struct netxen_adapter*,int,int*) ;
 int netxen_setup_minidump (struct netxen_adapter*) ;
 int pr_info (char*,int ,char*,char*,int ) ;
 int use_msi_x ;

__attribute__((used)) static void
netxen_check_options(struct netxen_adapter *adapter)
{
 u32 fw_major, fw_minor, fw_build, prev_fw_version;
 char brd_name[NETXEN_MAX_SHORT_NAME];
 char serial_num[32];
 int i, offset, val, err;
 __le32 *ptr32;
 struct pci_dev *pdev = adapter->pdev;

 adapter->driver_mismatch = 0;

 ptr32 = (__le32 *)&serial_num;
 offset = NX_FW_SERIAL_NUM_OFFSET;
 for (i = 0; i < 8; i++) {
  if (netxen_rom_fast_read(adapter, offset, &val) == -1) {
   dev_err(&pdev->dev, "error reading board info\n");
   adapter->driver_mismatch = 1;
   return;
  }
  ptr32[i] = cpu_to_le32(val);
  offset += sizeof(u32);
 }

 fw_major = NXRD32(adapter, NETXEN_FW_VERSION_MAJOR);
 fw_minor = NXRD32(adapter, NETXEN_FW_VERSION_MINOR);
 fw_build = NXRD32(adapter, NETXEN_FW_VERSION_SUB);
 prev_fw_version = adapter->fw_version;
 adapter->fw_version = NETXEN_VERSION_CODE(fw_major, fw_minor, fw_build);


  if (NX_IS_REVISION_P3(adapter->ahw.revision_id)) {
  if (adapter->mdump.md_template == ((void*)0) ||
    adapter->fw_version > prev_fw_version) {
   kfree(adapter->mdump.md_template);
   adapter->mdump.md_template = ((void*)0);
   err = netxen_setup_minidump(adapter);
   if (err)
    dev_err(&adapter->pdev->dev,
    "Failed to setup minidump rcode = %d\n", err);
  }
 }

 if (adapter->portnum == 0) {
  get_brd_name_by_type(adapter->ahw.board_type, brd_name);

  pr_info("%s: %s Board S/N %s  Chip rev 0x%x\n",
    module_name(THIS_MODULE),
    brd_name, serial_num, adapter->ahw.revision_id);
 }

 if (adapter->fw_version < NETXEN_VERSION_CODE(3, 4, 216)) {
  adapter->driver_mismatch = 1;
  dev_warn(&pdev->dev, "firmware version %d.%d.%d unsupported\n",
    fw_major, fw_minor, fw_build);
  return;
 }

 if (NX_IS_REVISION_P3(adapter->ahw.revision_id)) {
  i = NXRD32(adapter, NETXEN_SRE_MISC);
  adapter->ahw.cut_through = (i & 0x8000) ? 1 : 0;
 }

 dev_info(&pdev->dev, "firmware v%d.%d.%d [%s]\n",
   fw_major, fw_minor, fw_build,
   adapter->ahw.cut_through ? "cut-through" : "legacy");

 if (adapter->fw_version >= NETXEN_VERSION_CODE(4, 0, 222))
  adapter->capabilities = NXRD32(adapter, CRB_FW_CAPABILITIES_1);

 if (adapter->ahw.port_type == NETXEN_NIC_XGBE) {
  adapter->num_rxd = DEFAULT_RCV_DESCRIPTORS_10G;
  adapter->num_jumbo_rxd = MAX_JUMBO_RCV_DESCRIPTORS_10G;
 } else if (adapter->ahw.port_type == NETXEN_NIC_GBE) {
  adapter->num_rxd = DEFAULT_RCV_DESCRIPTORS_1G;
  adapter->num_jumbo_rxd = MAX_JUMBO_RCV_DESCRIPTORS_1G;
 }

 adapter->msix_supported = 0;
 if (NX_IS_REVISION_P3(adapter->ahw.revision_id)) {
  adapter->msix_supported = !!use_msi_x;
  adapter->rss_supported = !!use_msi_x;
 } else {
  u32 flashed_ver = 0;
  netxen_rom_fast_read(adapter,
    NX_FW_VERSION_OFFSET, (int *)&flashed_ver);
  flashed_ver = NETXEN_DECODE_VERSION(flashed_ver);

  if (flashed_ver >= NETXEN_VERSION_CODE(3, 4, 336)) {
   switch (adapter->ahw.board_type) {
   case 129:
   case 128:
    adapter->msix_supported = !!use_msi_x;
    adapter->rss_supported = !!use_msi_x;
    break;
   default:
    break;
   }
  }
 }

 adapter->num_txd = MAX_CMD_DESCRIPTORS;

 if (NX_IS_REVISION_P2(adapter->ahw.revision_id)) {
  adapter->num_lro_rxd = MAX_LRO_RCV_DESCRIPTORS;
  adapter->max_rds_rings = 3;
 } else {
  adapter->num_lro_rxd = 0;
  adapter->max_rds_rings = 2;
 }
}
