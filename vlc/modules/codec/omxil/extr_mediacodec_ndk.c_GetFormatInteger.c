
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_3__ {int (* getInt32 ) (int *,char const*,int *) ;} ;
struct TYPE_4__ {TYPE_1__ AMediaFormat; } ;
typedef int AMediaFormat ;


 int stub1 (int *,char const*,int *) ;
 TYPE_2__ syms ;

__attribute__((used)) static int32_t GetFormatInteger(AMediaFormat *p_format, const char *psz_name)
{
    int32_t i_out = 0;
    syms.AMediaFormat.getInt32(p_format, psz_name, &i_out);
    return i_out;
}
