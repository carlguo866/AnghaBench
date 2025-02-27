
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int bmi ;
typedef int bm ;
struct TYPE_9__ {int bmHeight; int bmWidth; } ;
struct TYPE_7__ {int biSize; int biHeight; int biPlanes; int biBitCount; int biCompression; int biWidth; } ;
struct TYPE_8__ {TYPE_1__ bmiHeader; } ;
typedef int HDC ;
typedef int HBITMAP ;
typedef int DWORD ;
typedef TYPE_2__ BITMAPINFO ;
typedef TYPE_3__ BITMAP ;


 int BI_RGB ;
 int DIB_RGB_COLORS ;
 int GetDC (int *) ;
 int GetDIBits (int ,int ,int ,int,int*,TYPE_2__*,int ) ;
 int GetObjectA (int ,int,TYPE_3__*) ;
 int ReleaseDC (int *,int ) ;
 int color_match (int,int) ;
 int memset (TYPE_2__*,int ,int) ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_LoadImageBitmap(const char * test_desc, HBITMAP hbm)
{
    BITMAP bm;
    BITMAPINFO bmi;
    DWORD ret, pixel = 0;
    HDC hdc = GetDC(((void*)0));

    ret = GetObjectA(hbm, sizeof(bm), &bm);
    ok(ret == sizeof(bm), "GetObject returned %d\n", ret);

    memset(&bmi, 0, sizeof(bmi));
    bmi.bmiHeader.biSize = sizeof(bmi.bmiHeader);
    bmi.bmiHeader.biWidth = bm.bmWidth;
    bmi.bmiHeader.biHeight = bm.bmHeight;
    bmi.bmiHeader.biPlanes = 1;
    bmi.bmiHeader.biBitCount= 24;
    bmi.bmiHeader.biCompression= BI_RGB;
    ret = GetDIBits(hdc, hbm, 0, bm.bmHeight, &pixel, &bmi, DIB_RGB_COLORS);
    ok(ret == bm.bmHeight, "%s: %d lines were converted, not %d\n", test_desc, ret, bm.bmHeight);

    ok(color_match(pixel, 0x00ffffff), "%s: Pixel is 0x%08x\n", test_desc, pixel);

    ReleaseDC(((void*)0), hdc);
}
