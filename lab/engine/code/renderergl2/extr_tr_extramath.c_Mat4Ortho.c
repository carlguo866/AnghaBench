
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float* mat4_t ;



void Mat4Ortho( float left, float right, float bottom, float top, float znear, float zfar, mat4_t out )
{
 out[ 0] = 2.0f / (right - left); out[ 4] = 0.0f; out[ 8] = 0.0f; out[12] = -(right + left) / (right - left);
 out[ 1] = 0.0f; out[ 5] = 2.0f / (top - bottom); out[ 9] = 0.0f; out[13] = -(top + bottom) / (top - bottom);
 out[ 2] = 0.0f; out[ 6] = 0.0f; out[10] = 2.0f / (zfar - znear); out[14] = -(zfar + znear) / (zfar - znear);
 out[ 3] = 0.0f; out[ 7] = 0.0f; out[11] = 0.0f; out[15] = 1.0f;
}
