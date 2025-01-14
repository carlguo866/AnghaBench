
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* settings; } ;
struct TYPE_4__ {int hideKernelThreads; } ;
typedef TYPE_2__ State ;
typedef int Htop_Reaction ;


 int HTOP_RECALCULATE ;
 int HTOP_SAVE_SETTINGS ;

__attribute__((used)) static Htop_Reaction actionToggleKernelThreads(State* st) {
   st->settings->hideKernelThreads = !st->settings->hideKernelThreads;
   return HTOP_RECALCULATE | HTOP_SAVE_SETTINGS;
}
