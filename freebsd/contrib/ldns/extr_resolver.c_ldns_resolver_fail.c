
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int _fail; } ;
typedef TYPE_1__ ldns_resolver ;



bool
ldns_resolver_fail(const ldns_resolver *r)
{
 return r->_fail;
}
