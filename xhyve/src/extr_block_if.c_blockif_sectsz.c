
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blockif_ctxt {int bc_magic; int bc_sectsz; } ;


 scalar_t__ BLOCKIF_SIG ;
 int assert (int) ;

int
blockif_sectsz(struct blockif_ctxt *bc)
{
 assert(bc->bc_magic == ((int) BLOCKIF_SIG));
 return (bc->bc_sectsz);
}
