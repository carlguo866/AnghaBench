
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct task_struct {int dummy; } ;
struct dma_pool {int dummy; } ;
struct device {int dummy; } ;
struct ccp_device {size_t cmd_q_count; size_t max_q_count; char* name; struct ccp_cmd_queue* cmd_q; int sp; scalar_t__ io_regs; int irq_tasklet; scalar_t__ use_tasklet; struct device* dev; } ;
struct ccp_cmd_queue {unsigned int id; int qcontrol; int lsb; struct dma_pool* dma_pool; struct task_struct* kthread; void* sb_ctx; void* sb_key; scalar_t__ reg_control; int qdma_tail; scalar_t__ reg_head_lo; scalar_t__ reg_tail_lo; int qbase_dma; scalar_t__ reg_interrupt_status; scalar_t__ reg_status; scalar_t__ reg_int_status; int int_queue; scalar_t__ reg_dma_write_status; scalar_t__ reg_dma_read_status; scalar_t__ reg_dma_status; scalar_t__ reg_int_enable; scalar_t__ qidx; int qbase; int qsize; int q_mutex; struct ccp_device* ccp; } ;
typedef int dma_pool_name ;


 int BUILD_BUG_ON (int) ;
 int CCP_DMAPOOL_ALIGN ;
 int CCP_DMAPOOL_MAX_SIZE ;
 scalar_t__ CMD5_Q_DMA_READ_STATUS_BASE ;
 scalar_t__ CMD5_Q_DMA_STATUS_BASE ;
 scalar_t__ CMD5_Q_DMA_WRITE_STATUS_BASE ;
 scalar_t__ CMD5_Q_HEAD_LO_BASE ;
 scalar_t__ CMD5_Q_INTERRUPT_STATUS_BASE ;
 scalar_t__ CMD5_Q_INT_ENABLE_BASE ;
 scalar_t__ CMD5_Q_INT_STATUS_BASE ;
 int CMD5_Q_SHIFT ;
 int CMD5_Q_SIZE ;
 scalar_t__ CMD5_Q_STATUS_BASE ;
 unsigned int CMD5_Q_STATUS_INCR ;
 scalar_t__ CMD5_Q_TAIL_LO_BASE ;
 int COMMANDS_PER_QUEUE ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct task_struct*) ;
 scalar_t__ LSB_PRIVATE_MASK_HI_OFFSET ;
 scalar_t__ LSB_PRIVATE_MASK_LO_OFFSET ;
 scalar_t__ LSB_PUBLIC_MASK_HI_OFFSET ;
 scalar_t__ LSB_PUBLIC_MASK_LO_OFFSET ;
 int MAX_DMAPOOL_NAME_LEN ;
 unsigned int MAX_HW_QUEUES ;
 int PTR_ERR (struct task_struct*) ;
 int QUEUE_SIZE_VAL ;
 int Q_DESC_SIZE ;
 scalar_t__ Q_MASK_REG ;
 int Q_SIZE (int ) ;
 int SUPPORTED_INTERRUPTS ;
 int ccp5_debugfs_setup (struct ccp_device*) ;
 int ccp5_disable_queue_interrupts (struct ccp_device*) ;
 int ccp5_enable_queue_interrupts (struct ccp_device*) ;
 int ccp5_irq_bh ;
 int ccp5_irq_handler ;
 int ccp_add_device (struct ccp_device*) ;
 int ccp_assign_lsbs (struct ccp_device*) ;
 int ccp_cmd_queue_thread ;
 int ccp_dmaengine_register (struct ccp_device*) ;
 int ccp_find_lsb_regions (struct ccp_cmd_queue*,int) ;
 void* ccp_lsb_alloc (struct ccp_cmd_queue*,int) ;
 int ccp_register_rng (struct ccp_device*) ;
 int ccp_unregister_rng (struct ccp_device*) ;
 int dev_dbg (struct device*,char*,...) ;
 int dev_err (struct device*,char*,...) ;
 int dev_notice (struct device*,char*) ;
 struct dma_pool* dma_pool_create (char*,struct device*,int ,int ,int ) ;
 int dma_pool_destroy (struct dma_pool*) ;
 int dmam_alloc_coherent (struct device*,int ,int *,int ) ;
 int high_address (int ) ;
 int init_waitqueue_head (int *) ;
 void* ioread32 (scalar_t__) ;
 int iowrite32 (int,scalar_t__) ;
 struct task_struct* kthread_create (int ,struct ccp_cmd_queue*,char*,char*,unsigned int) ;
 int kthread_stop (struct task_struct*) ;
 int low_address (int ) ;
 int mutex_init (int *) ;
 int snprintf (char*,int,char*,char*,unsigned int) ;
 int sp_free_ccp_irq (int ,struct ccp_device*) ;
 int sp_request_ccp_irq (int ,int ,char*,struct ccp_device*) ;
 int tasklet_init (int *,int ,unsigned long) ;
 int wake_up_process (struct task_struct*) ;

