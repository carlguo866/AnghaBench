
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef scalar_t__ PDH_STATUS ;


 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ PDH_CSTATUS_BAD_COUNTERNAME ;
 scalar_t__ PDH_CSTATUS_NO_COUNTER ;
 scalar_t__ PDH_INVALID_ARGUMENT ;
 char const* nonexistent_counter ;
 int ok (int,char*,scalar_t__) ;
 scalar_t__ pPdhValidatePathExW (int *,char const*) ;
 char const* system_uptime ;
 char const* uptime ;

__attribute__((used)) static void test_PdhValidatePathExW( void )
{
    PDH_STATUS ret;

    static const WCHAR empty[] = {0};
    static const WCHAR system[] = {'\\','S','y','s','t','e','m',0};

    ret = pPdhValidatePathExW( ((void*)0), ((void*)0) );
    ok(ret == PDH_INVALID_ARGUMENT, "PdhValidatePathExW failed 0x%08x\n", ret);

    ret = pPdhValidatePathExW( ((void*)0), empty );
    ok(ret == PDH_INVALID_ARGUMENT, "PdhValidatePathExW failed 0x%08x\n", ret);

    ret = pPdhValidatePathExW( ((void*)0), system );
    ok(ret == PDH_CSTATUS_BAD_COUNTERNAME, "PdhValidatePathExW failed 0x%08x\n", ret);

    ret = pPdhValidatePathExW( ((void*)0), uptime );
    ok(ret == PDH_CSTATUS_BAD_COUNTERNAME, "PdhValidatePathExW failed 0x%08x\n", ret);

    ret = pPdhValidatePathExW( ((void*)0), nonexistent_counter );
    ok(ret == PDH_CSTATUS_NO_COUNTER, "PdhValidatePathExW failed 0x%08x\n", ret);

    ret = pPdhValidatePathExW( ((void*)0), system_uptime );
    ok(ret == ERROR_SUCCESS, "PdhValidatePathExW failed 0x%08x\n", ret);
}
