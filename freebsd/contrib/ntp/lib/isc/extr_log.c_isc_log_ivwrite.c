
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef int isc_msgcat_t ;
typedef int isc_logmodule_t ;
typedef int isc_logcategory_t ;
typedef int isc_log_t ;


 int ISC_FALSE ;
 int isc_log_doit (int *,int *,int *,int,int ,int *,int,int,char const*,int ) ;

void
isc_log_ivwrite(isc_log_t *lctx, isc_logcategory_t *category,
        isc_logmodule_t *module, int level,
        isc_msgcat_t *msgcat, int msgset, int msg,
        const char *format, va_list args)
{



 isc_log_doit(lctx, category, module, level, ISC_FALSE,
       msgcat, msgset, msg, format, args);
}
