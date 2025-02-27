
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {TYPE_5__* hdr; } ;
struct TYPE_15__ {int physAddr; int dir; int pageAddr; int action; scalar_t__ timeout; TYPE_1__ cfghdr; } ;
struct TYPE_14__ {int PageLength; int PageNumber; int PageType; scalar_t__ PageVersion; } ;
struct TYPE_12__ {TYPE_2__* fc_port_page1; } ;
struct TYPE_13__ {TYPE_3__ fc_data; } ;
struct TYPE_11__ {int pg_sz; int dma; int data; } ;
typedef TYPE_4__ MPT_ADAPTER ;
typedef TYPE_5__ ConfigPageHeader_t ;
typedef TYPE_6__ CONFIGPARMS ;


 int EINVAL ;
 int ENODEV ;
 int MPI_CONFIG_ACTION_PAGE_HEADER ;
 int MPI_CONFIG_ACTION_PAGE_WRITE_CURRENT ;
 int MPI_CONFIG_PAGETYPE_FC_PORT ;
 int mpt_config (TYPE_4__*,TYPE_6__*) ;

__attribute__((used)) static int
mptfc_WriteFcPortPage1(MPT_ADAPTER *ioc, int portnum)
{
 ConfigPageHeader_t hdr;
 CONFIGPARMS cfg;
 int rc;

 if (portnum > 1)
  return -EINVAL;

 if (!(ioc->fc_data.fc_port_page1[portnum].data))
  return -EINVAL;


 hdr.PageVersion = 0;
 hdr.PageLength = 0;
 hdr.PageNumber = 1;
 hdr.PageType = MPI_CONFIG_PAGETYPE_FC_PORT;
 cfg.cfghdr.hdr = &hdr;
 cfg.physAddr = -1;
 cfg.action = MPI_CONFIG_ACTION_PAGE_HEADER;
 cfg.dir = 0;
 cfg.pageAddr = portnum;
 cfg.timeout = 0;

 if ((rc = mpt_config(ioc, &cfg)) != 0)
  return rc;

 if (hdr.PageLength == 0)
  return -ENODEV;

 if (hdr.PageLength*4 != ioc->fc_data.fc_port_page1[portnum].pg_sz)
  return -EINVAL;

 cfg.physAddr = ioc->fc_data.fc_port_page1[portnum].dma;
 cfg.action = MPI_CONFIG_ACTION_PAGE_WRITE_CURRENT;
 cfg.dir = 1;

 rc = mpt_config(ioc, &cfg);

 return rc;
}
