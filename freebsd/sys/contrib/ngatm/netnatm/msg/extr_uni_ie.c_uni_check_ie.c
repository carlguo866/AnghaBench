
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int coding; } ;
union uni_ieall {TYPE_1__ h; } ;
struct unicx {int dummy; } ;
struct iedecl {int (* check ) (union uni_ieall*,struct unicx*) ;} ;
typedef enum uni_ietype { ____Placeholder_uni_ietype } uni_ietype ;


 struct iedecl* GET_IEDECL (int,int ) ;
 int stub1 (union uni_ieall*,struct unicx*) ;

int
uni_check_ie(enum uni_ietype code, union uni_ieall *ie, struct unicx *cx)
{
 const struct iedecl *iedecl = GET_IEDECL(code, ie->h.coding);

 if (iedecl != ((void*)0))
  return (iedecl->check(ie, cx));
 else
  return (-1);
}
