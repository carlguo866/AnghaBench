
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct driver_data {TYPE_3__* controller; TYPE_2__* pdev; int clear_sr; } ;
struct TYPE_6__ {TYPE_1__* cur_msg; } ;
struct TYPE_5__ {int dev; } ;
struct TYPE_4__ {int status; } ;


 int EIO ;
 int SSCR0 ;
 int SSCR0_SSE ;
 int SSTO ;
 int dev_err (int *,char*,char const*) ;
 int pxa25x_ssp_comp (struct driver_data*) ;
 int pxa2xx_spi_flush (struct driver_data*) ;
 int pxa2xx_spi_read (struct driver_data*,int ) ;
 int pxa2xx_spi_write (struct driver_data*,int ,int) ;
 int reset_sccr1 (struct driver_data*) ;
 int spi_finalize_current_transfer (TYPE_3__*) ;
 int write_SSSR_CS (struct driver_data*,int ) ;

__attribute__((used)) static void int_error_stop(struct driver_data *drv_data, const char* msg)
{

 write_SSSR_CS(drv_data, drv_data->clear_sr);
 reset_sccr1(drv_data);
 if (!pxa25x_ssp_comp(drv_data))
  pxa2xx_spi_write(drv_data, SSTO, 0);
 pxa2xx_spi_flush(drv_data);
 pxa2xx_spi_write(drv_data, SSCR0,
    pxa2xx_spi_read(drv_data, SSCR0) & ~SSCR0_SSE);

 dev_err(&drv_data->pdev->dev, "%s\n", msg);

 drv_data->controller->cur_msg->status = -EIO;
 spi_finalize_current_transfer(drv_data->controller);
}
