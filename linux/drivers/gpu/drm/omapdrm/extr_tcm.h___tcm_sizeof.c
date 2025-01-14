
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_5__ {int x; int y; } ;
struct TYPE_4__ {int x; int y; } ;
struct tcm_area {TYPE_3__* tcm; TYPE_2__ p0; TYPE_1__ p1; scalar_t__ is2d; } ;
struct TYPE_6__ {int width; } ;


 int __tcm_area_height (struct tcm_area*) ;
 int __tcm_area_width (struct tcm_area*) ;

__attribute__((used)) static inline u16 __tcm_sizeof(struct tcm_area *area)
{
 return area->is2d ?
  __tcm_area_width(area) * __tcm_area_height(area) :
  (area->p1.x - area->p0.x + 1) + (area->p1.y - area->p0.y) *
       area->tcm->width;
}