__attribute__((used)) static int ccp5_init(struct ccp_device *ccp)
{
 struct device *dev = ccp->dev;
 struct ccp_cmd_queue *cmd_q;
 struct dma_pool *dma_pool;
 char dma_pool_name[MAX_DMAPOOL_NAME_LEN];
 unsigned int qmr, i;
 u64 status;
 u32 status_lo, status_hi;
 int ret;


 qmr = ioread32(ccp->io_regs + Q_MASK_REG);
 for (i = 0; (i < MAX_HW_QUEUES) && (ccp->cmd_q_count < ccp->max_q_count); i++) {
  if (!(qmr & (1 << i)))
   continue;


  snprintf(dma_pool_name, sizeof(dma_pool_name), "%s_q%d",
    ccp->name, i);
  dma_pool = dma_pool_create(dma_pool_name, dev,
        CCP_DMAPOOL_MAX_SIZE,
        CCP_DMAPOOL_ALIGN, 0);
  if (!dma_pool) {
   dev_err(dev, "unable to allocate dma pool\n");
   ret = -ENOMEM;
   goto e_pool;
  }

  cmd_q = &ccp->cmd_q[ccp->cmd_q_count];
  ccp->cmd_q_count++;

  cmd_q->ccp = ccp;
  cmd_q->id = i;
  cmd_q->dma_pool = dma_pool;
  mutex_init(&cmd_q->q_mutex);


  BUILD_BUG_ON(COMMANDS_PER_QUEUE > 128);
  cmd_q->qsize = Q_SIZE(Q_DESC_SIZE);
  cmd_q->qbase = dmam_alloc_coherent(dev, cmd_q->qsize,
         &cmd_q->qbase_dma,
         GFP_KERNEL);
  if (!cmd_q->qbase) {
   dev_err(dev, "unable to allocate command queue\n");
   ret = -ENOMEM;
   goto e_pool;
  }

  cmd_q->qidx = 0;



  cmd_q->reg_control = ccp->io_regs +
         CMD5_Q_STATUS_INCR * (i + 1);
  cmd_q->reg_tail_lo = cmd_q->reg_control + CMD5_Q_TAIL_LO_BASE;
  cmd_q->reg_head_lo = cmd_q->reg_control + CMD5_Q_HEAD_LO_BASE;
  cmd_q->reg_int_enable = cmd_q->reg_control +
     CMD5_Q_INT_ENABLE_BASE;
  cmd_q->reg_interrupt_status = cmd_q->reg_control +
           CMD5_Q_INTERRUPT_STATUS_BASE;
  cmd_q->reg_status = cmd_q->reg_control + CMD5_Q_STATUS_BASE;
  cmd_q->reg_int_status = cmd_q->reg_control +
     CMD5_Q_INT_STATUS_BASE;
  cmd_q->reg_dma_status = cmd_q->reg_control +
     CMD5_Q_DMA_STATUS_BASE;
  cmd_q->reg_dma_read_status = cmd_q->reg_control +
          CMD5_Q_DMA_READ_STATUS_BASE;
  cmd_q->reg_dma_write_status = cmd_q->reg_control +
           CMD5_Q_DMA_WRITE_STATUS_BASE;

  init_waitqueue_head(&cmd_q->int_queue);

  dev_dbg(dev, "queue #%u available\n", i);
 }

 if (ccp->cmd_q_count == 0) {
  dev_notice(dev, "no command queues available\n");
  ret = -EIO;
  goto e_pool;
 }


 ccp5_disable_queue_interrupts(ccp);
 for (i = 0; i < ccp->cmd_q_count; i++) {
  cmd_q = &ccp->cmd_q[i];

  cmd_q->qcontrol = 0;
  iowrite32(cmd_q->qcontrol, cmd_q->reg_control);

  ioread32(cmd_q->reg_int_status);
  ioread32(cmd_q->reg_status);


  iowrite32(SUPPORTED_INTERRUPTS, cmd_q->reg_interrupt_status);
 }

 dev_dbg(dev, "Requesting an IRQ...\n");

 ret = sp_request_ccp_irq(ccp->sp, ccp5_irq_handler, ccp->name, ccp);
 if (ret) {
  dev_err(dev, "unable to allocate an IRQ\n");
  goto e_pool;
 }

 if (ccp->use_tasklet)
  tasklet_init(&ccp->irq_tasklet, ccp5_irq_bh,
        (unsigned long)ccp);

 dev_dbg(dev, "Loading LSB map...\n");

 status_lo = ioread32(ccp->io_regs + LSB_PRIVATE_MASK_LO_OFFSET);
 status_hi = ioread32(ccp->io_regs + LSB_PRIVATE_MASK_HI_OFFSET);
 iowrite32(status_lo, ccp->io_regs + LSB_PUBLIC_MASK_LO_OFFSET);
 iowrite32(status_hi, ccp->io_regs + LSB_PUBLIC_MASK_HI_OFFSET);
 status = ((u64)status_hi<<30) | (u64)status_lo;

 dev_dbg(dev, "Configuring virtual queues...\n");

 for (i = 0; i < ccp->cmd_q_count; i++) {
  u32 dma_addr_lo;
  u32 dma_addr_hi;

  cmd_q = &ccp->cmd_q[i];

  cmd_q->qcontrol &= ~(CMD5_Q_SIZE << CMD5_Q_SHIFT);
  cmd_q->qcontrol |= QUEUE_SIZE_VAL << CMD5_Q_SHIFT;

  cmd_q->qdma_tail = cmd_q->qbase_dma;
  dma_addr_lo = low_address(cmd_q->qdma_tail);
  iowrite32((u32)dma_addr_lo, cmd_q->reg_tail_lo);
  iowrite32((u32)dma_addr_lo, cmd_q->reg_head_lo);

  dma_addr_hi = high_address(cmd_q->qdma_tail);
  cmd_q->qcontrol |= (dma_addr_hi << 16);
  iowrite32(cmd_q->qcontrol, cmd_q->reg_control);


  ccp_find_lsb_regions(cmd_q, status);
  cmd_q->lsb = -1;
 }

 dev_dbg(dev, "Assigning LSBs...\n");
 ret = ccp_assign_lsbs(ccp);
 if (ret) {
  dev_err(dev, "Unable to assign LSBs (%d)\n", ret);
  goto e_irq;
 }


 for (i = 0; i < ccp->cmd_q_count; i++) {
  ccp->cmd_q[i].sb_key = ccp_lsb_alloc(&ccp->cmd_q[i], 2);
  ccp->cmd_q[i].sb_ctx = ccp_lsb_alloc(&ccp->cmd_q[i], 2);
 }

 dev_dbg(dev, "Starting threads...\n");

 for (i = 0; i < ccp->cmd_q_count; i++) {
  struct task_struct *kthread;

  cmd_q = &ccp->cmd_q[i];

  kthread = kthread_create(ccp_cmd_queue_thread, cmd_q,
      "%s-q%u", ccp->name, cmd_q->id);
  if (IS_ERR(kthread)) {
   dev_err(dev, "error creating queue thread (%ld)\n",
    PTR_ERR(kthread));
   ret = PTR_ERR(kthread);
   goto e_kthread;
  }

  cmd_q->kthread = kthread;
  wake_up_process(kthread);
 }

 dev_dbg(dev, "Enabling interrupts...\n");
 ccp5_enable_queue_interrupts(ccp);

 dev_dbg(dev, "Registering device...\n");

 ccp_add_device(ccp);

 ret = ccp_register_rng(ccp);
 if (ret)
  goto e_kthread;


 ret = ccp_dmaengine_register(ccp);
 if (ret)
  goto e_hwrng;






 return 0;

e_hwrng:
 ccp_unregister_rng(ccp);

e_kthread:
 for (i = 0; i < ccp->cmd_q_count; i++)
  if (ccp->cmd_q[i].kthread)
   kthread_stop(ccp->cmd_q[i].kthread);

e_irq:
 sp_free_ccp_irq(ccp->sp, ccp);

e_pool:
 for (i = 0; i < ccp->cmd_q_count; i++)
  dma_pool_destroy(ccp->cmd_q[i].dma_pool);

 return ret;
}
