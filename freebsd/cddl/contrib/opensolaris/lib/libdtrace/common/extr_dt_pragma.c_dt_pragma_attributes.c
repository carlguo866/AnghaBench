
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_17__ {scalar_t__ dt_gen; TYPE_3__* dt_globals; } ;
typedef TYPE_4__ dtrace_hdl_t ;
typedef int dtrace_attribute_t ;
struct TYPE_14__ {int dtpa_args; int dtpa_name; int dtpa_func; int dtpa_mod; int dtpa_provider; } ;
struct TYPE_15__ {TYPE_1__ dtvd_attr; } ;
struct TYPE_18__ {TYPE_2__ pv_desc; } ;
typedef TYPE_5__ dt_provider_t ;
struct TYPE_19__ {scalar_t__ dn_kind; char* dn_string; struct TYPE_19__* dn_list; } ;
typedef TYPE_6__ dt_node_t ;
struct TYPE_20__ {scalar_t__ di_gen; int di_attr; } ;
typedef TYPE_7__ dt_ident_t ;
struct TYPE_21__ {int pcb_jmpbuf; int * pcb_pragmas; int pcb_globals; TYPE_4__* pcb_hdl; } ;
struct TYPE_16__ {int * dh_defer; } ;


 int DT_IDENT_PRAGAT ;
 scalar_t__ DT_NODE_IDENT ;
 int D_PRAGMA_INVAL ;
 int D_PRAGMA_MALFORM ;
 int D_PRAGMA_SCOPE ;
 int EDT_NOMEM ;
 int * dt_idhash_create (char*,int *,int ,int ) ;
 TYPE_7__* dt_idhash_insert (int *,char const*,int ,int ,int ,int ,int ,int *,void*,scalar_t__) ;
 int dt_idops_thaw ;
 TYPE_7__* dt_idstack_lookup (int *,char const*) ;
 int dt_pragma_apply ;
 TYPE_5__* dt_provider_lookup (TYPE_4__*,char const*) ;
 int dtrace_str2attr (char*,int *) ;
 int longjmp (int ,int ) ;
 scalar_t__ strcmp (char const*,char*) ;
 int xyerror (int ,char*,char const*,...) ;
 TYPE_8__* yypcb ;

__attribute__((used)) static void
dt_pragma_attributes(const char *prname, dt_node_t *dnp)
{
 dtrace_hdl_t *dtp = yypcb->pcb_hdl;
 dtrace_attribute_t attr, *a;
 dt_provider_t *pvp;
 const char *name, *part;
 dt_ident_t *idp;

 if (dnp == ((void*)0) || dnp->dn_kind != DT_NODE_IDENT ||
     dnp->dn_list == ((void*)0) || dnp->dn_list->dn_kind != DT_NODE_IDENT) {
  xyerror(D_PRAGMA_MALFORM, "malformed #pragma %s "
      "<attributes> <ident>\n", prname);
 }

 if (dtrace_str2attr(dnp->dn_string, &attr) == -1) {
  xyerror(D_PRAGMA_INVAL, "invalid attributes "
      "specified by #pragma %s\n", prname);
 }

 dnp = dnp->dn_list;
 name = dnp->dn_string;

 if (strcmp(name, "provider") == 0) {
  dnp = dnp->dn_list;
  name = dnp->dn_string;

  dnp = dnp->dn_list;
  part = dnp->dn_string;

  if ((pvp = dt_provider_lookup(dtp, name)) != ((void*)0)) {
   if (strcmp(part, "provider") == 0) {
    a = &pvp->pv_desc.dtvd_attr.dtpa_provider;
   } else if (strcmp(part, "module") == 0) {
    a = &pvp->pv_desc.dtvd_attr.dtpa_mod;
   } else if (strcmp(part, "function") == 0) {
    a = &pvp->pv_desc.dtvd_attr.dtpa_func;
   } else if (strcmp(part, "name") == 0) {
    a = &pvp->pv_desc.dtvd_attr.dtpa_name;
   } else if (strcmp(part, "args") == 0) {
    a = &pvp->pv_desc.dtvd_attr.dtpa_args;
   } else {
    xyerror(D_PRAGMA_INVAL, "invalid component "
        "\"%s\" in attribute #pragma "
        "for provider %s\n", name, part);
   }

   *a = attr;
   return;
  }

 } else if ((idp = dt_idstack_lookup(
     &yypcb->pcb_globals, name)) != ((void*)0)) {

  if (idp->di_gen != dtp->dt_gen) {
   xyerror(D_PRAGMA_SCOPE, "#pragma %s cannot modify "
       "entity defined outside program scope\n", prname);
  }

  idp->di_attr = attr;
  return;
 }

 if (yypcb->pcb_pragmas == ((void*)0) && (yypcb->pcb_pragmas =
     dt_idhash_create("pragma", ((void*)0), 0, 0)) == ((void*)0))
  longjmp(yypcb->pcb_jmpbuf, EDT_NOMEM);

 idp = dt_idhash_insert(yypcb->pcb_pragmas, name, DT_IDENT_PRAGAT, 0, 0,
     attr, 0, &dt_idops_thaw, (void *)prname, dtp->dt_gen);

 if (idp == ((void*)0))
  longjmp(yypcb->pcb_jmpbuf, EDT_NOMEM);

 if (dtp->dt_globals->dh_defer == ((void*)0))
  dtp->dt_globals->dh_defer = &dt_pragma_apply;
}
