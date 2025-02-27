
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zfcp_qdio {struct zfcp_adapter* adapter; } ;
struct zfcp_adapter {TYPE_1__* ccw_device; } ;
struct TYPE_2__ {int dev; } ;


 unsigned int QDIO_ERROR_SLSB_STATE ;
 int ZFCP_STATUS_ADAPTER_LINK_UNPLUGGED ;
 int ZFCP_STATUS_COMMON_ERP_FAILED ;
 int dev_warn (int *,char*) ;
 int zfcp_erp_adapter_reopen (struct zfcp_adapter*,int,char*,int *) ;
 int zfcp_erp_adapter_shutdown (struct zfcp_adapter*,int ,char*,int *) ;
 int zfcp_qdio_siosl (struct zfcp_adapter*) ;

__attribute__((used)) static void zfcp_qdio_handler_error(struct zfcp_qdio *qdio, char *id,
        unsigned int qdio_err)
{
 struct zfcp_adapter *adapter = qdio->adapter;

 dev_warn(&adapter->ccw_device->dev, "A QDIO problem occurred\n");

 if (qdio_err & QDIO_ERROR_SLSB_STATE) {
  zfcp_qdio_siosl(adapter);
  zfcp_erp_adapter_shutdown(adapter, 0, id, ((void*)0));
  return;
 }
 zfcp_erp_adapter_reopen(adapter,
    ZFCP_STATUS_ADAPTER_LINK_UNPLUGGED |
    ZFCP_STATUS_COMMON_ERP_FAILED, id, ((void*)0));
}
