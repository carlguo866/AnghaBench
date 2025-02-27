
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLVIEWPORTPROC ;
typedef scalar_t__ PFNGLTEXPARAMETERIVPROC ;
typedef scalar_t__ PFNGLTEXPARAMETERIPROC ;
typedef scalar_t__ PFNGLTEXPARAMETERFVPROC ;
typedef scalar_t__ PFNGLTEXPARAMETERFPROC ;
typedef scalar_t__ PFNGLTEXIMAGE2DPROC ;
typedef scalar_t__ PFNGLTEXIMAGE1DPROC ;
typedef scalar_t__ PFNGLSTENCILOPPROC ;
typedef scalar_t__ PFNGLSTENCILMASKPROC ;
typedef scalar_t__ PFNGLSTENCILFUNCPROC ;
typedef scalar_t__ PFNGLSCISSORPROC ;
typedef scalar_t__ PFNGLREADPIXELSPROC ;
typedef scalar_t__ PFNGLREADBUFFERPROC ;
typedef scalar_t__ PFNGLPOLYGONMODEPROC ;
typedef scalar_t__ PFNGLPOINTSIZEPROC ;
typedef scalar_t__ PFNGLPIXELSTOREIPROC ;
typedef scalar_t__ PFNGLPIXELSTOREFPROC ;
typedef scalar_t__ PFNGLLOGICOPPROC ;
typedef scalar_t__ PFNGLLINEWIDTHPROC ;
typedef scalar_t__ PFNGLISENABLEDPROC ;
typedef scalar_t__ PFNGLHINTPROC ;
typedef scalar_t__ PFNGLGETTEXPARAMETERIVPROC ;
typedef scalar_t__ PFNGLGETTEXPARAMETERFVPROC ;
typedef scalar_t__ PFNGLGETTEXLEVELPARAMETERIVPROC ;
typedef scalar_t__ PFNGLGETTEXLEVELPARAMETERFVPROC ;
typedef scalar_t__ PFNGLGETTEXIMAGEPROC ;
typedef scalar_t__ PFNGLGETSTRINGPROC ;
typedef scalar_t__ PFNGLGETINTEGERVPROC ;
typedef scalar_t__ PFNGLGETFLOATVPROC ;
typedef scalar_t__ PFNGLGETERRORPROC ;
typedef scalar_t__ PFNGLGETDOUBLEVPROC ;
typedef scalar_t__ PFNGLGETBOOLEANVPROC ;
typedef scalar_t__ PFNGLFRONTFACEPROC ;
typedef scalar_t__ PFNGLFLUSHPROC ;
typedef scalar_t__ PFNGLFINISHPROC ;
typedef scalar_t__ PFNGLENABLEPROC ;
typedef scalar_t__ PFNGLDRAWBUFFERPROC ;
typedef scalar_t__ PFNGLDISABLEPROC ;
typedef scalar_t__ PFNGLDEPTHRANGEPROC ;
typedef scalar_t__ PFNGLDEPTHMASKPROC ;
typedef scalar_t__ PFNGLDEPTHFUNCPROC ;
typedef scalar_t__ PFNGLCULLFACEPROC ;
typedef scalar_t__ PFNGLCOLORMASKPROC ;
typedef scalar_t__ PFNGLCLEARSTENCILPROC ;
typedef scalar_t__ PFNGLCLEARPROC ;
typedef scalar_t__ PFNGLCLEARDEPTHPROC ;
typedef scalar_t__ PFNGLCLEARCOLORPROC ;
typedef scalar_t__ PFNGLBLENDFUNCPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glBlendFunc ;
 scalar_t__ _funcptr_glClear ;
 scalar_t__ _funcptr_glClearColor ;
 scalar_t__ _funcptr_glClearDepth ;
 scalar_t__ _funcptr_glClearStencil ;
 scalar_t__ _funcptr_glColorMask ;
 scalar_t__ _funcptr_glCullFace ;
 scalar_t__ _funcptr_glDepthFunc ;
 scalar_t__ _funcptr_glDepthMask ;
 scalar_t__ _funcptr_glDepthRange ;
 scalar_t__ _funcptr_glDisable ;
 scalar_t__ _funcptr_glDrawBuffer ;
 scalar_t__ _funcptr_glEnable ;
 scalar_t__ _funcptr_glFinish ;
 scalar_t__ _funcptr_glFlush ;
 scalar_t__ _funcptr_glFrontFace ;
 scalar_t__ _funcptr_glGetBooleanv ;
 scalar_t__ _funcptr_glGetDoublev ;
 scalar_t__ _funcptr_glGetError ;
 scalar_t__ _funcptr_glGetFloatv ;
 scalar_t__ _funcptr_glGetIntegerv ;
 scalar_t__ _funcptr_glGetString ;
 scalar_t__ _funcptr_glGetTexImage ;
 scalar_t__ _funcptr_glGetTexLevelParameterfv ;
 scalar_t__ _funcptr_glGetTexLevelParameteriv ;
 scalar_t__ _funcptr_glGetTexParameterfv ;
 scalar_t__ _funcptr_glGetTexParameteriv ;
 scalar_t__ _funcptr_glHint ;
 scalar_t__ _funcptr_glIsEnabled ;
 scalar_t__ _funcptr_glLineWidth ;
 scalar_t__ _funcptr_glLogicOp ;
 scalar_t__ _funcptr_glPixelStoref ;
 scalar_t__ _funcptr_glPixelStorei ;
 scalar_t__ _funcptr_glPointSize ;
 scalar_t__ _funcptr_glPolygonMode ;
 scalar_t__ _funcptr_glReadBuffer ;
 scalar_t__ _funcptr_glReadPixels ;
 scalar_t__ _funcptr_glScissor ;
 scalar_t__ _funcptr_glStencilFunc ;
 scalar_t__ _funcptr_glStencilMask ;
 scalar_t__ _funcptr_glStencilOp ;
 scalar_t__ _funcptr_glTexImage1D ;
 scalar_t__ _funcptr_glTexImage2D ;
 scalar_t__ _funcptr_glTexParameterf ;
 scalar_t__ _funcptr_glTexParameterfv ;
 scalar_t__ _funcptr_glTexParameteri ;
 scalar_t__ _funcptr_glTexParameteriv ;
 scalar_t__ _funcptr_glViewport ;

