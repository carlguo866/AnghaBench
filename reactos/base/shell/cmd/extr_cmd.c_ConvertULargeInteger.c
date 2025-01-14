
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONGLONG ;
typedef int UINT ;
typedef scalar_t__ TCHAR ;
typedef scalar_t__* LPTSTR ;
typedef int INT ;
typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;
 scalar_t__ _T (char) ;
 scalar_t__ cThousandSeparator ;
 int memcpy (scalar_t__*,scalar_t__*,int) ;
 int nNumberGroups ;

INT
ConvertULargeInteger(ULONGLONG num, LPTSTR des, UINT len, BOOL bPutSeparator)
{
    TCHAR temp[39];
    UINT n, iTarget;

    if (len <= 1)
        return 0;

    n = 0;
    iTarget = nNumberGroups;
    if (!nNumberGroups)
        bPutSeparator = FALSE;

    do
    {
        if (iTarget == n && bPutSeparator)
        {
            iTarget += nNumberGroups + 1;
            temp[38 - n++] = cThousandSeparator;
        }
        temp[38 - n++] = (TCHAR)(num % 10) + _T('0');
        num /= 10;
    } while (num > 0);
    if (n > len-1)
        n = len-1;

    memcpy(des, temp + 39 - n, n * sizeof(TCHAR));
    des[n] = _T('\0');

    return n;
}
