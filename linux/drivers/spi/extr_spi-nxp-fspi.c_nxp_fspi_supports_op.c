
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ nbytes; int buswidth; scalar_t__ dir; } ;
struct TYPE_10__ {int nbytes; int buswidth; } ;
struct TYPE_9__ {int nbytes; int buswidth; scalar_t__ val; } ;
struct TYPE_8__ {int buswidth; } ;
struct spi_mem_op {TYPE_5__ data; TYPE_4__ dummy; TYPE_3__ addr; TYPE_2__ cmd; } ;
struct spi_mem {TYPE_1__* spi; } ;
struct nxp_fspi {scalar_t__ memmap_phy_size; TYPE_6__* devtype_data; } ;
struct TYPE_12__ {scalar_t__ ahb_buf_size; int rxfifo; scalar_t__ txfifo; } ;
struct TYPE_7__ {int master; } ;


 int IS_ALIGNED (int,int) ;
 scalar_t__ SPI_MEM_DATA_IN ;
 scalar_t__ SPI_MEM_DATA_OUT ;
 int nxp_fspi_check_buswidth (struct nxp_fspi*,int) ;
 struct nxp_fspi* spi_controller_get_devdata (int ) ;

__attribute__((used)) static bool nxp_fspi_supports_op(struct spi_mem *mem,
     const struct spi_mem_op *op)
{
 struct nxp_fspi *f = spi_controller_get_devdata(mem->spi->master);
 int ret;

 ret = nxp_fspi_check_buswidth(f, op->cmd.buswidth);

 if (op->addr.nbytes)
  ret |= nxp_fspi_check_buswidth(f, op->addr.buswidth);

 if (op->dummy.nbytes)
  ret |= nxp_fspi_check_buswidth(f, op->dummy.buswidth);

 if (op->data.nbytes)
  ret |= nxp_fspi_check_buswidth(f, op->data.buswidth);

 if (ret)
  return 0;




 if (op->addr.nbytes > 4)
  return 0;






 if (op->addr.val >= f->memmap_phy_size)
  return 0;


 if (op->dummy.buswidth &&
     (op->dummy.nbytes * 8 / op->dummy.buswidth > 64))
  return 0;


 if (op->data.dir == SPI_MEM_DATA_IN &&
     (op->data.nbytes > f->devtype_data->ahb_buf_size ||
      (op->data.nbytes > f->devtype_data->rxfifo - 4 &&
       !IS_ALIGNED(op->data.nbytes, 8))))
  return 0;

 if (op->data.dir == SPI_MEM_DATA_OUT &&
     op->data.nbytes > f->devtype_data->txfifo)
  return 0;

 return 1;
}
