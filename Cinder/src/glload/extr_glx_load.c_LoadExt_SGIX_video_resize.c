
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLXQUERYCHANNELRECTSGIXPROC ;
typedef scalar_t__ PFNGLXQUERYCHANNELDELTASSGIXPROC ;
typedef scalar_t__ PFNGLXCHANNELRECTSYNCSGIXPROC ;
typedef scalar_t__ PFNGLXCHANNELRECTSGIXPROC ;
typedef scalar_t__ PFNGLXBINDCHANNELTOWINDOWSGIXPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glXBindChannelToWindowSGIX ;
 scalar_t__ _funcptr_glXChannelRectSGIX ;
 scalar_t__ _funcptr_glXChannelRectSyncSGIX ;
 scalar_t__ _funcptr_glXQueryChannelDeltasSGIX ;
 scalar_t__ _funcptr_glXQueryChannelRectSGIX ;

__attribute__((used)) static int LoadExt_SGIX_video_resize()
{
 int numFailed = 0;
 _funcptr_glXBindChannelToWindowSGIX = (PFNGLXBINDCHANNELTOWINDOWSGIXPROC)IntGetProcAddress("glXBindChannelToWindowSGIX");
 if(!_funcptr_glXBindChannelToWindowSGIX) ++numFailed;
 _funcptr_glXChannelRectSGIX = (PFNGLXCHANNELRECTSGIXPROC)IntGetProcAddress("glXChannelRectSGIX");
 if(!_funcptr_glXChannelRectSGIX) ++numFailed;
 _funcptr_glXChannelRectSyncSGIX = (PFNGLXCHANNELRECTSYNCSGIXPROC)IntGetProcAddress("glXChannelRectSyncSGIX");
 if(!_funcptr_glXChannelRectSyncSGIX) ++numFailed;
 _funcptr_glXQueryChannelDeltasSGIX = (PFNGLXQUERYCHANNELDELTASSGIXPROC)IntGetProcAddress("glXQueryChannelDeltasSGIX");
 if(!_funcptr_glXQueryChannelDeltasSGIX) ++numFailed;
 _funcptr_glXQueryChannelRectSGIX = (PFNGLXQUERYCHANNELRECTSGIXPROC)IntGetProcAddress("glXQueryChannelRectSGIX");
 if(!_funcptr_glXQueryChannelRectSGIX) ++numFailed;
 return numFailed;
}
