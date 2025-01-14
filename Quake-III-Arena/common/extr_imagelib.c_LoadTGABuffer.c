
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int byte ;
struct TYPE_2__ {scalar_t__ id_length; scalar_t__ colormap_type; int image_type; int width; int height; int pixel_size; int attributes; void* y_origin; void* x_origin; int colormap_size; void* colormap_length; void* colormap_index; } ;
typedef TYPE_1__ TargaHeader ;


 int Error (char*) ;
 void* LittleShort (short) ;
 int * malloc (int) ;

void LoadTGABuffer ( byte *buffer, byte **pic, int *width, int *height)
{
 int columns, rows, numPixels;
 byte *pixbuf;
 int row, column;
 byte *buf_p;
 TargaHeader targa_header;
 byte *targa_rgba;

 *pic = ((void*)0);

 buf_p = buffer;

 targa_header.id_length = *buf_p++;
 targa_header.colormap_type = *buf_p++;
 targa_header.image_type = *buf_p++;

 targa_header.colormap_index = LittleShort ( *(short *)buf_p );
 buf_p += 2;
 targa_header.colormap_length = LittleShort ( *(short *)buf_p );
 buf_p += 2;
 targa_header.colormap_size = *buf_p++;
 targa_header.x_origin = LittleShort ( *(short *)buf_p );
 buf_p += 2;
 targa_header.y_origin = LittleShort ( *(short *)buf_p );
 buf_p += 2;
 targa_header.width = LittleShort ( *(short *)buf_p );
 buf_p += 2;
 targa_header.height = LittleShort ( *(short *)buf_p );
 buf_p += 2;
 targa_header.pixel_size = *buf_p++;
 targa_header.attributes = *buf_p++;

 if (targa_header.image_type!=2
  && targa_header.image_type!=10
  && targa_header.image_type != 3 )
 {
  Error("LoadTGA: Only type 2 (RGB), 3 (gray), and 10 (RGB) TGA images supported\n");
 }

 if ( targa_header.colormap_type != 0 )
 {
  Error("LoadTGA: colormaps not supported\n" );
 }

 if ( ( targa_header.pixel_size != 32 && targa_header.pixel_size != 24 ) && targa_header.image_type != 3 )
 {
  Error("LoadTGA: Only 32 or 24 bit images supported (no colormaps)\n");
 }

 columns = targa_header.width;
 rows = targa_header.height;
 numPixels = columns * rows;

 if (width)
  *width = columns;
 if (height)
  *height = rows;

 targa_rgba = malloc (numPixels*4);
 *pic = targa_rgba;

 if (targa_header.id_length != 0)
  buf_p += targa_header.id_length;

 if ( targa_header.image_type==2 || targa_header.image_type == 3 )
 {

  for(row=rows-1; row>=0; row--)
  {
   pixbuf = targa_rgba + row*columns*4;
   for(column=0; column<columns; column++)
   {
    unsigned char red,green,blue,alphabyte;
    switch (targa_header.pixel_size)
    {

    case 8:
     blue = *buf_p++;
     green = blue;
     red = blue;
     *pixbuf++ = red;
     *pixbuf++ = green;
     *pixbuf++ = blue;
     *pixbuf++ = 255;
     break;

    case 24:
     blue = *buf_p++;
     green = *buf_p++;
     red = *buf_p++;
     *pixbuf++ = red;
     *pixbuf++ = green;
     *pixbuf++ = blue;
     *pixbuf++ = 255;
     break;
    case 32:
     blue = *buf_p++;
     green = *buf_p++;
     red = *buf_p++;
     alphabyte = *buf_p++;
     *pixbuf++ = red;
     *pixbuf++ = green;
     *pixbuf++ = blue;
     *pixbuf++ = alphabyte;
     break;
    default:

     break;
    }
   }
  }
 }
 else if (targa_header.image_type==10) {
  unsigned char red,green,blue,alphabyte,packetHeader,packetSize,j;

  red = 0;
  green = 0;
  blue = 0;
  alphabyte = 0xff;

  for(row=rows-1; row>=0; row--) {
   pixbuf = targa_rgba + row*columns*4;
   for(column=0; column<columns; ) {
    packetHeader= *buf_p++;
    packetSize = 1 + (packetHeader & 0x7f);
    if (packetHeader & 0x80) {
     switch (targa_header.pixel_size) {
      case 24:
        blue = *buf_p++;
        green = *buf_p++;
        red = *buf_p++;
        alphabyte = 255;
        break;
      case 32:
        blue = *buf_p++;
        green = *buf_p++;
        red = *buf_p++;
        alphabyte = *buf_p++;
        break;
      default:

       break;
     }

     for(j=0;j<packetSize;j++) {
      *pixbuf++=red;
      *pixbuf++=green;
      *pixbuf++=blue;
      *pixbuf++=alphabyte;
      column++;
      if (column==columns) {
       column=0;
       if (row>0)
        row--;
       else
        goto breakOut;
       pixbuf = targa_rgba + row*columns*4;
      }
     }
    }
    else {
     for(j=0;j<packetSize;j++) {
      switch (targa_header.pixel_size) {
       case 24:
         blue = *buf_p++;
         green = *buf_p++;
         red = *buf_p++;
         *pixbuf++ = red;
         *pixbuf++ = green;
         *pixbuf++ = blue;
         *pixbuf++ = 255;
         break;
       case 32:
         blue = *buf_p++;
         green = *buf_p++;
         red = *buf_p++;
         alphabyte = *buf_p++;
         *pixbuf++ = red;
         *pixbuf++ = green;
         *pixbuf++ = blue;
         *pixbuf++ = alphabyte;
         break;
       default:

        break;
      }
      column++;
      if (column==columns) {
       column=0;
       if (row>0)
        row--;
       else
        goto breakOut;
       pixbuf = targa_rgba + row*columns*4;
      }
     }
    }
   }
   breakOut:;
  }
 }


}
