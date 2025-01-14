
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ssp_msg {int dummy; } ;
struct ssp_data {TYPE_1__* sensorhub_info; } ;
struct TYPE_2__ {int mag_length; int mag_table; } ;


 int ENOMEM ;
 int SSP_AP2HUB_WRITE ;
 int SSP_MSG2SSP_AP_SET_MAGNETIC_STATIC_MATRIX ;
 int ssp_clean_msg (struct ssp_msg*) ;
 struct ssp_msg* ssp_create_msg (int ,int ,int ,int ) ;
 int ssp_fill_buffer (struct ssp_msg*,int ,int ,int ) ;
 int ssp_spi_sync (struct ssp_data*,struct ssp_msg*,int) ;

int ssp_set_magnetic_matrix(struct ssp_data *data)
{
 int ret;
 struct ssp_msg *msg;

 msg = ssp_create_msg(SSP_MSG2SSP_AP_SET_MAGNETIC_STATIC_MATRIX,
        data->sensorhub_info->mag_length, SSP_AP2HUB_WRITE,
        0);
 if (!msg)
  return -ENOMEM;

 ssp_fill_buffer(msg, 0, data->sensorhub_info->mag_table,
   data->sensorhub_info->mag_length);

 ret = ssp_spi_sync(data, msg, 1000);
 ssp_clean_msg(msg);

 return ret;
}
