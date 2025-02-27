
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GetModuleHandleA (char*) ;
 scalar_t__ GetProcAddress (int ,char*) ;
 int GetSystemDefaultLangID () ;
 int PRIMARYLANGID (int ) ;
 int hgdi32 ;
 void* pAddFontMemResourceEx ;
 void* pAddFontResourceExA ;
 void* pCreateFontIndirectExA ;
 void* pGdiGetCharDimensions ;
 void* pGdiGetCodePage ;
 void* pGdiRealizationInfo ;
 void* pGetCharABCWidthsA ;
 void* pGetCharABCWidthsFloatW ;
 void* pGetCharABCWidthsI ;
 void* pGetCharABCWidthsW ;
 void* pGetCharWidth32A ;
 void* pGetCharWidth32W ;
 void* pGetFontFileData ;
 void* pGetFontFileInfo ;
 void* pGetFontRealizationInfo ;
 void* pGetFontUnicodeRanges ;
 void* pGetGlyphIndicesA ;
 void* pGetGlyphIndicesW ;
 void* pGetTextExtentExPointI ;
 void* pRemoveFontMemResourceEx ;
 void* pRemoveFontResourceExA ;
 int system_lang_id ;

__attribute__((used)) static void init(void)
{
    hgdi32 = GetModuleHandleA("gdi32.dll");

    pGdiGetCharDimensions = (void *)GetProcAddress(hgdi32, "GdiGetCharDimensions");
    pGdiGetCodePage = (void *) GetProcAddress(hgdi32,"GdiGetCodePage");
    pGetCharABCWidthsI = (void *)GetProcAddress(hgdi32, "GetCharABCWidthsI");
    pGetCharABCWidthsA = (void *)GetProcAddress(hgdi32, "GetCharABCWidthsA");
    pGetCharABCWidthsW = (void *)GetProcAddress(hgdi32, "GetCharABCWidthsW");
    pGetCharABCWidthsFloatW = (void *)GetProcAddress(hgdi32, "GetCharABCWidthsFloatW");
    pGetCharWidth32A = (void *)GetProcAddress(hgdi32, "GetCharWidth32A");
    pGetCharWidth32W = (void *)GetProcAddress(hgdi32, "GetCharWidth32W");
    pGetFontUnicodeRanges = (void *)GetProcAddress(hgdi32, "GetFontUnicodeRanges");
    pGetGlyphIndicesA = (void *)GetProcAddress(hgdi32, "GetGlyphIndicesA");
    pGetGlyphIndicesW = (void *)GetProcAddress(hgdi32, "GetGlyphIndicesW");
    pGetTextExtentExPointI = (void *)GetProcAddress(hgdi32, "GetTextExtentExPointI");
    pGdiRealizationInfo = (void *)GetProcAddress(hgdi32, "GdiRealizationInfo");
    pCreateFontIndirectExA = (void *)GetProcAddress(hgdi32, "CreateFontIndirectExA");
    pAddFontMemResourceEx = (void *)GetProcAddress(hgdi32, "AddFontMemResourceEx");
    pRemoveFontMemResourceEx = (void *)GetProcAddress(hgdi32, "RemoveFontMemResourceEx");
    pAddFontResourceExA = (void *)GetProcAddress(hgdi32, "AddFontResourceExA");
    pRemoveFontResourceExA = (void *)GetProcAddress(hgdi32, "RemoveFontResourceExA");
    pGetFontRealizationInfo = (void *)GetProcAddress(hgdi32, "GetFontRealizationInfo");
    pGetFontFileInfo = (void *)GetProcAddress(hgdi32, "GetFontFileInfo");
    pGetFontFileData = (void *)GetProcAddress(hgdi32, "GetFontFileData");

    system_lang_id = PRIMARYLANGID(GetSystemDefaultLangID());
}
