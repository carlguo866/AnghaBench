
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int orig_ttl; } ;
struct TYPE_6__ {TYPE_1__ dnssec; } ;
struct TYPE_7__ {TYPE_2__ _extra; } ;
typedef TYPE_3__ ldns_key ;



void
ldns_key_set_origttl(ldns_key *k, uint32_t t)
{
 k->_extra.dnssec.orig_ttl = t;
}
