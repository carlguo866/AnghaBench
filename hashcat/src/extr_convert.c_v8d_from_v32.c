
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int d; } ;
struct TYPE_4__ {TYPE_1__ v8; int v32; } ;
typedef TYPE_2__ vconv32_t ;
typedef int u8 ;
typedef int u32 ;



u8 v8d_from_v32 (const u32 v32)
{
  vconv32_t v;

  v.v32 = v32;

  return v.v8.d;
}
