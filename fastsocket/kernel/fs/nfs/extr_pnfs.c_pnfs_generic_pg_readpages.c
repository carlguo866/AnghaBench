
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nfs_pgio_header {TYPE_2__* completion_ops; int refcnt; int rpc_list; int lseg; } ;
struct nfs_read_header {struct nfs_pgio_header header; } ;
struct nfs_pageio_descriptor {int * pg_lseg; int pg_list; TYPE_1__* pg_completion_ops; } ;
struct TYPE_4__ {int (* completion ) (struct nfs_pgio_header*) ;} ;
struct TYPE_3__ {int (* error_cleanup ) (int *) ;} ;


 int ENOMEM ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int atomic_inc (int *) ;
 int get_lseg (int *) ;
 int nfs_generic_pagein (struct nfs_pageio_descriptor*,struct nfs_pgio_header*) ;
 int nfs_pgheader_init (struct nfs_pageio_descriptor*,struct nfs_pgio_header*,int ) ;
 struct nfs_read_header* nfs_readhdr_alloc () ;
 int pnfs_do_multiple_reads (struct nfs_pageio_descriptor*,int *) ;
 int pnfs_readhdr_free ;
 int put_lseg (int *) ;
 int stub1 (int *) ;
 int stub2 (struct nfs_pgio_header*) ;

int
pnfs_generic_pg_readpages(struct nfs_pageio_descriptor *desc)
{
 struct nfs_read_header *rhdr;
 struct nfs_pgio_header *hdr;
 int ret;

 rhdr = nfs_readhdr_alloc();
 if (!rhdr) {
  desc->pg_completion_ops->error_cleanup(&desc->pg_list);
  ret = -ENOMEM;
  put_lseg(desc->pg_lseg);
  desc->pg_lseg = ((void*)0);
  return ret;
 }
 hdr = &rhdr->header;
 nfs_pgheader_init(desc, hdr, pnfs_readhdr_free);
 hdr->lseg = get_lseg(desc->pg_lseg);
 atomic_inc(&hdr->refcnt);
 ret = nfs_generic_pagein(desc, hdr);
 if (ret != 0) {
  put_lseg(desc->pg_lseg);
  desc->pg_lseg = ((void*)0);
 } else
  pnfs_do_multiple_reads(desc, &hdr->rpc_list);
 if (atomic_dec_and_test(&hdr->refcnt))
  hdr->completion_ops->completion(hdr);
 return ret;
}
