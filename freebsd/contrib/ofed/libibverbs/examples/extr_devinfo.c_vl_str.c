
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static const char *vl_str(uint8_t vl_num)
{
 switch (vl_num) {
 case 1: return "1";
 case 2: return "2";
 case 3: return "4";
 case 4: return "8";
 case 5: return "15";
 default: return "invalid value";
 }
}
