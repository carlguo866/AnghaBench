
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct hfi1_devdata {size_t hfi1_id; } ;


 int CR_SBUS ;
 int NUM_FABRIC_SERDES ;
 int NUM_PCIE_SERDES ;
 int SBUS_MASTER_BROADCAST ;
 int SBUS_TIMEOUT ;
 int WRITE_SBUS_RECEIVER ;
 int acquire_chip_resource (struct hfi1_devdata*,int ,int ) ;
 int clear_sbus_fast_mode (struct hfi1_devdata*) ;
 int dd_dev_err (struct hfi1_devdata*,char*) ;
 int dd_dev_info (struct hfi1_devdata*,char*,int,...) ;
 int dd_dev_warn (struct hfi1_devdata*,char*) ;
 int ** fabric_serdes_addrs ;
 int ** pcie_serdes_addrs ;
 int release_chip_resource (struct hfi1_devdata*,int ) ;
 scalar_t__ sbus_read (struct hfi1_devdata*,int ,int,int) ;
 int sbus_request (struct hfi1_devdata*,int ,int,int ,int) ;
 int set_sbus_fast_mode (struct hfi1_devdata*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void dump_fw_version(struct hfi1_devdata *dd)
{
 u32 pcie_vers[NUM_PCIE_SERDES];
 u32 fabric_vers[NUM_FABRIC_SERDES];
 u32 sbus_vers;
 int i;
 int all_same;
 int ret;
 u8 rcv_addr;

 ret = acquire_chip_resource(dd, CR_SBUS, SBUS_TIMEOUT);
 if (ret) {
  dd_dev_err(dd, "Unable to acquire SBus to read firmware versions\n");
  return;
 }


 set_sbus_fast_mode(dd);


 sbus_request(dd, SBUS_MASTER_BROADCAST, 0x02, WRITE_SBUS_RECEIVER, 0);
 sbus_request(dd, SBUS_MASTER_BROADCAST, 0x07, WRITE_SBUS_RECEIVER, 0x1);

 usleep_range(10000, 11000);
 sbus_vers = sbus_read(dd, SBUS_MASTER_BROADCAST, 0x08, 0x1);
 dd_dev_info(dd, "SBus Master firmware version 0x%08x\n", sbus_vers);


 all_same = 1;
 pcie_vers[0] = 0;
 for (i = 0; i < NUM_PCIE_SERDES; i++) {
  rcv_addr = pcie_serdes_addrs[dd->hfi1_id][i];
  sbus_request(dd, rcv_addr, 0x03, WRITE_SBUS_RECEIVER, 0);

  usleep_range(10000, 11000);
  pcie_vers[i] = sbus_read(dd, rcv_addr, 0x04, 0x0);
  if (i > 0 && pcie_vers[0] != pcie_vers[i])
   all_same = 0;
 }

 if (all_same) {
  dd_dev_info(dd, "PCIe SerDes firmware version 0x%x\n",
       pcie_vers[0]);
 } else {
  dd_dev_warn(dd, "PCIe SerDes do not have the same firmware version\n");
  for (i = 0; i < NUM_PCIE_SERDES; i++) {
   dd_dev_info(dd,
        "PCIe SerDes lane %d firmware version 0x%x\n",
        i, pcie_vers[i]);
  }
 }


 all_same = 1;
 fabric_vers[0] = 0;
 for (i = 0; i < NUM_FABRIC_SERDES; i++) {
  rcv_addr = fabric_serdes_addrs[dd->hfi1_id][i];
  sbus_request(dd, rcv_addr, 0x03, WRITE_SBUS_RECEIVER, 0);

  usleep_range(10000, 11000);
  fabric_vers[i] = sbus_read(dd, rcv_addr, 0x04, 0x0);
  if (i > 0 && fabric_vers[0] != fabric_vers[i])
   all_same = 0;
 }

 if (all_same) {
  dd_dev_info(dd, "Fabric SerDes firmware version 0x%x\n",
       fabric_vers[0]);
 } else {
  dd_dev_warn(dd, "Fabric SerDes do not have the same firmware version\n");
  for (i = 0; i < NUM_FABRIC_SERDES; i++) {
   dd_dev_info(dd,
        "Fabric SerDes lane %d firmware version 0x%x\n",
        i, fabric_vers[i]);
  }
 }

 clear_sbus_fast_mode(dd);
 release_chip_resource(dd, CR_SBUS);
}
