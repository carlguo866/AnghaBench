
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int length; int base; } ;
typedef TYPE_1__ isc_region_t ;


 int REQUIRE (int ) ;
 int memcmp (int ,int ,unsigned int) ;

int
isc_region_compare(isc_region_t *r1, isc_region_t *r2) {
 unsigned int l;
 int result;

 REQUIRE(r1 != ((void*)0));
 REQUIRE(r2 != ((void*)0));

 l = (r1->length < r2->length) ? r1->length : r2->length;

 if ((result = memcmp(r1->base, r2->base, l)) != 0)
  return ((result < 0) ? -1 : 1);
 else
  return ((r1->length == r2->length) ? 0 :
   (r1->length < r2->length) ? -1 : 1);
}
