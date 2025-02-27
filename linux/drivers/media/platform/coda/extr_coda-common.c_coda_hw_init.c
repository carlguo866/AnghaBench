
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_7__ {int paddr; scalar_t__ vaddr; } ;
struct TYPE_6__ {int paddr; } ;
struct TYPE_5__ {int paddr; } ;
struct coda_dev {int clk_per; int clk_ahb; TYPE_4__* devtype; TYPE_3__ codebuf; TYPE_2__ workbuf; TYPE_1__ tempbuf; int rstc; } ;
struct TYPE_8__ {int product; } ;


 scalar_t__ CODA7_REG_BIT_AXI_SRAM_USE ;
 int CODA7_STREAM_BUF_PIC_FLUSH ;
 int CODA9_FRAME_ENABLE_BWB ;
 int CODADX6_STREAM_BUF_PIC_FLUSH ;
 int CODA_7541 ;
 int CODA_960 ;
 int CODA_DOWN_ADDRESS_SET (int) ;
 int CODA_DOWN_DATA_SET (int ) ;

 int CODA_HX4 ;
 int CODA_INT_INTERRUPT_ENABLE ;
 int CODA_ISRAM_SIZE ;
 scalar_t__ CODA_REG_BIT_BIT_STREAM_PARAM ;
 scalar_t__ CODA_REG_BIT_CODE_BUF_ADDR ;
 scalar_t__ CODA_REG_BIT_CODE_DOWN ;
 scalar_t__ CODA_REG_BIT_CODE_RESET ;
 scalar_t__ CODA_REG_BIT_CODE_RUN ;
 scalar_t__ CODA_REG_BIT_FRAME_MEM_CTRL ;
 scalar_t__ CODA_REG_BIT_INT_ENABLE ;
 scalar_t__ CODA_REG_BIT_STREAM_CTRL ;
 scalar_t__ CODA_REG_BIT_TEMP_BUF_ADDR ;
 scalar_t__ CODA_REG_BIT_WORK_BUF_ADDR ;
 int CODA_REG_RESET_ENABLE ;
 int CODA_REG_RUN_ENABLE ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int coda_read (struct coda_dev*,scalar_t__) ;
 int coda_write (struct coda_dev*,int,scalar_t__) ;
 int reset_control_reset (int ) ;
 int round_down (int,int) ;
 int udelay (int) ;

__attribute__((used)) static int coda_hw_init(struct coda_dev *dev)
{
 u32 data;
 u16 *p;
 int i, ret;

 ret = clk_prepare_enable(dev->clk_per);
 if (ret)
  goto err_clk_per;

 ret = clk_prepare_enable(dev->clk_ahb);
 if (ret)
  goto err_clk_ahb;

 reset_control_reset(dev->rstc);







 p = (u16 *)dev->codebuf.vaddr;
 if (dev->devtype->product == 128) {
  for (i = 0; i < (CODA_ISRAM_SIZE / 2); i++) {
   data = CODA_DOWN_ADDRESS_SET(i) |
    CODA_DOWN_DATA_SET(p[i ^ 1]);
   coda_write(dev, data, CODA_REG_BIT_CODE_DOWN);
  }
 } else {
  for (i = 0; i < (CODA_ISRAM_SIZE / 2); i++) {
   data = CODA_DOWN_ADDRESS_SET(i) |
    CODA_DOWN_DATA_SET(p[round_down(i, 4) +
       3 - (i % 4)]);
   coda_write(dev, data, CODA_REG_BIT_CODE_DOWN);
  }
 }


 for (i = 0; i < 64; i++)
  coda_write(dev, 0, CODA_REG_BIT_CODE_BUF_ADDR + i * 4);


 if (dev->devtype->product == CODA_960 ||
     dev->devtype->product == CODA_7541 ||
     dev->devtype->product == CODA_HX4) {
  coda_write(dev, dev->tempbuf.paddr,
    CODA_REG_BIT_TEMP_BUF_ADDR);
  coda_write(dev, 0, CODA_REG_BIT_BIT_STREAM_PARAM);
 } else {
  coda_write(dev, dev->workbuf.paddr,
         CODA_REG_BIT_WORK_BUF_ADDR);
 }
 coda_write(dev, dev->codebuf.paddr,
        CODA_REG_BIT_CODE_BUF_ADDR);
 coda_write(dev, 0, CODA_REG_BIT_CODE_RUN);


 switch (dev->devtype->product) {
 case 128:
  coda_write(dev, CODADX6_STREAM_BUF_PIC_FLUSH,
      CODA_REG_BIT_STREAM_CTRL);
  break;
 default:
  coda_write(dev, CODA7_STREAM_BUF_PIC_FLUSH,
      CODA_REG_BIT_STREAM_CTRL);
 }
 if (dev->devtype->product == CODA_960)
  coda_write(dev, CODA9_FRAME_ENABLE_BWB,
    CODA_REG_BIT_FRAME_MEM_CTRL);
 else
  coda_write(dev, 0, CODA_REG_BIT_FRAME_MEM_CTRL);

 if (dev->devtype->product != 128)
  coda_write(dev, 0, CODA7_REG_BIT_AXI_SRAM_USE);

 coda_write(dev, CODA_INT_INTERRUPT_ENABLE,
        CODA_REG_BIT_INT_ENABLE);


 data = coda_read(dev, CODA_REG_BIT_CODE_RESET);
 data |= CODA_REG_RESET_ENABLE;
 coda_write(dev, data, CODA_REG_BIT_CODE_RESET);
 udelay(10);
 data &= ~CODA_REG_RESET_ENABLE;
 coda_write(dev, data, CODA_REG_BIT_CODE_RESET);
 coda_write(dev, CODA_REG_RUN_ENABLE, CODA_REG_BIT_CODE_RUN);

 clk_disable_unprepare(dev->clk_ahb);
 clk_disable_unprepare(dev->clk_per);

 return 0;

err_clk_ahb:
 clk_disable_unprepare(dev->clk_per);
err_clk_per:
 return ret;
}
