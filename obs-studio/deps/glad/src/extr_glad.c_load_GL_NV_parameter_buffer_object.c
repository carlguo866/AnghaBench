
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLPROGRAMBUFFERPARAMETERSIUIVNVPROC ;
typedef scalar_t__ PFNGLPROGRAMBUFFERPARAMETERSIIVNVPROC ;
typedef scalar_t__ PFNGLPROGRAMBUFFERPARAMETERSFVNVPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_NV_parameter_buffer_object ;
 scalar_t__ glad_glProgramBufferParametersIivNV ;
 scalar_t__ glad_glProgramBufferParametersIuivNV ;
 scalar_t__ glad_glProgramBufferParametersfvNV ;

__attribute__((used)) static void load_GL_NV_parameter_buffer_object(GLADloadproc load) {
 if(!GLAD_GL_NV_parameter_buffer_object) return;
 glad_glProgramBufferParametersfvNV = (PFNGLPROGRAMBUFFERPARAMETERSFVNVPROC)load("glProgramBufferParametersfvNV");
 glad_glProgramBufferParametersIivNV = (PFNGLPROGRAMBUFFERPARAMETERSIIVNVPROC)load("glProgramBufferParametersIivNV");
 glad_glProgramBufferParametersIuivNV = (PFNGLPROGRAMBUFFERPARAMETERSIUIVNVPROC)load("glProgramBufferParametersIuivNV");
}
