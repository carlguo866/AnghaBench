
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsUInt16Number ;
typedef int cmsPipeline ;
typedef int cmsBool ;


 int DbgThread () ;
 int FALSE ;
 int IsGoodWordPrec (char*,int ,int ,int) ;
 int Sampler3D (int ,int *,int *,int *) ;
 int TRUE ;
 int cmsPipelineEval16 (int ,int *,int *,int *) ;

__attribute__((used)) static
cmsBool CheckOne3D(cmsPipeline* lut, cmsUInt16Number a1, cmsUInt16Number a2, cmsUInt16Number a3)
{
    cmsUInt16Number In[3], Out1[3], Out2[3];

    In[0] = a1; In[1] = a2; In[2] = a3;


    cmsPipelineEval16(DbgThread(), In, Out1, lut);


    Sampler3D(DbgThread(), In, Out2, ((void*)0));



    if (!IsGoodWordPrec("Channel 1", Out1[0], Out2[0], 2)) return FALSE;
    if (!IsGoodWordPrec("Channel 2", Out1[1], Out2[1], 2)) return FALSE;
    if (!IsGoodWordPrec("Channel 3", Out1[2], Out2[2], 2)) return FALSE;

    return TRUE;
}
