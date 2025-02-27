
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {float height; } ;
typedef TYPE_3__ glyphInfo_t ;
struct TYPE_11__ {float glyphScale; TYPE_3__* glyphs; } ;
typedef TYPE_4__ fontInfo_t ;
struct TYPE_8__ {TYPE_4__ bigFont; TYPE_4__ smallFont; TYPE_4__ textFont; } ;
struct TYPE_9__ {TYPE_1__ Assets; } ;
struct TYPE_14__ {TYPE_2__ uiDC; } ;
struct TYPE_13__ {float value; } ;
struct TYPE_12__ {float value; } ;


 scalar_t__ Q_IsColorString (char const*) ;
 int strlen (char const*) ;
 TYPE_7__ uiInfo ;
 TYPE_6__ ui_bigFont ;
 TYPE_5__ ui_smallFont ;

int Text_Height(const char *text, float scale, int limit) {
  int len, count;
 float max;
 glyphInfo_t *glyph;
 float useScale;
 const char *s = text;
 fontInfo_t *font = &uiInfo.uiDC.Assets.textFont;
 if (scale <= ui_smallFont.value) {
  font = &uiInfo.uiDC.Assets.smallFont;
 } else if (scale >= ui_bigFont.value) {
  font = &uiInfo.uiDC.Assets.bigFont;
 }
 useScale = scale * font->glyphScale;
  max = 0;
  if (text) {
    len = strlen(text);
  if (limit > 0 && len > limit) {
   len = limit;
  }
  count = 0;
  while (s && *s && count < len) {
   if ( Q_IsColorString(s) ) {
    s += 2;
    continue;
   } else {
    glyph = &font->glyphs[(int)*s];
       if (max < glyph->height) {
        max = glyph->height;
     }
    s++;
    count++;
   }
    }
  }
  return max * useScale;
}
