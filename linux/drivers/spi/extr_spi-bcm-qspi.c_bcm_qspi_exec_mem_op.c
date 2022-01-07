
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_char ;
typedef int u32 ;
struct TYPE_4__ {int * in; } ;
struct TYPE_6__ {int nbytes; scalar_t__ dir; TYPE_1__ buf; } ;
struct TYPE_5__ {int nbytes; int val; } ;
struct spi_mem_op {TYPE_3__ data; TYPE_2__ addr; } ;
struct spi_mem {struct spi_device* spi; } ;
struct spi_device {int master; } ;
struct bcm_qspi {int dummy; } ;


 int ADDR_4MB_MASK ;
 int ENOTSUPP ;
 int IS_ALIGNED (uintptr_t,int) ;
 scalar_t__ SPI_MEM_DATA_IN ;
 int bcm_qspi_bspi_exec_mem_op (struct spi_device*,struct spi_mem_op const*) ;
 int bcm_qspi_bspi_set_mode (struct bcm_qspi*,struct spi_mem_op const*,int ) ;
 int bcm_qspi_bspi_ver_three (struct bcm_qspi*) ;
 int bcm_qspi_mspi_exec_mem_op (struct spi_device*,struct spi_mem_op const*) ;
 struct bcm_qspi* spi_master_get_devdata (int ) ;

__attribute__((used)) static int bcm_qspi_exec_mem_op(struct spi_mem *mem,
    const struct spi_mem_op *op)
{
 struct spi_device *spi = mem->spi;
 struct bcm_qspi *qspi = spi_master_get_devdata(spi->master);
 int ret = 0;
 bool mspi_read = 0;
 u32 addr = 0, len;
 u_char *buf;

 if (!op->data.nbytes || !op->addr.nbytes || op->addr.nbytes > 4 ||
     op->data.dir != SPI_MEM_DATA_IN)
  return -ENOTSUPP;

 buf = op->data.buf.in;
 addr = op->addr.val;
 len = op->data.nbytes;

 if (bcm_qspi_bspi_ver_three(qspi) == 1) {






  addr = (addr + 0xc00000) & 0xffffff;

  if ((~ADDR_4MB_MASK & addr) ^
      (~ADDR_4MB_MASK & (addr + len - 1)))
   mspi_read = 1;
 }


 if (!IS_ALIGNED((uintptr_t)addr, 4) || !IS_ALIGNED((uintptr_t)buf, 4) ||
     len < 4)
  mspi_read = 1;

 if (mspi_read)
  return bcm_qspi_mspi_exec_mem_op(spi, op);

 ret = bcm_qspi_bspi_set_mode(qspi, op, 0);

 if (!ret)
  ret = bcm_qspi_bspi_exec_mem_op(spi, op);

 return ret;
}
