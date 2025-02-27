
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __m128 ;


 int SHIFT_RIGHT_2PS (int ,int ) ;
 int VECTOR_MATRIX_CROSS_PS (int ,int ,int const,int const,int const,int const) ;
 int _mm_load_ps (float const*) ;
 int _mm_max_ps (int ,int ) ;
 int _mm_set_ps (float,float,float,float) ;
 int abs_ps (int ) ;
 int hmax_ps (float,int ) ;

__attribute__((used)) static float get_true_peak(__m128 previous_samples, const float *samples,
      size_t nr_samples)
{



 const __m128 m3 =
  _mm_set_ps(-0.155915f, 0.935489f, 0.233872f, -0.103943f);
 const __m128 m1 =
  _mm_set_ps(-0.216236f, 0.756827f, 0.504551f, -0.189207f);
 const __m128 p1 =
  _mm_set_ps(-0.189207f, 0.504551f, 0.756827f, -0.216236f);
 const __m128 p3 =
  _mm_set_ps(-0.103943f, 0.233872f, 0.935489f, -0.155915f);

 __m128 work = previous_samples;
 __m128 peak = previous_samples;
 for (size_t i = 0; (i + 3) < nr_samples; i += 4) {
  __m128 new_work = _mm_load_ps(&samples[i]);
  __m128 intrp_samples;


  __m128 abs_new_work = abs_ps(new_work);
  peak = _mm_max_ps(peak, abs_new_work);


  SHIFT_RIGHT_2PS(new_work, work);
  VECTOR_MATRIX_CROSS_PS(intrp_samples, work, m3, m1, p1, p3);
  peak = _mm_max_ps(peak, abs_ps(intrp_samples));

  SHIFT_RIGHT_2PS(new_work, work);
  VECTOR_MATRIX_CROSS_PS(intrp_samples, work, m3, m1, p1, p3);
  peak = _mm_max_ps(peak, abs_ps(intrp_samples));

  SHIFT_RIGHT_2PS(new_work, work);
  VECTOR_MATRIX_CROSS_PS(intrp_samples, work, m3, m1, p1, p3);
  peak = _mm_max_ps(peak, abs_ps(intrp_samples));

  SHIFT_RIGHT_2PS(new_work, work);
  VECTOR_MATRIX_CROSS_PS(intrp_samples, work, m3, m1, p1, p3);
  peak = _mm_max_ps(peak, abs_ps(intrp_samples));
 }

 float r;
 hmax_ps(r, peak);
 return r;
}
