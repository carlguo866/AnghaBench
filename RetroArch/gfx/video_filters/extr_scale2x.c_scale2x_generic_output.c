
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int SCALE2X_SCALE ;

__attribute__((used)) static void scale2x_generic_output(void *data,
      unsigned *out_width, unsigned *out_height,
      unsigned width, unsigned height)
{
   *out_width = width * SCALE2X_SCALE;
   *out_height = height * SCALE2X_SCALE;
}
