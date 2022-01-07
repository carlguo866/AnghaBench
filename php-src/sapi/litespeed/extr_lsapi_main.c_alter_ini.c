
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_string ;


 int PHP_INI_STAGE_ACTIVATE ;
 int PHP_INI_STAGE_HTACCESS ;
 int PHP_INI_STAGE_RUNTIME ;
 int ZEND_INI_PERDIR ;
 int ZEND_INI_SYSTEM ;
 scalar_t__ engine ;
 int mod_lsapi_mode ;
 scalar_t__ strncasecmp (char const*,char*,int) ;
 int zend_alter_ini_entry_chars (int *,char*,int,int,int) ;
 int * zend_string_init (char const*,int,int) ;
 int zend_string_release_ex (int *,int) ;

__attribute__((used)) static int alter_ini( const char * pKey, int keyLen, const char * pValue, int valLen,
                void * arg )
{
    zend_string * psKey;

    int type = ZEND_INI_PERDIR;
    int stage = PHP_INI_STAGE_RUNTIME;
    if ( '\001' == *pKey ) {
        ++pKey;
        if ( *pKey == 4 ) {
            type = ZEND_INI_SYSTEM;






            if(!mod_lsapi_mode)
            {
                stage = PHP_INI_STAGE_ACTIVATE;
            }
        }
        else
        {
            stage = PHP_INI_STAGE_HTACCESS;
        }
        ++pKey;
        --keyLen;
        if (( keyLen == 7 )&&( strncasecmp( pKey, "engine", 6 )== 0 ))
        {
            if ( *pValue == '0' )
                engine = 0;
        }
        else
        {
            --keyLen;
            psKey = zend_string_init(pKey, keyLen, 1);
            zend_alter_ini_entry_chars(psKey,
                             (char *)pValue, valLen,
                             type, stage);
            zend_string_release_ex(psKey, 1);
        }
    }
    return 1;
}
