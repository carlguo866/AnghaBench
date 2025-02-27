
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int data_len; } ;
struct ibmpex_bmc_data {int* tx_msg_data; int rx_msg_len; int bmc_device; scalar_t__ rx_result; int read_complete; TYPE_1__ tx_message; } ;


 int ENOENT ;
 int PEX_GET_SENSOR_DATA ;
 int dev_err (int ,char*,int) ;
 int ibmpex_send_message (struct ibmpex_bmc_data*) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int ibmpex_query_sensor_data(struct ibmpex_bmc_data *data, int sensor)
{
 data->tx_msg_data[0] = PEX_GET_SENSOR_DATA;
 data->tx_msg_data[1] = sensor;
 data->tx_message.data_len = 2;
 ibmpex_send_message(data);

 wait_for_completion(&data->read_complete);

 if (data->rx_result || data->rx_msg_len < 26) {
  dev_err(data->bmc_device, "Error reading sensor %d.\n",
   sensor);
  return -ENOENT;
 }

 return 0;
}
