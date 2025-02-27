
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int cmsTagSignature ;
typedef int cmsInt32Number ;
struct TYPE_4__ {double X; double Y; double Z; } ;
struct TYPE_5__ {double Flare; int Geometry; int Observer; int IlluminantType; TYPE_1__ Backing; } ;
typedef TYPE_2__ cmsICCMeasurementConditions ;
typedef int cmsHPROFILE ;


 int DbgThread () ;
 int IsGoodFixed15_16 (char*,double,double) ;
 int cmsILLUMINANT_TYPE_D50 ;
 scalar_t__ cmsReadTag (int ,int ,int ) ;
 int cmsWriteTag (int ,int ,int ,TYPE_2__*) ;

__attribute__((used)) static
cmsInt32Number CheckMeasurement(cmsInt32Number Pass, cmsHPROFILE hProfile, cmsTagSignature tag)
{
    cmsICCMeasurementConditions *Pt, m;

    switch (Pass) {

        case 1:
            m.Backing.X = 0.1;
            m.Backing.Y = 0.2;
            m.Backing.Z = 0.3;
            m.Flare = 1.0;
            m.Geometry = 1;
            m.IlluminantType = cmsILLUMINANT_TYPE_D50;
            m.Observer = 1;
            return cmsWriteTag(DbgThread(), hProfile, tag, &m);


        case 2:
            Pt = (cmsICCMeasurementConditions *) cmsReadTag(DbgThread(), hProfile, tag);
            if (Pt == ((void*)0)) return 0;

            if (!IsGoodFixed15_16("Backing", Pt ->Backing.X, 0.1)) return 0;
            if (!IsGoodFixed15_16("Backing", Pt ->Backing.Y, 0.2)) return 0;
            if (!IsGoodFixed15_16("Backing", Pt ->Backing.Z, 0.3)) return 0;
            if (!IsGoodFixed15_16("Flare", Pt ->Flare, 1.0)) return 0;

            if (Pt ->Geometry != 1) return 0;
            if (Pt ->IlluminantType != cmsILLUMINANT_TYPE_D50) return 0;
            if (Pt ->Observer != 1) return 0;
            return 1;

        default:
            return 0;
    }
}
