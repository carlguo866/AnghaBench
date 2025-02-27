
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;


 int DeleteFileA (char*) ;
 scalar_t__ GetFileAttributesA (char*) ;
 scalar_t__ INVALID_FILE_ATTRIBUTES ;
 int RemoveDirectoryA (char*) ;
 int ok (int,char*,...) ;
 int runcmd (char*) ;

__attribute__((used)) static void test_parms_syntax(void)
{
    DWORD rc;

    rc = runcmd("xcopy /H/D:20-01-2000 xcopy1 xcopytest");
    ok(rc == 4, "xcopy /H/D:d-m-y test returned rc=%u\n", rc);
    ok(GetFileAttributesA("xcopytest\\xcopy1") == INVALID_FILE_ATTRIBUTES,
       "xcopy should not have created xcopytest\\xcopy1\n");

    rc = runcmd("xcopy /D:01-20-2000/H xcopy1 xcopytest");
    ok(rc == 0, "xcopy /H/D:m-d-y test failed rc=%u\n", rc);
    ok(GetFileAttributesA("xcopytest\\xcopy1") != INVALID_FILE_ATTRIBUTES,
       "xcopy did not create xcopytest\\xcopy1\n");
    DeleteFileA("xcopytest\\xcopy1");
    rc = runcmd("xcopy /D/S xcopytest xcopytest2\\");
    ok(rc == 0, "xcopy /D/S test failed rc=%u\n", rc);
    ok(GetFileAttributesA("xcopytest2") == INVALID_FILE_ATTRIBUTES,
       "xcopy copied empty directory incorrectly\n");

    rc = runcmd("xcopy /D/S/E xcopytest xcopytest2\\");
    ok(rc == 0, "xcopy /D/S/E test failed rc=%u\n", rc);
    ok(GetFileAttributesA("xcopytest2") != INVALID_FILE_ATTRIBUTES,
       "xcopy failed to copy empty directory\n");
    RemoveDirectoryA("xcopytest2");
}
