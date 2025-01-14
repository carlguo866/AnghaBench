
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct xmit_status_area {int dummy; } ;
struct pci_dev {int dev; } ;
struct icom_port {TYPE_2__* statStg; int recv_buf_pci; void* recv_buf; int statStg_pci; int xmit_buf_pci; void* xmit_buf; void* xmitRestart; int xmitRestart_pci; TYPE_1__* adapter; } ;
struct TYPE_8__ {unsigned short leLengthASD; void* leBuffer; } ;
struct TYPE_7__ {unsigned short WorkingLength; void* leBuffer; void* leNext; scalar_t__ leLength; } ;
struct TYPE_6__ {TYPE_3__* rcv; TYPE_4__* xmit; } ;
struct TYPE_5__ {struct pci_dev* pci_dev; } ;


 int ENOMEM ;
 int NUM_RBUFFS ;
 int NUM_XBUFFS ;
 int RCV_BUFF_SZ ;
 int XMIT_BUFF_SZ ;
 scalar_t__ cpu_to_le16 (int ) ;
 void* cpu_to_le32 (int ) ;
 int dev_err (int *,char*) ;
 int free_port_memory (struct icom_port*) ;
 int memset (TYPE_4__*,int ,int) ;
 void* pci_alloc_consistent (struct pci_dev*,int,int *) ;
 int trace (struct icom_port*,char*,unsigned long) ;

__attribute__((used)) static int get_port_memory(struct icom_port *icom_port)
{
 int index;
 unsigned long stgAddr;
 unsigned long startStgAddr;
 unsigned long offset;
 struct pci_dev *dev = icom_port->adapter->pci_dev;

 icom_port->xmit_buf =
     pci_alloc_consistent(dev, 4096, &icom_port->xmit_buf_pci);
 if (!icom_port->xmit_buf) {
  dev_err(&dev->dev, "Can not allocate Transmit buffer\n");
  return -ENOMEM;
 }

 trace(icom_port, "GET_PORT_MEM",
       (unsigned long) icom_port->xmit_buf);

 icom_port->recv_buf =
     pci_alloc_consistent(dev, 4096, &icom_port->recv_buf_pci);
 if (!icom_port->recv_buf) {
  dev_err(&dev->dev, "Can not allocate Receive buffer\n");
  free_port_memory(icom_port);
  return -ENOMEM;
 }
 trace(icom_port, "GET_PORT_MEM",
       (unsigned long) icom_port->recv_buf);

 icom_port->statStg =
     pci_alloc_consistent(dev, 4096, &icom_port->statStg_pci);
 if (!icom_port->statStg) {
  dev_err(&dev->dev, "Can not allocate Status buffer\n");
  free_port_memory(icom_port);
  return -ENOMEM;
 }
 trace(icom_port, "GET_PORT_MEM",
       (unsigned long) icom_port->statStg);

 icom_port->xmitRestart =
     pci_alloc_consistent(dev, 4096, &icom_port->xmitRestart_pci);
 if (!icom_port->xmitRestart) {
  dev_err(&dev->dev,
   "Can not allocate xmit Restart buffer\n");
  free_port_memory(icom_port);
  return -ENOMEM;
 }





 stgAddr = (unsigned long) icom_port->statStg;
 for (index = 0; index < NUM_XBUFFS; index++) {
  trace(icom_port, "FOD_ADDR", stgAddr);
  stgAddr = stgAddr + sizeof(icom_port->statStg->xmit[0]);
  if (index < (NUM_XBUFFS - 1)) {
   memset(&icom_port->statStg->xmit[index], 0, sizeof(struct xmit_status_area));
   icom_port->statStg->xmit[index].leLengthASD =
       (unsigned short int) cpu_to_le16(XMIT_BUFF_SZ);
   trace(icom_port, "FOD_ADDR", stgAddr);
   trace(icom_port, "FOD_XBUFF",
         (unsigned long) icom_port->xmit_buf);
   icom_port->statStg->xmit[index].leBuffer =
       cpu_to_le32(icom_port->xmit_buf_pci);
  } else if (index == (NUM_XBUFFS - 1)) {
   memset(&icom_port->statStg->xmit[index], 0, sizeof(struct xmit_status_area));
   icom_port->statStg->xmit[index].leLengthASD =
       (unsigned short int) cpu_to_le16(XMIT_BUFF_SZ);
   trace(icom_port, "FOD_XBUFF",
         (unsigned long) icom_port->xmit_buf);
   icom_port->statStg->xmit[index].leBuffer =
       cpu_to_le32(icom_port->xmit_buf_pci);
  } else {
   memset(&icom_port->statStg->xmit[index], 0, sizeof(struct xmit_status_area));
  }
 }

 startStgAddr = stgAddr;


 for (index = 0; index < NUM_RBUFFS; index++) {
  trace(icom_port, "FID_ADDR", stgAddr);
  stgAddr = stgAddr + sizeof(icom_port->statStg->rcv[0]);
  icom_port->statStg->rcv[index].leLength = 0;
  icom_port->statStg->rcv[index].WorkingLength =
      (unsigned short int) cpu_to_le16(RCV_BUFF_SZ);
  if (index < (NUM_RBUFFS - 1) ) {
   offset = stgAddr - (unsigned long) icom_port->statStg;
   icom_port->statStg->rcv[index].leNext =
         cpu_to_le32(icom_port-> statStg_pci + offset);
   trace(icom_port, "FID_RBUFF",
         (unsigned long) icom_port->recv_buf);
   icom_port->statStg->rcv[index].leBuffer =
       cpu_to_le32(icom_port->recv_buf_pci);
  } else if (index == (NUM_RBUFFS -1) ) {
   offset = startStgAddr - (unsigned long) icom_port->statStg;
   icom_port->statStg->rcv[index].leNext =
       cpu_to_le32(icom_port-> statStg_pci + offset);
   trace(icom_port, "FID_RBUFF",
         (unsigned long) icom_port->recv_buf + 2048);
   icom_port->statStg->rcv[index].leBuffer =
       cpu_to_le32(icom_port->recv_buf_pci + 2048);
  } else {
   icom_port->statStg->rcv[index].leNext = 0;
   icom_port->statStg->rcv[index].leBuffer = 0;
  }
 }

 return 0;
}
