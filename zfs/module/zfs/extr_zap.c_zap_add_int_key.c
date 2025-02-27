
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int objset_t ;
typedef int name ;
typedef int longlong_t ;
typedef int dmu_tx_t ;


 int snprintf (char*,int,char*,int ) ;
 int zap_add (int *,scalar_t__,char*,int,int,scalar_t__*,int *) ;

int
zap_add_int_key(objset_t *os, uint64_t obj,
    uint64_t key, uint64_t value, dmu_tx_t *tx)
{
 char name[20];

 (void) snprintf(name, sizeof (name), "%llx", (longlong_t)key);
 return (zap_add(os, obj, name, 8, 1, &value, tx));
}
