
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsInt32Number ;
typedef int cmsHTRANSFORM ;
typedef int cmsHPROFILE ;
typedef double cmsFloat64Number ;
typedef int cmsFloat32Number ;
typedef int cmsCIELab ;


 int DbgThread () ;
 int INTENT_PERCEPTUAL ;
 int INTENT_PRESERVE_K_PLANE_PERCEPTUAL ;
 int TYPE_CMYK_FLT ;
 int TYPE_Lab_DBL ;
 int cmsCloseProfile (int ,int ) ;
 int cmsCreateLab4Profile (int ,int *) ;
 int cmsCreateTransform (int ,int ,int ,int ,int ,int ,int ) ;
 int cmsDeleteTransform (int ,int ) ;
 double cmsDeltaE (int ,int*,int*) ;
 int cmsDoTransform (int ,int ,int*,int*,int) ;
 int cmsOpenProfileFromFile (int ,char*,char*) ;

__attribute__((used)) static
cmsInt32Number CheckKPlaneBlackPreserving(void)
{
    cmsHPROFILE hSWOP = cmsOpenProfileFromFile(DbgThread(), "test1.icc", "r");
    cmsHPROFILE hFOGRA = cmsOpenProfileFromFile(DbgThread(), "test2.icc", "r");
    cmsHTRANSFORM xform, swop_lab, fogra_lab;
    cmsFloat32Number CMYK1[4], CMYK2[4];
    cmsCIELab Lab1, Lab2;
    cmsHPROFILE hLab;
    cmsFloat64Number DeltaE, Max;
    cmsInt32Number i;

    hLab = cmsCreateLab4Profile(DbgThread(), ((void*)0));

    xform = cmsCreateTransform(DbgThread(), hSWOP, TYPE_CMYK_FLT, hFOGRA, TYPE_CMYK_FLT, INTENT_PERCEPTUAL, 0);

    swop_lab = cmsCreateTransform(DbgThread(), hSWOP, TYPE_CMYK_FLT, hLab, TYPE_Lab_DBL, INTENT_PERCEPTUAL, 0);
    fogra_lab = cmsCreateTransform(DbgThread(), hFOGRA, TYPE_CMYK_FLT, hLab, TYPE_Lab_DBL, INTENT_PERCEPTUAL, 0);

    Max = 0;

    for (i=0; i <= 100; i++) {
        CMYK1[0] = 0;
        CMYK1[1] = 0;
        CMYK1[2] = 0;
        CMYK1[3] = (cmsFloat32Number) i;

        cmsDoTransform(DbgThread(), swop_lab, CMYK1, &Lab1, 1);
        cmsDoTransform(DbgThread(), xform, CMYK1, CMYK2, 1);
        cmsDoTransform(DbgThread(), fogra_lab, CMYK2, &Lab2, 1);

        DeltaE = cmsDeltaE(DbgThread(), &Lab1, &Lab2);

        if (DeltaE > Max) Max = DeltaE;
    }


    cmsDeleteTransform(DbgThread(), xform);

    xform = cmsCreateTransform(DbgThread(), hFOGRA, TYPE_CMYK_FLT, hSWOP, TYPE_CMYK_FLT, INTENT_PRESERVE_K_PLANE_PERCEPTUAL, 0);

    for (i=0; i <= 100; i++) {
        CMYK1[0] = 30;
        CMYK1[1] = 20;
        CMYK1[2] = 10;
        CMYK1[3] = (cmsFloat32Number) i;

        cmsDoTransform(DbgThread(), fogra_lab, CMYK1, &Lab1, 1);
        cmsDoTransform(DbgThread(), xform, CMYK1, CMYK2, 1);
        cmsDoTransform(DbgThread(), swop_lab, CMYK2, &Lab2, 1);

        DeltaE = cmsDeltaE(DbgThread(), &Lab1, &Lab2);

        if (DeltaE > Max) Max = DeltaE;
    }

    cmsDeleteTransform(DbgThread(), xform);



    cmsCloseProfile(DbgThread(), hSWOP);
    cmsCloseProfile(DbgThread(), hFOGRA);
    cmsCloseProfile(DbgThread(), hLab);


    cmsDeleteTransform(DbgThread(), swop_lab);
    cmsDeleteTransform(DbgThread(), fogra_lab);

    return Max < 30.0;
}
