
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned short KEY_ENTER ;
 unsigned short KEY_ESC ;
 unsigned short KEY_LEFT ;
 unsigned short KEY_NUMERIC_0 ;
 unsigned short KEY_NUMERIC_1 ;
 unsigned short KEY_NUMERIC_2 ;
 unsigned short KEY_NUMERIC_3 ;
 unsigned short KEY_NUMERIC_4 ;
 unsigned short KEY_NUMERIC_5 ;
 unsigned short KEY_NUMERIC_6 ;
 unsigned short KEY_NUMERIC_7 ;
 unsigned short KEY_NUMERIC_8 ;
 unsigned short KEY_NUMERIC_9 ;
 unsigned short KEY_NUMERIC_POUND ;
 unsigned short KEY_NUMERIC_STAR ;
 unsigned short KEY_RIGHT ;
 unsigned short special_keymap (int) ;

__attribute__((used)) static unsigned short keymap_usbph01(int scancode)
{
 switch (scancode) {
 case 0x11: return KEY_NUMERIC_0;
 case 0x21: return KEY_NUMERIC_1;
 case 0x41: return KEY_NUMERIC_2;
 case 0x81: return KEY_NUMERIC_3;
 case 0x12: return KEY_NUMERIC_4;
 case 0x22: return KEY_NUMERIC_5;
 case 0x42: return KEY_NUMERIC_6;
 case 0x82: return KEY_NUMERIC_7;
 case 0x14: return KEY_NUMERIC_8;
 case 0x24: return KEY_NUMERIC_9;
 case 0x44: return KEY_NUMERIC_POUND;
 case 0x84: return KEY_NUMERIC_STAR;
 case 0x18: return KEY_ENTER;
 case 0x28: return KEY_ESC;
 case 0x48: return KEY_LEFT;
 case 0x88: return KEY_RIGHT;
 default: return special_keymap(scancode);
 }
}
