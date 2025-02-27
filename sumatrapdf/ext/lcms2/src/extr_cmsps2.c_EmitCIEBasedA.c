
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsToneCurve ;
typedef int cmsIOHANDLER ;
typedef int cmsContext ;
typedef int cmsCIEXYZ ;


 int Emit1Gamma (int ,int *,int *) ;
 int EmitIntent (int ,int *,int ) ;
 int EmitWhiteBlackD50 (int ,int *,int *) ;
 int INTENT_PERCEPTUAL ;
 int _cmsIOPrintf (int ,int *,char*) ;

__attribute__((used)) static
int EmitCIEBasedA(cmsContext ContextID, cmsIOHANDLER* m, cmsToneCurve* Curve, cmsCIEXYZ* BlackPoint)
{

    _cmsIOPrintf(ContextID, m, "[ /CIEBasedA\n");
    _cmsIOPrintf(ContextID, m, "  <<\n");

    _cmsIOPrintf(ContextID, m, "/DecodeA ");

    Emit1Gamma(ContextID, m, Curve);

    _cmsIOPrintf(ContextID, m, " \n");

    _cmsIOPrintf(ContextID, m, "/MatrixA [ 0.9642 1.0000 0.8249 ]\n");
    _cmsIOPrintf(ContextID, m, "/RangeLMN [ 0.0 0.9642 0.0 1.0000 0.0 0.8249 ]\n");

    EmitWhiteBlackD50(ContextID, m, BlackPoint);
    EmitIntent(ContextID, m, INTENT_PERCEPTUAL);

    _cmsIOPrintf(ContextID, m, ">>\n");
    _cmsIOPrintf(ContextID, m, "]\n");

    return 1;
}
