
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smcd_cdc_msg {int dummy; } ;
struct smc_link_group {int dummy; } ;
struct smc_buf_desc {int len; void* cpu_addr; int pages; } ;


 int EAGAIN ;
 int ENOMEM ;
 struct smc_buf_desc* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 scalar_t__ SMCD_DMBE_SIZES ;
 int __GFP_NOMEMALLOC ;
 int __GFP_NORETRY ;
 int __GFP_NOWARN ;
 int kfree (struct smc_buf_desc*) ;
 void* kzalloc (int,int) ;
 scalar_t__ smc_compress_bufsize (int) ;
 int smc_ism_register_dmb (struct smc_link_group*,int,struct smc_buf_desc*) ;
 int virt_to_page (void*) ;

__attribute__((used)) static struct smc_buf_desc *smcd_new_buf_create(struct smc_link_group *lgr,
      bool is_dmb, int bufsize)
{
 struct smc_buf_desc *buf_desc;
 int rc;

 if (smc_compress_bufsize(bufsize) > SMCD_DMBE_SIZES)
  return ERR_PTR(-EAGAIN);


 buf_desc = kzalloc(sizeof(*buf_desc), GFP_KERNEL);
 if (!buf_desc)
  return ERR_PTR(-ENOMEM);
 if (is_dmb) {
  rc = smc_ism_register_dmb(lgr, bufsize, buf_desc);
  if (rc) {
   kfree(buf_desc);
   return ERR_PTR(-EAGAIN);
  }
  buf_desc->pages = virt_to_page(buf_desc->cpu_addr);

  buf_desc->len = bufsize - sizeof(struct smcd_cdc_msg);
 } else {
  buf_desc->cpu_addr = kzalloc(bufsize, GFP_KERNEL |
          __GFP_NOWARN | __GFP_NORETRY |
          __GFP_NOMEMALLOC);
  if (!buf_desc->cpu_addr) {
   kfree(buf_desc);
   return ERR_PTR(-EAGAIN);
  }
  buf_desc->len = bufsize;
 }
 return buf_desc;
}
