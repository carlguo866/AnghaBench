
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
long
rtl819x_signal_scale_mapping(
 long currsig
 )
{
 long retsig;


 if(currsig >= 61 && currsig <= 100)
 {
  retsig = 90 + ((currsig - 60) / 4);
 }
 else if(currsig >= 41 && currsig <= 60)
 {
  retsig = 78 + ((currsig - 40) / 2);
 }
 else if(currsig >= 31 && currsig <= 40)
 {
  retsig = 66 + (currsig - 30);
 }
 else if(currsig >= 21 && currsig <= 30)
 {
  retsig = 54 + (currsig - 20);
 }
 else if(currsig >= 5 && currsig <= 20)
 {
  retsig = 42 + (((currsig - 5) * 2) / 3);
 }
 else if(currsig == 4)
 {
  retsig = 36;
 }
 else if(currsig == 3)
 {
  retsig = 27;
 }
 else if(currsig == 2)
 {
  retsig = 18;
 }
 else if(currsig == 1)
 {
  retsig = 9;
 }
 else
 {
  retsig = currsig;
 }

 return retsig;
}
