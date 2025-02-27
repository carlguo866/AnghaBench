
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct MPT3SAS_ADAPTER {int (* build_zero_len_sge_mpi ) (struct MPT3SAS_ADAPTER*,int *) ;} ;
struct TYPE_5__ {int PageNumber; int PageVersion; int PageType; } ;
struct TYPE_6__ {int Action; int PageAddress; int PageBufferSGE; TYPE_1__ Header; int ExtPageType; int Function; } ;
typedef int Mpi2ExpanderPage1_t ;
typedef TYPE_2__ Mpi2ConfigRequest_t ;
typedef int Mpi2ConfigReply_t ;


 int MPI2_CONFIG_ACTION_PAGE_HEADER ;
 int MPI2_CONFIG_ACTION_PAGE_READ_CURRENT ;
 int MPI2_CONFIG_EXTPAGETYPE_SAS_EXPANDER ;
 int MPI2_CONFIG_PAGETYPE_EXTENDED ;
 int MPI2_FUNCTION_CONFIG ;
 int MPI2_SASEXPANDER1_PAGEVERSION ;
 int MPI2_SAS_EXPAND_PGAD_FORM_HNDL_PHY_NUM ;
 int MPI2_SAS_EXPAND_PGAD_PHYNUM_SHIFT ;
 int MPT3_CONFIG_PAGE_DEFAULT_TIMEOUT ;
 int _config_request (struct MPT3SAS_ADAPTER*,TYPE_2__*,int *,int ,int *,int) ;
 int cpu_to_le32 (int) ;
 int memset (TYPE_2__*,int ,int) ;
 int stub1 (struct MPT3SAS_ADAPTER*,int *) ;

int
mpt3sas_config_get_expander_pg1(struct MPT3SAS_ADAPTER *ioc, Mpi2ConfigReply_t
 *mpi_reply, Mpi2ExpanderPage1_t *config_page, u32 phy_number,
 u16 handle)
{
 Mpi2ConfigRequest_t mpi_request;
 int r;

 memset(&mpi_request, 0, sizeof(Mpi2ConfigRequest_t));
 mpi_request.Function = MPI2_FUNCTION_CONFIG;
 mpi_request.Action = MPI2_CONFIG_ACTION_PAGE_HEADER;
 mpi_request.Header.PageType = MPI2_CONFIG_PAGETYPE_EXTENDED;
 mpi_request.ExtPageType = MPI2_CONFIG_EXTPAGETYPE_SAS_EXPANDER;
 mpi_request.Header.PageNumber = 1;
 mpi_request.Header.PageVersion = MPI2_SASEXPANDER1_PAGEVERSION;
 ioc->build_zero_len_sge_mpi(ioc, &mpi_request.PageBufferSGE);
 r = _config_request(ioc, &mpi_request, mpi_reply,
     MPT3_CONFIG_PAGE_DEFAULT_TIMEOUT, ((void*)0), 0);
 if (r)
  goto out;

 mpi_request.PageAddress =
     cpu_to_le32(MPI2_SAS_EXPAND_PGAD_FORM_HNDL_PHY_NUM |
     (phy_number << MPI2_SAS_EXPAND_PGAD_PHYNUM_SHIFT) | handle);
 mpi_request.Action = MPI2_CONFIG_ACTION_PAGE_READ_CURRENT;
 r = _config_request(ioc, &mpi_request, mpi_reply,
     MPT3_CONFIG_PAGE_DEFAULT_TIMEOUT, config_page,
     sizeof(*config_page));
 out:
 return r;
}
