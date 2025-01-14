
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snmp_toolinfo {int dummy; } ;
struct snmp_object {int val; } ;
typedef int int32_t ;


 scalar_t__ ISSET_NUMERIC (struct snmp_toolinfo*) ;
 scalar_t__ parse_pair_numoid_val (char*,int *) ;
 scalar_t__ parse_pair_stroid_val (struct snmp_toolinfo*,struct snmp_object*,char*) ;

__attribute__((used)) static int32_t
snmpset_parse_oid(struct snmp_toolinfo *snmptoolctx,
    struct snmp_object *obj, char *argv)
{
 if (argv == ((void*)0))
  return (-1);

 if (ISSET_NUMERIC(snmptoolctx)) {
  if (parse_pair_numoid_val(argv, &(obj->val)) < 0)
   return (-1);
 } else {
  if (parse_pair_stroid_val(snmptoolctx, obj, argv) < 0)
   return (-1);
 }

 return (1);
}
