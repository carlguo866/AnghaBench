
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_value ;
typedef int strm_stream ;


 int STRM_OK ;
 double sqrt (double) ;
 int strm_array_p (int ) ;
 int strm_ary_len (int ) ;
 int * strm_ary_ptr (int ) ;
 int strm_float_value (double) ;
 int strm_get_args (int *,int,int *,char*,int **,int*) ;
 double strm_value_float (int ) ;

__attribute__((used)) static int
ary_correl(strm_stream* strm, int argc, strm_value* args, strm_value* ret)
{
  strm_value* v;
  int i, len;
  double sx, sy, sxx, syy, sxy;

  strm_get_args(strm, argc, args, "a", &v, &len);
  sx = sy = sxx = syy = sxy = 0;
  for (i=0; i<len; i++) {
    strm_value data = v[i];
    strm_value* dv;
    double dx, dy;

    if (!strm_array_p(data) || strm_ary_len(data) != 2) {

      continue;
    }
    dv = strm_ary_ptr(data);
    dx = strm_value_float(dv[0]) - sx; sx += dx / (i+1);
    dy = strm_value_float(dv[1]) - sy; sy += dy / (i+1);
    sxx += i * dx * dx / (i+1);
    syy += i * dy * dy / (i+1);
    sxy += i * dx * dy / (i+1);
  }
  sxx = sqrt(sxx / (len-1));
  syy = sqrt(syy / (len-1));
  sxy /= (len-1) * sxx * syy;
  *ret = strm_float_value(sxy);
  return STRM_OK;
}
