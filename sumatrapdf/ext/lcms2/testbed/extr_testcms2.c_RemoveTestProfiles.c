
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int remove (char*) ;

__attribute__((used)) static
void RemoveTestProfiles(void)
{
    remove("sRGBlcms2.icc");
    remove("aRGBlcms2.icc");
    remove("graylcms2.icc");
    remove("gray3lcms2.icc");
    remove("linlcms2.icc");
    remove("limitlcms2.icc");
    remove("labv2lcms2.icc");
    remove("labv4lcms2.icc");
    remove("xyzlcms2.icc");
    remove("nullcms2.icc");
    remove("bchslcms2.icc");
    remove("lcms2cmyk.icc");
    remove("glablcms2.icc");
    remove("lcms2link.icc");
    remove("lcms2link2.icc");
    remove("brightness.icc");
}
