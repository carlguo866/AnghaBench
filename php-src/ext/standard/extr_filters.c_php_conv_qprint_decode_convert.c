
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int lb_ptr; unsigned int lb_cnt; unsigned int scan_stat; unsigned int next_char; unsigned int lbchars_len; scalar_t__* lbchars; } ;
typedef TYPE_1__ php_conv_qprint_decode ;
typedef int php_conv_err_t ;


 int PHP_CONV_ERR_INVALID_SEQ ;
 int PHP_CONV_ERR_SUCCESS ;
 int PHP_CONV_ERR_TOO_BIG ;
 int PHP_CONV_ERR_UNEXPECTED_EOS ;
 int isxdigit (int) ;

__attribute__((used)) static php_conv_err_t php_conv_qprint_decode_convert(php_conv_qprint_decode *inst, const char **in_pp, size_t *in_left_p, char **out_pp, size_t *out_left_p)
{
 php_conv_err_t err = PHP_CONV_ERR_SUCCESS;
 size_t icnt, ocnt;
 unsigned char *ps, *pd;
 unsigned int scan_stat;
 unsigned int next_char;
 unsigned int lb_ptr, lb_cnt;

 lb_ptr = inst->lb_ptr;
 lb_cnt = inst->lb_cnt;

 if ((in_pp == ((void*)0) || in_left_p == ((void*)0)) && lb_cnt == lb_ptr) {
  if (inst->scan_stat != 0) {
   return PHP_CONV_ERR_UNEXPECTED_EOS;
  }
  return PHP_CONV_ERR_SUCCESS;
 }

 ps = (unsigned char *)(*in_pp);
 icnt = *in_left_p;
 pd = (unsigned char *)(*out_pp);
 ocnt = *out_left_p;
 scan_stat = inst->scan_stat;
 next_char = inst->next_char;

 for (;;) {
  switch (scan_stat) {
   case 0: {
    if (icnt == 0) {
     goto out;
    }
    if (*ps == '=') {
     scan_stat = 1;
    } else {
     if (ocnt < 1) {
      err = PHP_CONV_ERR_TOO_BIG;
      goto out;
     }
     *(pd++) = *ps;
     ocnt--;
    }
    ps++, icnt--;
   } break;

   case 1: {
    if (icnt == 0) {
     goto out;
    }
    if (*ps == ' ' || *ps == '\t') {
     scan_stat = 4;
     ps++, icnt--;
     break;
    } else if (!inst->lbchars && lb_cnt == 0 && *ps == '\r') {

     lb_cnt++;
     scan_stat = 5;
     ps++, icnt--;
     break;
    } else if (!inst->lbchars && lb_cnt == 0 && *ps == '\n') {

     lb_cnt = lb_ptr = 0;
     scan_stat = 0;
     ps++, icnt--;
     break;
    } else if (lb_cnt < inst->lbchars_len &&
       *ps == (unsigned char)inst->lbchars[lb_cnt]) {
     lb_cnt++;
     scan_stat = 5;
     ps++, icnt--;
     break;
    }
   }

   case 2: {
    if (icnt == 0) {
     goto out;
    }

    if (!isxdigit((int) *ps)) {
     err = PHP_CONV_ERR_INVALID_SEQ;
     goto out;
    }
    next_char = (next_char << 4) | (*ps >= 'A' ? *ps - 0x37 : *ps - 0x30);
    scan_stat++;
    ps++, icnt--;
    if (scan_stat != 3) {
     break;
    }
   }

   case 3: {
    if (ocnt < 1) {
     err = PHP_CONV_ERR_TOO_BIG;
     goto out;
    }
    *(pd++) = next_char;
    ocnt--;
    scan_stat = 0;
   } break;

   case 4: {
    if (icnt == 0) {
     goto out;
    }
    if (lb_cnt < inst->lbchars_len &&
     *ps == (unsigned char)inst->lbchars[lb_cnt]) {
     lb_cnt++;
     scan_stat = 5;
    }
    if (*ps != '\t' && *ps != ' ') {
     err = PHP_CONV_ERR_INVALID_SEQ;
     goto out;
    }
    ps++, icnt--;
   } break;

   case 5: {
    if (!inst->lbchars && lb_cnt == 1 && *ps == '\n') {

     lb_cnt = lb_ptr = 0;
     scan_stat = 0;
     ps++, icnt--;
    } else if (!inst->lbchars && lb_cnt > 0) {

     lb_cnt = lb_ptr = 0;
     scan_stat = 0;
    } else if (lb_cnt >= inst->lbchars_len) {

     lb_cnt = lb_ptr = 0;
     scan_stat = 0;
    } else if (icnt > 0) {
     if (*ps == (unsigned char)inst->lbchars[lb_cnt]) {
      lb_cnt++;
      ps++, icnt--;
     } else {
      scan_stat = 6;
     }
    } else {
     goto out;
    }
   } break;

   case 6: {
    if (lb_ptr < lb_cnt) {
     if (ocnt < 1) {
      err = PHP_CONV_ERR_TOO_BIG;
      goto out;
     }
     *(pd++) = inst->lbchars[lb_ptr++];
     ocnt--;
    } else {
     scan_stat = 0;
     lb_cnt = lb_ptr = 0;
    }
   } break;
  }
 }
out:
 *in_pp = (const char *)ps;
 *in_left_p = icnt;
 *out_pp = (char *)pd;
 *out_left_p = ocnt;
 inst->scan_stat = scan_stat;
 inst->lb_ptr = lb_ptr;
 inst->lb_cnt = lb_cnt;
 inst->next_char = next_char;

 return err;
}
