
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pmap_invl_gen {scalar_t__ gen; } ;
struct TYPE_2__ {struct pmap_invl_gen md_invl_gen; } ;
struct thread {TYPE_1__ td_md; } ;



__attribute__((used)) static void
pmap_thread_init_invl_gen_l(struct thread *td)
{
 struct pmap_invl_gen *invl_gen;

 invl_gen = &td->td_md.md_invl_gen;
 invl_gen->gen = 0;
}
