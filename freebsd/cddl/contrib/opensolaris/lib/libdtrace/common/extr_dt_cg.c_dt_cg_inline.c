
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int dt_regset_t ;
struct TYPE_10__ {int dn_reg; struct TYPE_10__* dn_list; struct TYPE_10__* dn_args; TYPE_4__* dn_ident; } ;
typedef TYPE_2__ dt_node_t ;
typedef int dt_irlist_t ;
struct TYPE_11__ {int din_argc; TYPE_2__* din_root; TYPE_1__** din_argv; } ;
typedef TYPE_3__ dt_idnode_t ;
struct TYPE_12__ {int di_flags; scalar_t__ di_kind; int * di_ops; TYPE_3__* di_iarg; } ;
typedef TYPE_4__ dt_ident_t ;
struct TYPE_9__ {TYPE_3__* di_iarg; } ;


 scalar_t__ DT_IDENT_ARRAY ;
 int DT_IDFLG_INLINE ;
 int assert (int) ;
 int dt_cg_node (TYPE_2__*,int *,int *) ;
 int dt_cg_typecast (TYPE_2__*,TYPE_2__*,int *,int *) ;
 int dt_idops_inline ;

__attribute__((used)) static void
dt_cg_inline(dt_node_t *dnp, dt_irlist_t *dlp, dt_regset_t *drp)
{
 dt_ident_t *idp = dnp->dn_ident;
 dt_idnode_t *inp = idp->di_iarg;

 dt_idnode_t *pinp;
 dt_node_t *pnp;
 int i;

 assert(idp->di_flags & DT_IDFLG_INLINE);
 assert(idp->di_ops == &dt_idops_inline);

 if (idp->di_kind == DT_IDENT_ARRAY) {
  for (i = 0, pnp = dnp->dn_args;
      pnp != ((void*)0); pnp = pnp->dn_list, i++) {
   if (inp->din_argv[i] != ((void*)0)) {
    pinp = inp->din_argv[i]->di_iarg;
    pinp->din_root = pnp;
   }
  }
 }

 dt_cg_node(inp->din_root, dlp, drp);
 dnp->dn_reg = inp->din_root->dn_reg;
 dt_cg_typecast(inp->din_root, dnp, dlp, drp);

 if (idp->di_kind == DT_IDENT_ARRAY) {
  for (i = 0; i < inp->din_argc; i++) {
   pinp = inp->din_argv[i]->di_iarg;
   pinp->din_root = ((void*)0);
  }
 }
}
