
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int type_t ;


 unsigned char FC_BIND_PRIMITIVE ;
 unsigned char FC_BYTE ;
 unsigned char FC_CHAR ;
 unsigned char FC_DOUBLE ;
 unsigned char FC_ERROR_STATUS_T ;
 unsigned char FC_FLOAT ;
 unsigned char FC_HYPER ;
 unsigned char FC_INT3264 ;
 unsigned char FC_LONG ;
 unsigned char FC_SHORT ;
 unsigned char FC_SMALL ;
 unsigned char FC_WCHAR ;
 int type_basic_get_type (int const*) ;

__attribute__((used)) static unsigned char get_basic_fc_signed(const type_t *type)
{
    switch (type_basic_get_type(type))
    {
    case 130: return FC_SMALL;
    case 134: return FC_SHORT;
    case 133: return FC_LONG;
    case 131: return FC_HYPER;
    case 135: return FC_LONG;
    case 132: return FC_INT3264;
    case 129: return FC_LONG;
    case 142: return FC_BYTE;
    case 141: return FC_CHAR;
    case 128: return FC_WCHAR;
    case 136: return FC_HYPER;
    case 138: return FC_FLOAT;
    case 140: return FC_DOUBLE;
    case 139: return FC_ERROR_STATUS_T;
    case 137: return FC_BIND_PRIMITIVE;
    }
    return 0;
}
