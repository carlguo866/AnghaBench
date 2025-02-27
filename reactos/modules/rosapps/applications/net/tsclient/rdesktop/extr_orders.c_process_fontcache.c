
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int uint16 ;
typedef int STREAM ;
typedef int RDPCLIENT ;
typedef int HGLYPH ;


 int DEBUG (char*) ;
 int cache_put_font (int *,int,int,int,int,int,int,int ) ;
 int in_uint16_le (int ,int) ;
 int in_uint8 (int ,int) ;
 int in_uint8p (int ,int*,int) ;
 int ui_create_glyph (int *,int,int,int*) ;

__attribute__((used)) static void
process_fontcache(RDPCLIENT * This, STREAM s)
{
 HGLYPH bitmap;
 uint8 font, nglyphs;
 uint16 character, offset, baseline, width, height;
 int i, datasize;
 uint8 *data;

 in_uint8(s, font);
 in_uint8(s, nglyphs);

 DEBUG(("FONTCACHE(font=%d,n=%d)\n", font, nglyphs));

 for (i = 0; i < nglyphs; i++)
 {
  in_uint16_le(s, character);
  in_uint16_le(s, offset);
  in_uint16_le(s, baseline);
  in_uint16_le(s, width);
  in_uint16_le(s, height);

  datasize = (height * ((width + 7) / 8) + 3) & ~3;
  in_uint8p(s, data, datasize);

  bitmap = ui_create_glyph(This, width, height, data);
  cache_put_font(This, font, character, offset, baseline, width, height, bitmap);
 }
}
