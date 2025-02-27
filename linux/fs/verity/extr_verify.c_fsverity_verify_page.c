
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct page {TYPE_1__* mapping; } ;
struct inode {struct fsverity_info* i_verity_info; } ;
struct TYPE_6__ {TYPE_2__* hash_alg; } ;
struct fsverity_info {TYPE_3__ tree_params; } ;
struct ahash_request {int dummy; } ;
struct TYPE_5__ {int tfm; } ;
struct TYPE_4__ {struct inode* host; } ;


 int GFP_NOFS ;
 struct ahash_request* ahash_request_alloc (int ,int ) ;
 int ahash_request_free (struct ahash_request*) ;
 scalar_t__ unlikely (int) ;
 int verify_page (struct inode*,struct fsverity_info const*,struct ahash_request*,struct page*) ;

bool fsverity_verify_page(struct page *page)
{
 struct inode *inode = page->mapping->host;
 const struct fsverity_info *vi = inode->i_verity_info;
 struct ahash_request *req;
 bool valid;

 req = ahash_request_alloc(vi->tree_params.hash_alg->tfm, GFP_NOFS);
 if (unlikely(!req))
  return 0;

 valid = verify_page(inode, vi, req, page);

 ahash_request_free(req);

 return valid;
}
