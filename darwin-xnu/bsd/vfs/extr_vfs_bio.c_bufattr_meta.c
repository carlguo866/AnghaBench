
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* bufattr_t ;
struct TYPE_3__ {int ba_flags; } ;


 int BA_META ;

int
bufattr_meta(bufattr_t bap) {
 if ( (bap->ba_flags & BA_META) )
  return 1;
 return 0;
}
