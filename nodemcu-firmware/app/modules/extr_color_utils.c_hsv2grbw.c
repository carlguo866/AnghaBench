
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;


 int hsv2grb (int ,int,int) ;
 int min3 (int,int,int) ;

uint32_t hsv2grbw(uint16_t hue, uint8_t sat, uint8_t val) {

  uint32_t grb = hsv2grb(hue, sat, val);

  uint8_t g = ((grb & 0x00FF0000) >> 16);
  uint8_t r = ((grb & 0x0000FF00) >> 8);
  uint8_t b = (grb & 0x000000FF);


  uint8_t w = min3(g, r, b);
  g = g - w;
  r = r - w;
  b = b - w;
  uint32_t grbw = (g << 24) | (r << 16) | (b << 8) | w;

  return grbw;
}
