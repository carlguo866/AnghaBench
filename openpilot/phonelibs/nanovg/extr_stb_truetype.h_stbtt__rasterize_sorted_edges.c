
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {int member_2; int member_1; int member_0; } ;
typedef TYPE_1__ stbtt__hheap ;
struct TYPE_15__ {float y0; float y1; } ;
typedef TYPE_2__ stbtt__edge ;
struct TYPE_16__ {int w; int h; unsigned char* pixels; int stride; } ;
typedef TYPE_3__ stbtt__bitmap ;
struct TYPE_17__ {float ey; int direction; struct TYPE_17__* next; scalar_t__ fdx; int fx; } ;
typedef TYPE_4__ stbtt__active_edge ;
typedef int scanline ;


 int STBTT_assert (int) ;
 int STBTT_free (float*,void*) ;
 scalar_t__ STBTT_malloc (int,void*) ;
 int STBTT_memset (float*,int ,int) ;
 scalar_t__ fabs (float) ;
 int stbtt__fill_active_edges_new (float*,float*,int,TYPE_4__*,float) ;
 int stbtt__hheap_cleanup (TYPE_1__*,void*) ;
 int stbtt__hheap_free (TYPE_1__*,TYPE_4__*) ;
 TYPE_4__* stbtt__new_active (TYPE_1__*,TYPE_2__*,int,float,void*) ;

__attribute__((used)) static void stbtt__rasterize_sorted_edges(stbtt__bitmap *result, stbtt__edge *e, int n, int vsubsample, int off_x, int off_y, void *userdata)
{
   stbtt__hheap hh = { 0, 0, 0 };
   stbtt__active_edge *active = ((void*)0);
   int y,j=0, i;
   float scanline_data[129], *scanline, *scanline2;

   if (result->w > 64)
      scanline = (float *) STBTT_malloc((result->w*2+1) * sizeof(float), userdata);
   else
      scanline = scanline_data;

   scanline2 = scanline + result->w;

   y = off_y;
   e[n].y0 = (float) (off_y + result->h) + 1;

   while (j < result->h) {

      float scan_y_top = y + 0.0f;
      float scan_y_bottom = y + 1.0f;
      stbtt__active_edge **step = &active;

      STBTT_memset(scanline , 0, result->w*sizeof(scanline[0]));
      STBTT_memset(scanline2, 0, (result->w+1)*sizeof(scanline[0]));



      while (*step) {
         stbtt__active_edge * z = *step;
         if (z->ey <= scan_y_top) {
            *step = z->next;
            STBTT_assert(z->direction);
            z->direction = 0;
            stbtt__hheap_free(&hh, z);
         } else {
            step = &((*step)->next);
         }
      }


      while (e->y0 <= scan_y_bottom) {
         if (e->y0 != e->y1) {
            stbtt__active_edge *z = stbtt__new_active(&hh, e, off_x, scan_y_top, userdata);
            if (z != ((void*)0)) {
               STBTT_assert(z->ey >= scan_y_top);

               z->next = active;
               active = z;
            }
         }
         ++e;
      }


      if (active)
         stbtt__fill_active_edges_new(scanline, scanline2+1, result->w, active, scan_y_top);

      {
         float sum = 0;
         for (i=0; i < result->w; ++i) {
            float k;
            int m;
            sum += scanline2[i];
            k = scanline[i] + sum;
            k = (float) fabs(k)*255 + 0.5f;
            m = (int) k;
            if (m > 255) m = 255;
            result->pixels[j*result->stride + i] = (unsigned char) m;
         }
      }

      step = &active;
      while (*step) {
         stbtt__active_edge *z = *step;
         z->fx += z->fdx;
         step = &((*step)->next);
      }

      ++y;
      ++j;
   }

   stbtt__hheap_cleanup(&hh, userdata);

   if (scanline != scanline_data)
      STBTT_free(scanline, userdata);
}
