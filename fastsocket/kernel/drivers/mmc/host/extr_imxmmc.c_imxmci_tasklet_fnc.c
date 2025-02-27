
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct imxmci_host {int status_reg; int prev_cmd_code; int actual_bus_width; scalar_t__ dma_dir; int mmc; scalar_t__ req; scalar_t__ data; TYPE_1__* cmd; int pending_events; scalar_t__ base; int present; int dma_size; int dma; int stuck_timeout; } ;
struct TYPE_2__ {int opcode; } ;


 int CCR (int ) ;
 scalar_t__ DMA_TO_DEVICE ;
 int IMXMCI_PEND_CARD_XCHG_b ;
 int IMXMCI_PEND_CPU_DATA_b ;
 int IMXMCI_PEND_CPU_DATA_m ;
 int IMXMCI_PEND_DMA_DATA_b ;
 int IMXMCI_PEND_DMA_END_b ;
 int IMXMCI_PEND_IRQ_b ;
 int IMXMCI_PEND_IRQ_m ;
 int IMXMCI_PEND_WAIT_RESP_b ;
 scalar_t__ MMC_REG_BLK_LEN ;
 scalar_t__ MMC_REG_CMD_DAT_CONT ;
 scalar_t__ MMC_REG_INT_MASK ;
 scalar_t__ MMC_REG_NOB ;
 scalar_t__ MMC_REG_STATUS ;
 int STATUS_CRC_READ_ERR ;
 int STATUS_CRC_WRITE_ERR ;
 unsigned int STATUS_DATA_TRANS_DONE ;
 int STATUS_END_CMD_RESP ;
 int STATUS_ERR_MASK ;
 int STATUS_TIME_OUT_READ ;
 int STATUS_TIME_OUT_RESP ;
 unsigned int STATUS_WRITE_OP_DONE ;
 int atomic_clear_mask (int,int *) ;
 int atomic_read (int *) ;
 int clear_bit (int ,int *) ;
 int dev_err (int ,char*,...) ;
 int imxmci_busy_wait_for_status (struct imxmci_host*,int*,int,int,char*) ;
 int imxmci_cmd_done (struct imxmci_host*,int) ;
 scalar_t__ imxmci_cpu_driven_data (struct imxmci_host*,int*) ;
 int imxmci_data_done (struct imxmci_host*,int) ;
 int imxmci_finish_request (struct imxmci_host*,scalar_t__) ;
 int mmc_detect_change (int ,int ) ;
 int mmc_dev (int ) ;
 int msecs_to_jiffies (int) ;
 int readw (scalar_t__) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void imxmci_tasklet_fnc(unsigned long data)
{
 struct imxmci_host *host = (struct imxmci_host *)data;
 u32 stat;
 unsigned int data_dir_mask = 0;
 int timeout = 0;

 if (atomic_read(&host->stuck_timeout) > 4) {
  char *what;
  timeout = 1;
  stat = readw(host->base + MMC_REG_STATUS);
  host->status_reg = stat;
  if (test_bit(IMXMCI_PEND_WAIT_RESP_b, &host->pending_events))
   if (test_bit(IMXMCI_PEND_DMA_DATA_b, &host->pending_events))
    what = "RESP+DMA";
   else
    what = "RESP";
  else
   if (test_bit(IMXMCI_PEND_DMA_DATA_b, &host->pending_events))
    if (test_bit(IMXMCI_PEND_DMA_END_b, &host->pending_events))
     what = "DATA";
    else
     what = "DMA";
   else
    what = "???";

  dev_err(mmc_dev(host->mmc),
   "%s TIMEOUT, hardware stucked STATUS = 0x%04x IMASK = 0x%04x\n",
   what, stat,
   readw(host->base + MMC_REG_INT_MASK));
  dev_err(mmc_dev(host->mmc),
   "CMD_DAT_CONT = 0x%04x, MMC_BLK_LEN = 0x%04x, MMC_NOB = 0x%04x, DMA_CCR = 0x%08x\n",
   readw(host->base + MMC_REG_CMD_DAT_CONT),
   readw(host->base + MMC_REG_BLK_LEN),
   readw(host->base + MMC_REG_NOB),
   CCR(host->dma));
  dev_err(mmc_dev(host->mmc), "CMD%d, prevCMD%d, bus %d-bit, dma_size = 0x%x\n",
   host->cmd ? host->cmd->opcode : 0,
   host->prev_cmd_code,
   1 << host->actual_bus_width, host->dma_size);
 }

 if (!host->present || timeout)
  host->status_reg = STATUS_TIME_OUT_RESP | STATUS_TIME_OUT_READ |
   STATUS_CRC_READ_ERR | STATUS_CRC_WRITE_ERR;

 if (test_bit(IMXMCI_PEND_IRQ_b, &host->pending_events) || timeout) {
  clear_bit(IMXMCI_PEND_IRQ_b, &host->pending_events);

  stat = readw(host->base + MMC_REG_STATUS);





  stat |= host->status_reg;

  if (test_bit(IMXMCI_PEND_CPU_DATA_b, &host->pending_events))
   stat &= ~STATUS_CRC_READ_ERR;

  if (test_bit(IMXMCI_PEND_WAIT_RESP_b, &host->pending_events)) {
   imxmci_busy_wait_for_status(host, &stat,
          STATUS_END_CMD_RESP | STATUS_ERR_MASK,
          20, "imxmci_tasklet_fnc resp (ERRATUM #4)");
  }

  if (stat & (STATUS_END_CMD_RESP | STATUS_ERR_MASK)) {
   if (test_and_clear_bit(IMXMCI_PEND_WAIT_RESP_b, &host->pending_events))
    imxmci_cmd_done(host, stat);
   if (host->data && (stat & STATUS_ERR_MASK))
    imxmci_data_done(host, stat);
  }

  if (test_bit(IMXMCI_PEND_CPU_DATA_b, &host->pending_events)) {
   stat |= readw(host->base + MMC_REG_STATUS);
   if (imxmci_cpu_driven_data(host, &stat)) {
    if (test_and_clear_bit(IMXMCI_PEND_WAIT_RESP_b, &host->pending_events))
     imxmci_cmd_done(host, stat);
    atomic_clear_mask(IMXMCI_PEND_IRQ_m|IMXMCI_PEND_CPU_DATA_m,
        &host->pending_events);
    imxmci_data_done(host, stat);
   }
  }
 }

 if (test_bit(IMXMCI_PEND_DMA_END_b, &host->pending_events) &&
     !test_bit(IMXMCI_PEND_WAIT_RESP_b, &host->pending_events)) {

  stat = readw(host->base + MMC_REG_STATUS);

  stat |= host->status_reg;

  if (host->dma_dir == DMA_TO_DEVICE)
   data_dir_mask = STATUS_WRITE_OP_DONE;
  else
   data_dir_mask = STATUS_DATA_TRANS_DONE;

  if (stat & data_dir_mask) {
   clear_bit(IMXMCI_PEND_DMA_END_b, &host->pending_events);
   imxmci_data_done(host, stat);
  }
 }

 if (test_and_clear_bit(IMXMCI_PEND_CARD_XCHG_b, &host->pending_events)) {

  if (host->cmd)
   imxmci_cmd_done(host, STATUS_TIME_OUT_RESP);

  if (host->data)
   imxmci_data_done(host, STATUS_TIME_OUT_READ |
      STATUS_CRC_READ_ERR | STATUS_CRC_WRITE_ERR);

  if (host->req)
   imxmci_finish_request(host, host->req);

  mmc_detect_change(host->mmc, msecs_to_jiffies(100));

 }
}
