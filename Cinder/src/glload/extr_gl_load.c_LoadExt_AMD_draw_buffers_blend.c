
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLBLENDFUNCSEPARATEINDEXEDAMDPROC ;
typedef scalar_t__ PFNGLBLENDFUNCINDEXEDAMDPROC ;
typedef scalar_t__ PFNGLBLENDEQUATIONSEPARATEINDEXEDAMDPROC ;
typedef scalar_t__ PFNGLBLENDEQUATIONINDEXEDAMDPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glBlendEquationIndexedAMD ;
 scalar_t__ _funcptr_glBlendEquationSeparateIndexedAMD ;
 scalar_t__ _funcptr_glBlendFuncIndexedAMD ;
 scalar_t__ _funcptr_glBlendFuncSeparateIndexedAMD ;

__attribute__((used)) static int LoadExt_AMD_draw_buffers_blend()
{
 int numFailed = 0;
 _funcptr_glBlendEquationIndexedAMD = (PFNGLBLENDEQUATIONINDEXEDAMDPROC)IntGetProcAddress("glBlendEquationIndexedAMD");
 if(!_funcptr_glBlendEquationIndexedAMD) ++numFailed;
 _funcptr_glBlendEquationSeparateIndexedAMD = (PFNGLBLENDEQUATIONSEPARATEINDEXEDAMDPROC)IntGetProcAddress("glBlendEquationSeparateIndexedAMD");
 if(!_funcptr_glBlendEquationSeparateIndexedAMD) ++numFailed;
 _funcptr_glBlendFuncIndexedAMD = (PFNGLBLENDFUNCINDEXEDAMDPROC)IntGetProcAddress("glBlendFuncIndexedAMD");
 if(!_funcptr_glBlendFuncIndexedAMD) ++numFailed;
 _funcptr_glBlendFuncSeparateIndexedAMD = (PFNGLBLENDFUNCSEPARATEINDEXEDAMDPROC)IntGetProcAddress("glBlendFuncSeparateIndexedAMD");
 if(!_funcptr_glBlendFuncSeparateIndexedAMD) ++numFailed;
 return numFailed;
}
