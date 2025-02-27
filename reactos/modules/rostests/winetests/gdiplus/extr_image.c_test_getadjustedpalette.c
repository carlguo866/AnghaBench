
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int Argb; } ;
struct TYPE_9__ {int Argb; } ;
struct TYPE_12__ {TYPE_2__ newColor; TYPE_1__ oldColor; } ;
struct TYPE_11__ {int Count; int* Entries; } ;
typedef int GpStatus ;
typedef int GpImageAttributes ;
typedef TYPE_3__ ColorPalette ;
typedef TYPE_4__ ColorMap ;
typedef int ARGB ;


 int ColorAdjustTypeBitmap ;
 int ColorAdjustTypeBrush ;
 int ColorAdjustTypeDefault ;
 TYPE_3__* GdipAlloc (int) ;
 int GdipCreateImageAttributes (int **) ;
 int GdipDisposeImageAttributes (int *) ;
 int GdipFree (TYPE_3__*) ;
 int GdipGetImageAttributesAdjustedPalette (int *,TYPE_3__*,int) ;
 int GdipSetImageAttributesRemapTable (int *,int,int ,int,TYPE_4__*) ;
 int InvalidParameter ;
 int Ok ;
 int TRUE ;
 int expect (int,int) ;

__attribute__((used)) static void test_getadjustedpalette(void)
{
    ColorMap colormap;
    GpImageAttributes *imageattributes;
    ColorPalette *palette;
    GpStatus stat;

    stat = GdipCreateImageAttributes(&imageattributes);
    expect(Ok, stat);

    colormap.oldColor.Argb = 0xffffff00;
    colormap.newColor.Argb = 0xffff00ff;
    stat = GdipSetImageAttributesRemapTable(imageattributes, ColorAdjustTypeBitmap,
        TRUE, 1, &colormap);
    expect(Ok, stat);

    colormap.oldColor.Argb = 0xffffff80;
    colormap.newColor.Argb = 0xffff80ff;
    stat = GdipSetImageAttributesRemapTable(imageattributes, ColorAdjustTypeDefault,
        TRUE, 1, &colormap);
    expect(Ok, stat);

    palette = GdipAlloc(sizeof(*palette) + sizeof(ARGB) * 2);
    palette->Count = 0;

    stat = GdipGetImageAttributesAdjustedPalette(imageattributes, palette, ColorAdjustTypeBitmap);
    expect(InvalidParameter, stat);

    palette->Count = 3;
    palette->Entries[0] = 0xffffff00;
    palette->Entries[1] = 0xffffff80;
    palette->Entries[2] = 0xffffffff;

    stat = GdipGetImageAttributesAdjustedPalette(imageattributes, palette, ColorAdjustTypeBitmap);
    expect(Ok, stat);
    expect(0xffff00ff, palette->Entries[0]);
    expect(0xffffff80, palette->Entries[1]);
    expect(0xffffffff, palette->Entries[2]);

    palette->Entries[0] = 0xffffff00;
    palette->Entries[1] = 0xffffff80;
    palette->Entries[2] = 0xffffffff;

    stat = GdipGetImageAttributesAdjustedPalette(imageattributes, palette, ColorAdjustTypeBrush);
    expect(Ok, stat);
    expect(0xffffff00, palette->Entries[0]);
    expect(0xffff80ff, palette->Entries[1]);
    expect(0xffffffff, palette->Entries[2]);

    stat = GdipGetImageAttributesAdjustedPalette(((void*)0), palette, ColorAdjustTypeBitmap);
    expect(InvalidParameter, stat);

    stat = GdipGetImageAttributesAdjustedPalette(imageattributes, ((void*)0), ColorAdjustTypeBitmap);
    expect(InvalidParameter, stat);

    stat = GdipGetImageAttributesAdjustedPalette(imageattributes, palette, -1);
    expect(InvalidParameter, stat);

    stat = GdipGetImageAttributesAdjustedPalette(imageattributes, palette, ColorAdjustTypeDefault);
    expect(InvalidParameter, stat);

    GdipFree(palette);
    GdipDisposeImageAttributes(imageattributes);
}
