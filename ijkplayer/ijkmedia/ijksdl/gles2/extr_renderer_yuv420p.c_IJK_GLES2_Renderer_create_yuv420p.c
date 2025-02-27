
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int func_uploadTexture; int func_getBufferWidth; int func_use; int program; void* um3_color_conversion; void** us2_sampler; } ;
typedef TYPE_1__ IJK_GLES2_Renderer ;


 int ALOGI (char*) ;
 TYPE_1__* IJK_GLES2_Renderer_create_base (int ) ;
 int IJK_GLES2_Renderer_free (TYPE_1__*) ;
 int IJK_GLES2_checkError_TRACE (char*) ;
 int IJK_GLES2_getFragmentShader_yuv420p () ;
 void* glGetUniformLocation (int ,char*) ;
 int yuv420p_getBufferWidth ;
 int yuv420p_uploadTexture ;
 int yuv420p_use ;

IJK_GLES2_Renderer *IJK_GLES2_Renderer_create_yuv420p()
{
    ALOGI("create render yuv420p\n");
    IJK_GLES2_Renderer *renderer = IJK_GLES2_Renderer_create_base(IJK_GLES2_getFragmentShader_yuv420p());
    if (!renderer)
        goto fail;

    renderer->us2_sampler[0] = glGetUniformLocation(renderer->program, "us2_SamplerX"); IJK_GLES2_checkError_TRACE("glGetUniformLocation(us2_SamplerX)");
    renderer->us2_sampler[1] = glGetUniformLocation(renderer->program, "us2_SamplerY"); IJK_GLES2_checkError_TRACE("glGetUniformLocation(us2_SamplerY)");
    renderer->us2_sampler[2] = glGetUniformLocation(renderer->program, "us2_SamplerZ"); IJK_GLES2_checkError_TRACE("glGetUniformLocation(us2_SamplerZ)");

    renderer->um3_color_conversion = glGetUniformLocation(renderer->program, "um3_ColorConversion"); IJK_GLES2_checkError_TRACE("glGetUniformLocation(um3_ColorConversionMatrix)");

    renderer->func_use = yuv420p_use;
    renderer->func_getBufferWidth = yuv420p_getBufferWidth;
    renderer->func_uploadTexture = yuv420p_uploadTexture;

    return renderer;
fail:
    IJK_GLES2_Renderer_free(renderer);
    return ((void*)0);
}
