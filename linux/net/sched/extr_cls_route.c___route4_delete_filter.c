
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct route4_filter {int exts; } ;


 int kfree (struct route4_filter*) ;
 int tcf_exts_destroy (int *) ;
 int tcf_exts_put_net (int *) ;

__attribute__((used)) static void __route4_delete_filter(struct route4_filter *f)
{
 tcf_exts_destroy(&f->exts);
 tcf_exts_put_net(&f->exts);
 kfree(f);
}
