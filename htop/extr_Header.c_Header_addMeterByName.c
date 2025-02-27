
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int Vector ;
struct TYPE_11__ {int pl; int ** columns; } ;
struct TYPE_10__ {int mode; } ;
struct TYPE_9__ {int name; } ;
typedef int MeterModeId ;
typedef TYPE_1__ MeterClass ;
typedef TYPE_2__ Meter ;
typedef TYPE_3__ Header ;


 TYPE_2__* Meter_new (int ,int,TYPE_1__*) ;
 TYPE_1__** Platform_meterTypes ;
 scalar_t__ String_eq (char*,int ) ;
 int TEXT_METERMODE ;
 int Vector_add (int *,TYPE_2__*) ;
 int sscanf (char*,char*,int*) ;
 char* strchr (char*,char) ;

MeterModeId Header_addMeterByName(Header* this, char* name, int column) {
   Vector* meters = this->columns[column];

   char* paren = strchr(name, '(');
   int param = 0;
   if (paren) {
      int ok = sscanf(paren, "(%10d)", &param);
      if (!ok) param = 0;
      *paren = '\0';
   }
   MeterModeId mode = TEXT_METERMODE;
   for (MeterClass** type = Platform_meterTypes; *type; type++) {
      if (String_eq(name, (*type)->name)) {
         Meter* meter = Meter_new(this->pl, param, *type);
         Vector_add(meters, meter);
         mode = meter->mode;
         break;
      }
   }
   return mode;
}
