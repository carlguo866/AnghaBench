
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int increment_t ;
struct TYPE_3__ {int b_current; int channels; double* coeffs; double* buffer; int coeff_half_len; } ;
typedef TYPE_1__ SINC_FILTER ;


 int MAKE_INCREMENT_T (int ) ;
 double fp_to_double (int) ;
 int fp_to_int (int) ;
 int int_to_fp (int ) ;

__attribute__((used)) static inline void
calc_output_stereo (SINC_FILTER *filter, increment_t increment, increment_t start_filter_index, double scale, float * output)
{ double fraction, left [2], right [2], icoeff ;
 increment_t filter_index, max_filter_index ;
 int data_index, coeff_count, indx ;


 max_filter_index = int_to_fp (filter->coeff_half_len) ;


 filter_index = start_filter_index ;
 coeff_count = (max_filter_index - filter_index) / increment ;
 filter_index = filter_index + coeff_count * increment ;
 data_index = filter->b_current - filter->channels * coeff_count ;

 left [0] = left [1] = 0.0 ;
 do
 { fraction = fp_to_double (filter_index) ;
  indx = fp_to_int (filter_index) ;

  icoeff = filter->coeffs [indx] + fraction * (filter->coeffs [indx + 1] - filter->coeffs [indx]) ;

  left [0] += icoeff * filter->buffer [data_index] ;
  left [1] += icoeff * filter->buffer [data_index + 1] ;

  filter_index -= increment ;
  data_index = data_index + 2 ;
  }
 while (filter_index >= MAKE_INCREMENT_T (0)) ;


 filter_index = increment - start_filter_index ;
 coeff_count = (max_filter_index - filter_index) / increment ;
 filter_index = filter_index + coeff_count * increment ;
 data_index = filter->b_current + filter->channels * (1 + coeff_count) ;

 right [0] = right [1] = 0.0 ;
 do
 { fraction = fp_to_double (filter_index) ;
  indx = fp_to_int (filter_index) ;

  icoeff = filter->coeffs [indx] + fraction * (filter->coeffs [indx + 1] - filter->coeffs [indx]) ;

  right [0] += icoeff * filter->buffer [data_index] ;
  right [1] += icoeff * filter->buffer [data_index + 1] ;

  filter_index -= increment ;
  data_index = data_index - 2 ;
  }
 while (filter_index > MAKE_INCREMENT_T (0)) ;

 output [0] = scale * (left [0] + right [0]) ;
 output [1] = scale * (left [1] + right [1]) ;
}