__attribute__((used)) static int LoadCore_Version_1_0()
{
 int numFailed = 0;
 _funcptr_glBlendFunc = (PFNGLBLENDFUNCPROC)IntGetProcAddress("glBlendFunc");
 if(!_funcptr_glBlendFunc) ++numFailed;
 _funcptr_glClear = (PFNGLCLEARPROC)IntGetProcAddress("glClear");
 if(!_funcptr_glClear) ++numFailed;
 _funcptr_glClearColor = (PFNGLCLEARCOLORPROC)IntGetProcAddress("glClearColor");
 if(!_funcptr_glClearColor) ++numFailed;
 _funcptr_glClearDepth = (PFNGLCLEARDEPTHPROC)IntGetProcAddress("glClearDepth");
 if(!_funcptr_glClearDepth) ++numFailed;
 _funcptr_glClearStencil = (PFNGLCLEARSTENCILPROC)IntGetProcAddress("glClearStencil");
 if(!_funcptr_glClearStencil) ++numFailed;
 _funcptr_glColorMask = (PFNGLCOLORMASKPROC)IntGetProcAddress("glColorMask");
 if(!_funcptr_glColorMask) ++numFailed;
 _funcptr_glCullFace = (PFNGLCULLFACEPROC)IntGetProcAddress("glCullFace");
 if(!_funcptr_glCullFace) ++numFailed;
 _funcptr_glDepthFunc = (PFNGLDEPTHFUNCPROC)IntGetProcAddress("glDepthFunc");
 if(!_funcptr_glDepthFunc) ++numFailed;
 _funcptr_glDepthMask = (PFNGLDEPTHMASKPROC)IntGetProcAddress("glDepthMask");
 if(!_funcptr_glDepthMask) ++numFailed;
 _funcptr_glDepthRange = (PFNGLDEPTHRANGEPROC)IntGetProcAddress("glDepthRange");
 if(!_funcptr_glDepthRange) ++numFailed;
 _funcptr_glDisable = (PFNGLDISABLEPROC)IntGetProcAddress("glDisable");
 if(!_funcptr_glDisable) ++numFailed;
 _funcptr_glDrawBuffer = (PFNGLDRAWBUFFERPROC)IntGetProcAddress("glDrawBuffer");
 if(!_funcptr_glDrawBuffer) ++numFailed;
 _funcptr_glEnable = (PFNGLENABLEPROC)IntGetProcAddress("glEnable");
 if(!_funcptr_glEnable) ++numFailed;
 _funcptr_glFinish = (PFNGLFINISHPROC)IntGetProcAddress("glFinish");
 if(!_funcptr_glFinish) ++numFailed;
 _funcptr_glFlush = (PFNGLFLUSHPROC)IntGetProcAddress("glFlush");
 if(!_funcptr_glFlush) ++numFailed;
 _funcptr_glFrontFace = (PFNGLFRONTFACEPROC)IntGetProcAddress("glFrontFace");
 if(!_funcptr_glFrontFace) ++numFailed;
 _funcptr_glGetBooleanv = (PFNGLGETBOOLEANVPROC)IntGetProcAddress("glGetBooleanv");
 if(!_funcptr_glGetBooleanv) ++numFailed;
 _funcptr_glGetDoublev = (PFNGLGETDOUBLEVPROC)IntGetProcAddress("glGetDoublev");
 if(!_funcptr_glGetDoublev) ++numFailed;
 _funcptr_glGetError = (PFNGLGETERRORPROC)IntGetProcAddress("glGetError");
 if(!_funcptr_glGetError) ++numFailed;
 _funcptr_glGetFloatv = (PFNGLGETFLOATVPROC)IntGetProcAddress("glGetFloatv");
 if(!_funcptr_glGetFloatv) ++numFailed;
 _funcptr_glGetIntegerv = (PFNGLGETINTEGERVPROC)IntGetProcAddress("glGetIntegerv");
 if(!_funcptr_glGetIntegerv) ++numFailed;
 _funcptr_glGetString = (PFNGLGETSTRINGPROC)IntGetProcAddress("glGetString");
 if(!_funcptr_glGetString) ++numFailed;
 _funcptr_glGetTexImage = (PFNGLGETTEXIMAGEPROC)IntGetProcAddress("glGetTexImage");
 if(!_funcptr_glGetTexImage) ++numFailed;
 _funcptr_glGetTexLevelParameterfv = (PFNGLGETTEXLEVELPARAMETERFVPROC)IntGetProcAddress("glGetTexLevelParameterfv");
 if(!_funcptr_glGetTexLevelParameterfv) ++numFailed;
 _funcptr_glGetTexLevelParameteriv = (PFNGLGETTEXLEVELPARAMETERIVPROC)IntGetProcAddress("glGetTexLevelParameteriv");
 if(!_funcptr_glGetTexLevelParameteriv) ++numFailed;
 _funcptr_glGetTexParameterfv = (PFNGLGETTEXPARAMETERFVPROC)IntGetProcAddress("glGetTexParameterfv");
 if(!_funcptr_glGetTexParameterfv) ++numFailed;
 _funcptr_glGetTexParameteriv = (PFNGLGETTEXPARAMETERIVPROC)IntGetProcAddress("glGetTexParameteriv");
 if(!_funcptr_glGetTexParameteriv) ++numFailed;
 _funcptr_glHint = (PFNGLHINTPROC)IntGetProcAddress("glHint");
 if(!_funcptr_glHint) ++numFailed;
 _funcptr_glIsEnabled = (PFNGLISENABLEDPROC)IntGetProcAddress("glIsEnabled");
 if(!_funcptr_glIsEnabled) ++numFailed;
 _funcptr_glLineWidth = (PFNGLLINEWIDTHPROC)IntGetProcAddress("glLineWidth");
 if(!_funcptr_glLineWidth) ++numFailed;
 _funcptr_glLogicOp = (PFNGLLOGICOPPROC)IntGetProcAddress("glLogicOp");
 if(!_funcptr_glLogicOp) ++numFailed;
 _funcptr_glPixelStoref = (PFNGLPIXELSTOREFPROC)IntGetProcAddress("glPixelStoref");
 if(!_funcptr_glPixelStoref) ++numFailed;
 _funcptr_glPixelStorei = (PFNGLPIXELSTOREIPROC)IntGetProcAddress("glPixelStorei");
 if(!_funcptr_glPixelStorei) ++numFailed;
 _funcptr_glPointSize = (PFNGLPOINTSIZEPROC)IntGetProcAddress("glPointSize");
 if(!_funcptr_glPointSize) ++numFailed;
 _funcptr_glPolygonMode = (PFNGLPOLYGONMODEPROC)IntGetProcAddress("glPolygonMode");
 if(!_funcptr_glPolygonMode) ++numFailed;
 _funcptr_glReadBuffer = (PFNGLREADBUFFERPROC)IntGetProcAddress("glReadBuffer");
 if(!_funcptr_glReadBuffer) ++numFailed;
 _funcptr_glReadPixels = (PFNGLREADPIXELSPROC)IntGetProcAddress("glReadPixels");
 if(!_funcptr_glReadPixels) ++numFailed;
 _funcptr_glScissor = (PFNGLSCISSORPROC)IntGetProcAddress("glScissor");
 if(!_funcptr_glScissor) ++numFailed;
 _funcptr_glStencilFunc = (PFNGLSTENCILFUNCPROC)IntGetProcAddress("glStencilFunc");
 if(!_funcptr_glStencilFunc) ++numFailed;
 _funcptr_glStencilMask = (PFNGLSTENCILMASKPROC)IntGetProcAddress("glStencilMask");
 if(!_funcptr_glStencilMask) ++numFailed;
 _funcptr_glStencilOp = (PFNGLSTENCILOPPROC)IntGetProcAddress("glStencilOp");
 if(!_funcptr_glStencilOp) ++numFailed;
 _funcptr_glTexImage1D = (PFNGLTEXIMAGE1DPROC)IntGetProcAddress("glTexImage1D");
 if(!_funcptr_glTexImage1D) ++numFailed;
 _funcptr_glTexImage2D = (PFNGLTEXIMAGE2DPROC)IntGetProcAddress("glTexImage2D");
 if(!_funcptr_glTexImage2D) ++numFailed;
 _funcptr_glTexParameterf = (PFNGLTEXPARAMETERFPROC)IntGetProcAddress("glTexParameterf");
 if(!_funcptr_glTexParameterf) ++numFailed;
 _funcptr_glTexParameterfv = (PFNGLTEXPARAMETERFVPROC)IntGetProcAddress("glTexParameterfv");
 if(!_funcptr_glTexParameterfv) ++numFailed;
 _funcptr_glTexParameteri = (PFNGLTEXPARAMETERIPROC)IntGetProcAddress("glTexParameteri");
 if(!_funcptr_glTexParameteri) ++numFailed;
 _funcptr_glTexParameteriv = (PFNGLTEXPARAMETERIVPROC)IntGetProcAddress("glTexParameteriv");
 if(!_funcptr_glTexParameteriv) ++numFailed;
 _funcptr_glViewport = (PFNGLVIEWPORTPROC)IntGetProcAddress("glViewport");
 if(!_funcptr_glViewport) ++numFailed;
 return numFailed;
}
