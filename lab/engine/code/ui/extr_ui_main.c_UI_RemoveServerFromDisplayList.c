
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int numDisplayServers; int* displayServers; } ;
struct TYPE_4__ {TYPE_1__ serverStatus; } ;


 TYPE_2__ uiInfo ;

__attribute__((used)) static void UI_RemoveServerFromDisplayList(int num) {
 int i, j;

 for (i = 0; i < uiInfo.serverStatus.numDisplayServers; i++) {
  if (uiInfo.serverStatus.displayServers[i] == num) {
   uiInfo.serverStatus.numDisplayServers--;
   for (j = i; j < uiInfo.serverStatus.numDisplayServers; j++) {
    uiInfo.serverStatus.displayServers[j] = uiInfo.serverStatus.displayServers[j+1];
   }
   return;
  }
 }
}
