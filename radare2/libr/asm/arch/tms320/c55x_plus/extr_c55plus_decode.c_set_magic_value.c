
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut32 ;
typedef int st32 ;


 int fprintf (int ,char*,int,int) ;
 int stderr ;

void set_magic_value(ut32 *magic_value, st32 hash_code, int *err_code)
{
 switch(hash_code) {
  case 232:
   *magic_value |= 1;
   break;
  case 424:
   *magic_value |= 2;
   break;
  case 236:
   *magic_value |= 4;
   break;
  case 233:
   *magic_value |= 0x10;
   break;
  case 234:
   *magic_value |= 0x20;
   break;
  case 483:
   *magic_value |= 0x40;
   break;
  case 484:
   *magic_value |= 0x80;
   break;
  case 476:
   *magic_value |= 0x100;
   break;
  case 481:
   *magic_value |= 0x200;
   break;
  case 482:
   *magic_value |= 0x400;
   break;
  default:
   fprintf(stderr, "invalid hash code 0x%x for magic value 0x%x\n", hash_code, *magic_value);
   *err_code = -1;
 }
}
