
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int len; scalar_t__ buf; } ;
typedef TYPE_1__ vstr_t ;
typedef int mp_uint_t ;
typedef int mp_obj_t ;
struct TYPE_7__ {int len; int* buf; } ;
typedef TYPE_2__ mp_buffer_info_t ;
typedef int byte ;


 int MP_BUFFER_READ ;
 int mp_get_buffer_raise (int ,TYPE_2__*,int ) ;
 int mp_obj_new_str_from_vstr (int *,TYPE_1__*) ;
 int mp_type_bytes ;
 int vstr_init_len (TYPE_1__*,int) ;

mp_obj_t mod_binascii_b2a_base64(mp_obj_t data) {
    mp_buffer_info_t bufinfo;
    mp_get_buffer_raise(data, &bufinfo, MP_BUFFER_READ);

    vstr_t vstr;
    vstr_init_len(&vstr, ((bufinfo.len != 0) ? (((bufinfo.len - 1) / 3) + 1) * 4 : 0) + 1);


    byte *in = bufinfo.buf, *out = (byte*)vstr.buf;
    mp_uint_t i;
    for (i = bufinfo.len; i >= 3; i -= 3) {
        *out++ = (in[0] & 0xFC) >> 2;
        *out++ = (in[0] & 0x03) << 4 | (in[1] & 0xF0) >> 4;
        *out++ = (in[1] & 0x0F) << 2 | (in[2] & 0xC0) >> 6;
        *out++ = in[2] & 0x3F;
        in += 3;
    }
    if (i != 0) {
        *out++ = (in[0] & 0xFC) >> 2;
        if (i == 2) {
            *out++ = (in[0] & 0x03) << 4 | (in[1] & 0xF0) >> 4;
            *out++ = (in[1] & 0x0F) << 2;
        }
        else {
            *out++ = (in[0] & 0x03) << 4;
            *out++ = 64;
        }
        *out = 64;
    }


    out = (byte*)vstr.buf;
    for (mp_uint_t j = vstr.len - 1; j--;) {
        if (*out < 26) {
            *out += 'A';
        } else if (*out < 52) {
            *out += 'a' - 26;
        } else if (*out < 62) {
            *out += '0' - 52;
        } else if (*out == 62) {
            *out ='+';
        } else if (*out == 63) {
            *out = '/';
        } else {
            *out = '=';
        }
        out++;
    }
    *out = '\n';
    return mp_obj_new_str_from_vstr(&mp_type_bytes, &vstr);
}
