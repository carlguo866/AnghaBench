
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLTESTFENCENVPROC ;
typedef scalar_t__ PFNGLSETFENCENVPROC ;
typedef scalar_t__ PFNGLISFENCENVPROC ;
typedef scalar_t__ PFNGLGETFENCEIVNVPROC ;
typedef scalar_t__ PFNGLGENFENCESNVPROC ;
typedef scalar_t__ PFNGLFINISHFENCENVPROC ;
typedef scalar_t__ PFNGLDELETEFENCESNVPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_NV_fence ;
 scalar_t__ glad_glDeleteFencesNV ;
 scalar_t__ glad_glFinishFenceNV ;
 scalar_t__ glad_glGenFencesNV ;
 scalar_t__ glad_glGetFenceivNV ;
 scalar_t__ glad_glIsFenceNV ;
 scalar_t__ glad_glSetFenceNV ;
 scalar_t__ glad_glTestFenceNV ;

__attribute__((used)) static void load_GL_NV_fence(GLADloadproc load) {
 if(!GLAD_GL_NV_fence) return;
 glad_glDeleteFencesNV = (PFNGLDELETEFENCESNVPROC)load("glDeleteFencesNV");
 glad_glGenFencesNV = (PFNGLGENFENCESNVPROC)load("glGenFencesNV");
 glad_glIsFenceNV = (PFNGLISFENCENVPROC)load("glIsFenceNV");
 glad_glTestFenceNV = (PFNGLTESTFENCENVPROC)load("glTestFenceNV");
 glad_glGetFenceivNV = (PFNGLGETFENCEIVNVPROC)load("glGetFenceivNV");
 glad_glFinishFenceNV = (PFNGLFINISHFENCENVPROC)load("glFinishFenceNV");
 glad_glSetFenceNV = (PFNGLSETFENCENVPROC)load("glSetFenceNV");
}
