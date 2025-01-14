
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef char WCHAR ;
struct TYPE_4__ {int hdr; } ;
typedef TYPE_1__ MSIRECORD ;
typedef int MSIDATABASE ;
typedef int * LPWSTR ;


 scalar_t__ IDS_ERROR_BASE ;
 int LoadStringW (int ,scalar_t__,int *,int) ;
 TYPE_1__* MSI_QueryGetRecord (int *,char const*,int) ;
 int * msi_alloc (int) ;
 int * msi_dup_record_field (TYPE_1__*,int) ;
 int msi_hInstance ;
 int msiobj_release (int *) ;

LPWSTR msi_get_error_message(MSIDATABASE *db, int error)
{
    static const WCHAR query[] =
        {'S','E','L','E','C','T',' ','`','M','e','s','s','a','g','e','`',' ',
         'F','R','O','M',' ','`','E','r','r','o','r','`',' ','W','H','E','R','E',' ',
         '`','E','r','r','o','r','`',' ','=',' ','%','i',0};
    MSIRECORD *record;
    LPWSTR ret = ((void*)0);

    if ((record = MSI_QueryGetRecord(db, query, error)))
    {
        ret = msi_dup_record_field(record, 1);
        msiobj_release(&record->hdr);
    }
    else if (error < 2000)
    {
        int len = LoadStringW(msi_hInstance, IDS_ERROR_BASE + error, (LPWSTR) &ret, 0);
        if (len)
        {
            ret = msi_alloc((len + 1) * sizeof(WCHAR));
            LoadStringW(msi_hInstance, IDS_ERROR_BASE + error, ret, len + 1);
        }
        else
            ret = ((void*)0);
    }

    return ret;
}
