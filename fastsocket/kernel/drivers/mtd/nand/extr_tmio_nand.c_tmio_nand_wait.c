
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tmio_nand {TYPE_2__* dev; scalar_t__ fcr; } ;
struct nand_chip {scalar_t__ state; int (* read_byte ) (struct mtd_info*) ;int (* cmdfunc ) (struct mtd_info*,int ,int,int) ;TYPE_1__* controller; } ;
struct mtd_info {int dummy; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int wq; } ;


 scalar_t__ FCR_IMR ;
 scalar_t__ FCR_ISR ;
 scalar_t__ FL_ERASING ;
 int NAND_CMD_STATUS ;
 int dev_warn (int *,char*,...) ;
 int msecs_to_jiffies (int) ;
 struct tmio_nand* mtd_to_tmio (struct mtd_info*) ;
 int stub1 (struct mtd_info*,int ,int,int) ;
 int stub2 (struct mtd_info*) ;
 int tmio_iowrite8 (int,scalar_t__) ;
 int tmio_nand_dev_ready (struct mtd_info*) ;
 scalar_t__ unlikely (int) ;
 long wait_event_timeout (int ,int ,int ) ;

__attribute__((used)) static int
tmio_nand_wait(struct mtd_info *mtd, struct nand_chip *nand_chip)
{
 struct tmio_nand *tmio = mtd_to_tmio(mtd);
 long timeout;


 tmio_iowrite8(0x0f, tmio->fcr + FCR_ISR);
 tmio_iowrite8(0x81, tmio->fcr + FCR_IMR);

 timeout = wait_event_timeout(nand_chip->controller->wq,
  tmio_nand_dev_ready(mtd),
  msecs_to_jiffies(nand_chip->state == FL_ERASING ? 400 : 20));

 if (unlikely(!tmio_nand_dev_ready(mtd))) {
  tmio_iowrite8(0x00, tmio->fcr + FCR_IMR);
  dev_warn(&tmio->dev->dev, "still busy with %s after %d ms\n",
   nand_chip->state == FL_ERASING ? "erase" : "program",
   nand_chip->state == FL_ERASING ? 400 : 20);

 } else if (unlikely(!timeout)) {
  tmio_iowrite8(0x00, tmio->fcr + FCR_IMR);
  dev_warn(&tmio->dev->dev, "timeout waiting for interrupt\n");
 }

 nand_chip->cmdfunc(mtd, NAND_CMD_STATUS, -1, -1);
 return nand_chip->read_byte(mtd);
}
