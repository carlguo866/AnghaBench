
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int JSON_OBJECT ;


 int JsonNewNull () ;
 int JsonSet (int *,char*,int ) ;

UINT JsonSetNull(JSON_OBJECT *object, char *name) {
 return JsonSet(object, name, JsonNewNull());
}
