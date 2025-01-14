
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {int inode_budget; scalar_t__ dent_budget; scalar_t__ page_budget; } ;
struct ubifs_budget_req {scalar_t__ new_ino_d; scalar_t__ new_dent; scalar_t__ new_page; scalar_t__ new_ino; } ;



__attribute__((used)) static int calc_data_growth(const struct ubifs_info *c,
       const struct ubifs_budget_req *req)
{
 int data_growth;

 data_growth = req->new_ino ? c->inode_budget : 0;
 if (req->new_page)
  data_growth += c->page_budget;
 if (req->new_dent)
  data_growth += c->dent_budget;
 data_growth += req->new_ino_d;
 return data_growth;
}
