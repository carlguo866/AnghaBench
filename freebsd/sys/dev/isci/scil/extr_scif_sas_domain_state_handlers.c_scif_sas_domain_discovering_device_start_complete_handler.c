
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SCI_STATUS ;
typedef int SCI_BASE_REMOTE_DEVICE_T ;
typedef int SCI_BASE_DOMAIN_T ;
typedef int SCIF_SAS_DOMAIN_T ;


 int SCIF_LOG_OBJECT_DOMAIN ;
 int SCIF_LOG_OBJECT_DOMAIN_DISCOVERY ;
 int SCIF_LOG_TRACE (int ) ;
 int SCI_SUCCESS ;
 int sci_base_object_get_logger (int *) ;
 int scif_sas_domain_continue_discover (int *) ;

__attribute__((used)) static
SCI_STATUS scif_sas_domain_discovering_device_start_complete_handler(
   SCI_BASE_DOMAIN_T * domain,
   SCI_BASE_REMOTE_DEVICE_T * remote_device
)
{
   SCIF_SAS_DOMAIN_T * fw_domain = (SCIF_SAS_DOMAIN_T *)domain;

   SCIF_LOG_TRACE((
      sci_base_object_get_logger(domain),
      SCIF_LOG_OBJECT_DOMAIN | SCIF_LOG_OBJECT_DOMAIN_DISCOVERY,
      "scif_sas_domain_discovering_device_start_complete_handler(0x%x) enter\n",
      domain, remote_device
   ));


   scif_sas_domain_continue_discover(fw_domain);

   return SCI_SUCCESS;
}
