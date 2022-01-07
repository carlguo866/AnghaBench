
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int gdImagePtr ;
typedef int gdIOCtxPtr ;
typedef int ctx ;
struct TYPE_4__ {int Interlace; int in_count; int Width; int Height; long CountDown; scalar_t__ cury; scalar_t__ curx; scalar_t__ Pass; } ;
typedef TYPE_1__ GifCtx ;


 int compress (int,int ,int ,TYPE_1__*) ;
 int gdPutBuf (char*,int,int ) ;
 int gdPutC (char,int ) ;
 int gifPutWord (int,int ) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void
GIFEncode(gdIOCtxPtr fp, int GWidth, int GHeight, int GInterlace, int Background, int Transparent, int BitsPerPixel, int *Red, int *Green, int *Blue, gdImagePtr im)
{
        int B;
        int RWidth, RHeight;
        int LeftOfs, TopOfs;
        int Resolution;
        int ColorMapSize;
        int InitCodeSize;
        int i;
  GifCtx ctx;

  memset(&ctx, 0, sizeof(ctx));
        ctx.Interlace = GInterlace;
  ctx.in_count = 1;

        ColorMapSize = 1 << BitsPerPixel;

        RWidth = ctx.Width = GWidth;
        RHeight = ctx.Height = GHeight;
        LeftOfs = TopOfs = 0;

        Resolution = BitsPerPixel;




        ctx.CountDown = (long)ctx.Width * (long)ctx.Height;




        ctx.Pass = 0;




        if( BitsPerPixel <= 1 )
                InitCodeSize = 2;
        else
                InitCodeSize = BitsPerPixel;




        ctx.curx = ctx.cury = 0;




        gdPutBuf(Transparent < 0 ? "GIF87a" : "GIF89a", 6, fp );




        gifPutWord( RWidth, fp );
        gifPutWord( RHeight, fp );




        B = 0x80;




        B |= (Resolution - 1) << 5;




        B |= (BitsPerPixel - 1);




        gdPutC( B, fp );




        gdPutC( Background, fp );




        gdPutC( 0, fp );




        for( i=0; i<ColorMapSize; ++i ) {
                gdPutC( Red[i], fp );
                gdPutC( Green[i], fp );
                gdPutC( Blue[i], fp );
        }




 if ( Transparent >= 0 ) {
     gdPutC( '!', fp );
     gdPutC( 0xf9, fp );
     gdPutC( 4, fp );
     gdPutC( 1, fp );
     gdPutC( 0, fp );
     gdPutC( 0, fp );
     gdPutC( (unsigned char) Transparent, fp );
     gdPutC( 0, fp );
 }




        gdPutC( ',', fp );





        gifPutWord( LeftOfs, fp );
        gifPutWord( TopOfs, fp );
        gifPutWord( ctx.Width, fp );
        gifPutWord( ctx.Height, fp );




        if( ctx.Interlace )
                gdPutC( 0x40, fp );
        else
                gdPutC( 0x00, fp );




        gdPutC( InitCodeSize, fp );




        compress( InitCodeSize+1, fp, im, &ctx );




        gdPutC( 0, fp );




        gdPutC( ';', fp );
}
