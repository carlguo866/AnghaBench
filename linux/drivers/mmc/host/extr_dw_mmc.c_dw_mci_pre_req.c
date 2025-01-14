
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmc_request {struct mmc_data* data; } ;
struct mmc_host {int dummy; } ;
struct mmc_data {void* host_cookie; } ;
struct dw_mci_slot {TYPE_1__* host; } ;
struct TYPE_2__ {int use_dma; } ;


 int COOKIE_PRE_MAPPED ;
 void* COOKIE_UNMAPPED ;
 scalar_t__ dw_mci_pre_dma_transfer (TYPE_1__*,struct mmc_data*,int ) ;
 struct dw_mci_slot* mmc_priv (struct mmc_host*) ;

__attribute__((used)) static void dw_mci_pre_req(struct mmc_host *mmc,
      struct mmc_request *mrq)
{
 struct dw_mci_slot *slot = mmc_priv(mmc);
 struct mmc_data *data = mrq->data;

 if (!slot->host->use_dma || !data)
  return;


 data->host_cookie = COOKIE_UNMAPPED;

 if (dw_mci_pre_dma_transfer(slot->host, mrq->data,
    COOKIE_PRE_MAPPED) < 0)
  data->host_cookie = COOKIE_UNMAPPED;
}
