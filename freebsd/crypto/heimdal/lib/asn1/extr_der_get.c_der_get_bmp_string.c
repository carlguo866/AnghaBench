
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t length; unsigned char* data; } ;
typedef TYPE_1__ heim_bmp_string ;


 int ASN1_BAD_CHARACTER ;
 int ASN1_BAD_FORMAT ;
 int ENOMEM ;
 int ERANGE ;
 int UINT_MAX ;
 int free (unsigned char*) ;
 unsigned char* malloc (int) ;

int
der_get_bmp_string (const unsigned char *p, size_t len,
      heim_bmp_string *data, size_t *size)
{
    size_t i;

    if (len & 1)
 return ASN1_BAD_FORMAT;
    data->length = len / 2;
    if (data->length > UINT_MAX/sizeof(data->data[0]))
 return ERANGE;
    data->data = malloc(data->length * sizeof(data->data[0]));
    if (data->data == ((void*)0) && data->length != 0)
 return ENOMEM;

    for (i = 0; i < data->length; i++) {
 data->data[i] = (p[0] << 8) | p[1];
 p += 2;

 if (data->data[i] == 0 && i != (data->length - 1)) {
     free(data->data);
     data->data = ((void*)0);
     data->length = 0;
     return ASN1_BAD_CHARACTER;
 }
    }
    if (size) *size = len;

    return 0;
}
