
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsPipeline ;
typedef int cmsInt32Number ;


 int Add3GammaCurves (int *,double) ;
 int AddIdentityCLUT16 (int *) ;
 int AddIdentityMatrix (int *) ;
 int CheckFullLUT (int *,int) ;
 int DbgThread () ;
 int * cmsPipelineAlloc (int ,int,int) ;

__attribute__((used)) static
cmsInt32Number Check3Stage16LUT(void)
{
    cmsPipeline* lut = cmsPipelineAlloc(DbgThread(), 3, 3);

    AddIdentityMatrix(lut);
    AddIdentityCLUT16(lut);
    Add3GammaCurves(lut, 1.0);

    return CheckFullLUT(lut, 3);
}
