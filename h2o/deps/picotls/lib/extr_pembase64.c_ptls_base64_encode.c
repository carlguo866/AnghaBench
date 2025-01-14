
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 char* ptls_base64_alphabet ;
 int ptls_base64_cell (int const*,char*) ;

int ptls_base64_encode(const uint8_t *data, size_t data_len, char *ptls_base64_text)
{
    int l = 0;
    int lt = 0;

    while ((data_len - l) >= 3) {
        ptls_base64_cell(data + l, ptls_base64_text + lt);
        l += 3;
        lt += 4;
    }

    switch (data_len - l) {
    case 0:
        break;
    case 1:
        ptls_base64_text[lt++] = ptls_base64_alphabet[data[l] >> 2];
        ptls_base64_text[lt++] = ptls_base64_alphabet[(data[l] & 3) << 4];
        ptls_base64_text[lt++] = '=';
        ptls_base64_text[lt++] = '=';
        break;
    case 2:
        ptls_base64_text[lt++] = ptls_base64_alphabet[data[l] >> 2];
        ptls_base64_text[lt++] = ptls_base64_alphabet[((data[l] & 3) << 4) | (data[l + 1] >> 4)];
        ptls_base64_text[lt++] = ptls_base64_alphabet[((data[l + 1] & 15) << 2)];
        ptls_base64_text[lt++] = '=';
        break;
    default:
        break;
    }
    ptls_base64_text[lt++] = 0;

    return lt;
}
