
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int itemDef_t ;
struct TYPE_2__ {int (* setCVar ) (char*,char const*) ;} ;


 TYPE_1__* DC ;
 scalar_t__ String_Parse (char**,char const**) ;
 int stub1 (char*,char const*) ;

void Script_SetPlayerModel(itemDef_t *item, char **args) {
  const char *name;
  if (String_Parse(args, &name)) {
    DC->setCVar("team_model", name);
  }
}
