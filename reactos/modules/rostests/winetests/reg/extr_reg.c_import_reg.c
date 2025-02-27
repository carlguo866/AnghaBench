
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char const WCHAR ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 int CP_UTF8 ;
 scalar_t__ DeleteFileA (char*) ;
 scalar_t__ FALSE ;
 int GetLastError () ;
 int GetProcessHeap () ;
 char* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,char const*) ;
 int MultiByteToWideChar (int ,int ,char const*,int,char const*,int) ;
 int lok (scalar_t__,char*,int ) ;
 int run_reg_exe (char*,int *) ;
 int strlen (char const*) ;
 scalar_t__ write_file (char const*,int) ;

__attribute__((used)) static BOOL import_reg(unsigned line, const char *contents, BOOL unicode, DWORD *rc)
{
    int lenA;
    BOOL ret;

    lenA = strlen(contents);

    if (unicode)
    {
        int len = MultiByteToWideChar(CP_UTF8, 0, contents, lenA, ((void*)0), 0);
        int size = len * sizeof(WCHAR);
        WCHAR *wstr = HeapAlloc(GetProcessHeap(), 0, size);
        if (!wstr) return FALSE;
        MultiByteToWideChar(CP_UTF8, 0, contents, lenA, wstr, len);

        ret = write_file(wstr, size);
        HeapFree(GetProcessHeap(), 0, wstr);
    }
    else
        ret = write_file(contents, lenA);

    if (!ret) return FALSE;

    run_reg_exe("reg import test.reg", rc);

    ret = DeleteFileA("test.reg");
    lok(ret, "DeleteFile failed: %u\n", GetLastError());

    return ret;
}
