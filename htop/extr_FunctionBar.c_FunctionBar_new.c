
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int staticData; char** keys; int* events; int size; void** functions; } ;
typedef TYPE_1__ FunctionBar ;


 int* FunctionBar_FEvents ;
 scalar_t__ FunctionBar_FKeys ;
 char** FunctionBar_FLabels ;
 void* xCalloc (int,int) ;
 void* xStrdup (char const* const) ;

FunctionBar* FunctionBar_new(const char* const* functions, const char* const* keys, const int* events) {
   FunctionBar* this = xCalloc(1, sizeof(FunctionBar));
   this->functions = xCalloc(16, sizeof(char*));
   if (!functions) {
      functions = FunctionBar_FLabels;
   }
   for (int i = 0; i < 15 && functions[i]; i++) {
      this->functions[i] = xStrdup(functions[i]);
   }
   if (keys && events) {
      this->staticData = 0;
      this->keys = xCalloc(15, sizeof(char*));
      this->events = xCalloc(15, sizeof(int));
      int i = 0;
      while (i < 15 && functions[i]) {
         this->keys[i] = xStrdup(keys[i]);
         this->events[i] = events[i];
         i++;
      }
      this->size = i;
   } else {
      this->staticData = 1;
      this->keys = (char**) FunctionBar_FKeys;
      this->events = FunctionBar_FEvents;
      this->size = 10;
   }
   return this;
}
