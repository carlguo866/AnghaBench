
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct scatterlist {int dummy; } ;
struct mmc_test_card {TYPE_1__* card; } ;
struct mmc_request {struct mmc_command* stop; struct mmc_data* data; struct mmc_command* cmd; } ;
struct mmc_data {int error; } ;
struct mmc_command {int error; } ;
struct TYPE_2__ {int host; } ;


 int mmc_test_prepare_mrq (struct mmc_test_card*,struct mmc_request*,struct scatterlist*,int,unsigned int,int,unsigned int,int) ;
 int mmc_test_wait_busy (struct mmc_test_card*) ;
 int mmc_wait_for_req (int ,struct mmc_request*) ;
 int sg_init_one (struct scatterlist*,int *,unsigned int) ;

__attribute__((used)) static int mmc_test_buffer_transfer(struct mmc_test_card *test,
 u8 *buffer, unsigned addr, unsigned blksz, int write)
{
 struct mmc_request mrq = {};
 struct mmc_command cmd = {};
 struct mmc_command stop = {};
 struct mmc_data data = {};

 struct scatterlist sg;

 mrq.cmd = &cmd;
 mrq.data = &data;
 mrq.stop = &stop;

 sg_init_one(&sg, buffer, blksz);

 mmc_test_prepare_mrq(test, &mrq, &sg, 1, addr, 1, blksz, write);

 mmc_wait_for_req(test->card->host, &mrq);

 if (cmd.error)
  return cmd.error;
 if (data.error)
  return data.error;

 return mmc_test_wait_busy(test);
}
