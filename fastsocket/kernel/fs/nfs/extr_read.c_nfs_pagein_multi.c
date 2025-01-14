
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct page {int dummy; } ;
struct TYPE_3__ {struct page** pagevec; } ;
struct nfs_read_data {int list; TYPE_1__ pages; } ;
struct nfs_pgio_header {int pages; int rpc_list; struct nfs_page* req; } ;
struct nfs_pageio_descriptor {size_t pg_count; int * pg_rpc_callops; int pg_inode; } ;
struct nfs_page {struct page* wb_page; } ;
struct TYPE_4__ {size_t rsize; } ;


 int ENOMEM ;
 TYPE_2__* NFS_SERVER (int ) ;
 int list_add (int *,int *) ;
 size_t min (size_t,size_t) ;
 int nfs_list_add_request (struct nfs_page*,int *) ;
 int nfs_list_remove_request (struct nfs_page*) ;
 int nfs_pagein_error (struct nfs_pageio_descriptor*,struct nfs_pgio_header*) ;
 int nfs_read_common_ops ;
 int nfs_read_rpcsetup (struct nfs_read_data*,size_t,unsigned int) ;
 struct nfs_read_data* nfs_readdata_alloc (struct nfs_pgio_header*,int) ;

__attribute__((used)) static int nfs_pagein_multi(struct nfs_pageio_descriptor *desc,
       struct nfs_pgio_header *hdr)
{
 struct nfs_page *req = hdr->req;
 struct page *page = req->wb_page;
 struct nfs_read_data *data;
 size_t rsize = NFS_SERVER(desc->pg_inode)->rsize, nbytes;
 unsigned int offset;

 offset = 0;
 nbytes = desc->pg_count;
 do {
  size_t len = min(nbytes,rsize);

  data = nfs_readdata_alloc(hdr, 1);
  if (!data) {
   nfs_pagein_error(desc, hdr);
   return -ENOMEM;
  }
  data->pages.pagevec[0] = page;
  nfs_read_rpcsetup(data, len, offset);
  list_add(&data->list, &hdr->rpc_list);
  nbytes -= len;
  offset += len;
 } while (nbytes != 0);

 nfs_list_remove_request(req);
 nfs_list_add_request(req, &hdr->pages);
 desc->pg_rpc_callops = &nfs_read_common_ops;
 return 0;
}
