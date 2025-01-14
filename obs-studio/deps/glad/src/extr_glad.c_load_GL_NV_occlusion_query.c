
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLISOCCLUSIONQUERYNVPROC ;
typedef scalar_t__ PFNGLGETOCCLUSIONQUERYUIVNVPROC ;
typedef scalar_t__ PFNGLGETOCCLUSIONQUERYIVNVPROC ;
typedef scalar_t__ PFNGLGENOCCLUSIONQUERIESNVPROC ;
typedef scalar_t__ PFNGLENDOCCLUSIONQUERYNVPROC ;
typedef scalar_t__ PFNGLDELETEOCCLUSIONQUERIESNVPROC ;
typedef scalar_t__ PFNGLBEGINOCCLUSIONQUERYNVPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_NV_occlusion_query ;
 scalar_t__ glad_glBeginOcclusionQueryNV ;
 scalar_t__ glad_glDeleteOcclusionQueriesNV ;
 scalar_t__ glad_glEndOcclusionQueryNV ;
 scalar_t__ glad_glGenOcclusionQueriesNV ;
 scalar_t__ glad_glGetOcclusionQueryivNV ;
 scalar_t__ glad_glGetOcclusionQueryuivNV ;
 scalar_t__ glad_glIsOcclusionQueryNV ;

__attribute__((used)) static void load_GL_NV_occlusion_query(GLADloadproc load) {
 if(!GLAD_GL_NV_occlusion_query) return;
 glad_glGenOcclusionQueriesNV = (PFNGLGENOCCLUSIONQUERIESNVPROC)load("glGenOcclusionQueriesNV");
 glad_glDeleteOcclusionQueriesNV = (PFNGLDELETEOCCLUSIONQUERIESNVPROC)load("glDeleteOcclusionQueriesNV");
 glad_glIsOcclusionQueryNV = (PFNGLISOCCLUSIONQUERYNVPROC)load("glIsOcclusionQueryNV");
 glad_glBeginOcclusionQueryNV = (PFNGLBEGINOCCLUSIONQUERYNVPROC)load("glBeginOcclusionQueryNV");
 glad_glEndOcclusionQueryNV = (PFNGLENDOCCLUSIONQUERYNVPROC)load("glEndOcclusionQueryNV");
 glad_glGetOcclusionQueryivNV = (PFNGLGETOCCLUSIONQUERYIVNVPROC)load("glGetOcclusionQueryivNV");
 glad_glGetOcclusionQueryuivNV = (PFNGLGETOCCLUSIONQUERYUIVNVPROC)load("glGetOcclusionQueryuivNV");
}
