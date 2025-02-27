
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef double* vec4_t ;
struct TYPE_2__ {int realtime; int charsetProp; int charsetPropGlow; } ;


 int PULSE_DIVISOR ;

 int UI_DROPSHADOW ;
 int UI_DrawProportionalString2 (int,int,char const*,double*,float,int ) ;
 int UI_FORMATMASK ;
 int UI_INVERSE ;

 int UI_PULSE ;
 float UI_ProportionalSizeScale (int) ;
 float UI_ProportionalStringWidth (char const*) ;

 double sin (int) ;
 TYPE_1__ uis ;

void UI_DrawProportionalString( int x, int y, const char* str, int style, vec4_t color ) {
 vec4_t drawcolor;
 int width;
 float sizeScale;

 sizeScale = UI_ProportionalSizeScale( style );

 switch( style & UI_FORMATMASK ) {
  case 130:
   width = UI_ProportionalStringWidth( str ) * sizeScale;
   x -= width / 2;
   break;

  case 128:
   width = UI_ProportionalStringWidth( str ) * sizeScale;
   x -= width;
   break;

  case 129:
  default:
   break;
 }

 if ( style & UI_DROPSHADOW ) {
  drawcolor[0] = drawcolor[1] = drawcolor[2] = 0;
  drawcolor[3] = color[3];
  UI_DrawProportionalString2( x+2, y+2, str, drawcolor, sizeScale, uis.charsetProp );
 }

 if ( style & UI_INVERSE ) {
  drawcolor[0] = color[0] * 0.7;
  drawcolor[1] = color[1] * 0.7;
  drawcolor[2] = color[2] * 0.7;
  drawcolor[3] = color[3];
  UI_DrawProportionalString2( x, y, str, drawcolor, sizeScale, uis.charsetProp );
  return;
 }

 if ( style & UI_PULSE ) {
  drawcolor[0] = color[0] * 0.7;
  drawcolor[1] = color[1] * 0.7;
  drawcolor[2] = color[2] * 0.7;
  drawcolor[3] = color[3];
  UI_DrawProportionalString2( x, y, str, color, sizeScale, uis.charsetProp );

  drawcolor[0] = color[0];
  drawcolor[1] = color[1];
  drawcolor[2] = color[2];
  drawcolor[3] = 0.5 + 0.5 * sin( uis.realtime / PULSE_DIVISOR );
  UI_DrawProportionalString2( x, y, str, drawcolor, sizeScale, uis.charsetPropGlow );
  return;
 }

 UI_DrawProportionalString2( x, y, str, color, sizeScale, uis.charsetProp );
}
