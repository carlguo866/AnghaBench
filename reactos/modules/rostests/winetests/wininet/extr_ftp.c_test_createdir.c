
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * HINTERNET ;
typedef scalar_t__ BOOL ;


 scalar_t__ ERROR_INTERNET_EXTENDED_ERROR ;
 scalar_t__ ERROR_INTERNET_INCORRECT_HANDLE_TYPE ;
 scalar_t__ ERROR_INVALID_HANDLE ;
 scalar_t__ ERROR_INVALID_PARAMETER ;
 scalar_t__ FALSE ;
 scalar_t__ FtpCreateDirectoryA (int *,char*) ;
 scalar_t__ GetLastError () ;
 int SetLastError (int) ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_createdir(HINTERNET hFtp, HINTERNET hConnect)
{
    BOOL bRet;


    SetLastError(0xdeadbeef);
    bRet = FtpCreateDirectoryA(((void*)0), "new_directory_deadbeef");
    ok ( bRet == FALSE, "Expected FtpCreateDirectoryA to fail\n");
    ok ( GetLastError() == ERROR_INVALID_HANDLE,
        "Expected ERROR_INVALID_HANDLE, got %d\n", GetLastError());


    SetLastError(0xdeadbeef);
    bRet = FtpCreateDirectoryA(hFtp, ((void*)0));
    ok ( bRet == FALSE, "Expected FtpCreateDirectoryA to fail\n");
    ok ( GetLastError() == ERROR_INVALID_PARAMETER,
        "Expected ERROR_INVALID_PARAMETER, got %d\n", GetLastError());


    SetLastError(0xdeadbeef);
    bRet = FtpCreateDirectoryA(hFtp, "new_directory_deadbeef");
    ok ( bRet == FALSE, "Expected FtpCreateDirectoryA to fail\n");
    ok ( GetLastError() == ERROR_INTERNET_EXTENDED_ERROR,
        "Expected ERROR_INTERNET_EXTENDED_ERROR, got %d\n", GetLastError());


    SetLastError(0xdeadbeef);
    bRet = FtpCreateDirectoryA(hConnect, ((void*)0));
    ok ( bRet == FALSE, "Expected FtpCreateDirectoryA to fail\n");
    ok ( GetLastError() == ERROR_INTERNET_INCORRECT_HANDLE_TYPE,
        "Expected ERROR_INTERNET_INCORRECT_HANDLE_TYPE, got %d\n", GetLastError());

    SetLastError(0xdeadbeef);
    bRet = FtpCreateDirectoryA(hConnect, "new_directory_deadbeef");
    ok ( bRet == FALSE, "Expected FtpCreateDirectoryA to fail\n");
    ok ( GetLastError() == ERROR_INTERNET_INCORRECT_HANDLE_TYPE,
        "Expected ERROR_INTERNET_INCORRECT_HANDLE_TYPE, got %d\n", GetLastError());
}
