
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct Mpi2ManufacturingPage11_t {int dummy; } ;
struct MPT3SAS_ADAPTER {int (* build_zero_len_sge_mpi ) (struct MPT3SAS_ADAPTER*,int *) ;} ;
struct TYPE_5__ {int PageNumber; int PageVersion; int PageType; } ;
struct TYPE_6__ {int Action; int PageBufferSGE; TYPE_1__ Header; int Function; } ;
typedef TYPE_2__ Mpi2ConfigRequest_t ;
typedef int Mpi2ConfigReply_t ;


 int MPI2_CONFIG_ACTION_PAGE_HEADER ;
 int MPI2_CONFIG_ACTION_PAGE_WRITE_CURRENT ;
 int MPI2_CONFIG_ACTION_PAGE_WRITE_NVRAM ;
 int MPI2_CONFIG_PAGETYPE_MANUFACTURING ;
 int MPI2_FUNCTION_CONFIG ;
 int MPI2_MANUFACTURING0_PAGEVERSION ;
 int MPT3_CONFIG_PAGE_DEFAULT_TIMEOUT ;
 int _config_request (struct MPT3SAS_ADAPTER*,TYPE_2__*,int *,int ,struct Mpi2ManufacturingPage11_t*,int) ;
 int memset (TYPE_2__*,int ,int) ;
 int stub1 (struct MPT3SAS_ADAPTER*,int *) ;

int
mpt3sas_config_set_manufacturing_pg11(struct MPT3SAS_ADAPTER *ioc,
 Mpi2ConfigReply_t *mpi_reply,
 struct Mpi2ManufacturingPage11_t *config_page)
{
 Mpi2ConfigRequest_t mpi_request;
 int r;

 memset(&mpi_request, 0, sizeof(Mpi2ConfigRequest_t));
 mpi_request.Function = MPI2_FUNCTION_CONFIG;
 mpi_request.Action = MPI2_CONFIG_ACTION_PAGE_HEADER;
 mpi_request.Header.PageType = MPI2_CONFIG_PAGETYPE_MANUFACTURING;
 mpi_request.Header.PageNumber = 11;
 mpi_request.Header.PageVersion = MPI2_MANUFACTURING0_PAGEVERSION;
 ioc->build_zero_len_sge_mpi(ioc, &mpi_request.PageBufferSGE);
 r = _config_request(ioc, &mpi_request, mpi_reply,
     MPT3_CONFIG_PAGE_DEFAULT_TIMEOUT, ((void*)0), 0);
 if (r)
  goto out;

 mpi_request.Action = MPI2_CONFIG_ACTION_PAGE_WRITE_CURRENT;
 r = _config_request(ioc, &mpi_request, mpi_reply,
     MPT3_CONFIG_PAGE_DEFAULT_TIMEOUT, config_page,
     sizeof(*config_page));
 mpi_request.Action = MPI2_CONFIG_ACTION_PAGE_WRITE_NVRAM;
 r = _config_request(ioc, &mpi_request, mpi_reply,
     MPT3_CONFIG_PAGE_DEFAULT_TIMEOUT, config_page,
     sizeof(*config_page));
 out:
 return r;
}
