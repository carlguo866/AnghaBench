
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmci_host {scalar_t__ sg_off; int sg_ptr; int sg_len; } ;
struct mmc_data {int sg; int sg_len; } ;



__attribute__((used)) static inline void mmci_init_sg(struct mmci_host *host, struct mmc_data *data)
{



 host->sg_len = data->sg_len;
 host->sg_ptr = data->sg;
 host->sg_off = 0;
}
