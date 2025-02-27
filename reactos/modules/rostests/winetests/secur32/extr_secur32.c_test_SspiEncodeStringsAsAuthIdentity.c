
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char WCHAR ;
typedef scalar_t__ SECURITY_STATUS ;
typedef int * PSEC_WINNT_AUTH_IDENTITY_OPAQUE ;


 scalar_t__ SEC_E_INVALID_TOKEN ;
 scalar_t__ SEC_E_OK ;
 int lstrcmpW (unsigned char const*,unsigned char const*) ;
 int ok (int,char*,...) ;
 scalar_t__ pSspiEncodeAuthIdentityAsStrings (int *,unsigned char const**,unsigned char const**,unsigned char const**) ;
 scalar_t__ pSspiEncodeStringsAsAuthIdentity (unsigned char const*,unsigned char const*,unsigned char const*,int **) ;
 int pSspiFreeAuthIdentity (int *) ;
 int pSspiLocalFree (void*) ;
 int pSspiZeroAuthIdentity (int *) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_SspiEncodeStringsAsAuthIdentity(void)
{
    static const WCHAR username[] = {'u','s','e','r','n','a','m','e',0};
    static const WCHAR domainname[] = {'d','o','m','a','i','n','n','a','m','e',0};
    static const WCHAR password[] = {'p','a','s','s','w','o','r','d',0};
    const WCHAR *username_ptr, *domainname_ptr, *password_ptr;
    PSEC_WINNT_AUTH_IDENTITY_OPAQUE id;
    SECURITY_STATUS status;

    if (!pSspiEncodeStringsAsAuthIdentity)
    {
        win_skip( "SspiEncodeAuthIdentityAsStrings not exported by secur32.dll\n" );
        return;
    }

    status = pSspiEncodeStringsAsAuthIdentity( ((void*)0), ((void*)0), ((void*)0), ((void*)0) );
    ok( status == SEC_E_INVALID_TOKEN, "got %08x\n", status );

    id = (PSEC_WINNT_AUTH_IDENTITY_OPAQUE)0xdeadbeef;
    status = pSspiEncodeStringsAsAuthIdentity( ((void*)0), ((void*)0), ((void*)0), &id );
    ok( status == SEC_E_INVALID_TOKEN, "got %08x\n", status );
    ok( id == (PSEC_WINNT_AUTH_IDENTITY_OPAQUE)0xdeadbeef, "id set\n" );

    id = ((void*)0);
    status = pSspiEncodeStringsAsAuthIdentity( ((void*)0), ((void*)0), password, &id );
    ok( status == SEC_E_OK, "got %08x\n", status );
    ok( id != ((void*)0), "id not set\n" );
    pSspiFreeAuthIdentity( id );

    id = ((void*)0);
    status = pSspiEncodeStringsAsAuthIdentity( ((void*)0), domainname, password, &id );
    ok( status == SEC_E_OK, "got %08x\n", status );
    ok( id != ((void*)0), "id not set\n" );
    pSspiFreeAuthIdentity( id );

    id = ((void*)0);
    status = pSspiEncodeStringsAsAuthIdentity( username, ((void*)0), password, &id );
    ok( status == SEC_E_OK, "got %08x\n", status );
    ok( id != ((void*)0), "id not set\n" );
    pSspiFreeAuthIdentity( id );

    id = ((void*)0);
    status = pSspiEncodeStringsAsAuthIdentity( username, ((void*)0), ((void*)0), &id );
    ok( status == SEC_E_OK, "got %08x\n", status );
    ok( id != ((void*)0), "id not set\n" );
    pSspiFreeAuthIdentity( id );

    id = ((void*)0);
    status = pSspiEncodeStringsAsAuthIdentity( username, domainname, password, &id );
    ok( status == SEC_E_OK, "got %08x\n", status );
    ok( id != ((void*)0), "id not set\n" );

    username_ptr = domainname_ptr = password_ptr = ((void*)0);
    status = pSspiEncodeAuthIdentityAsStrings( id, &username_ptr, &domainname_ptr, &password_ptr );
    ok( status == SEC_E_OK, "got %08x\n", status );
    ok( !lstrcmpW( username, username_ptr ), "wrong username\n" );
    ok( !lstrcmpW( domainname, domainname_ptr ), "wrong domainname\n" );
    ok( !lstrcmpW( password, password_ptr ), "wrong password\n" );

    pSspiZeroAuthIdentity( id );

    pSspiLocalFree( (void *)username_ptr );
    pSspiLocalFree( (void *)domainname_ptr );
    pSspiLocalFree( (void *)password_ptr );
    pSspiFreeAuthIdentity( id );

    id = ((void*)0);
    status = pSspiEncodeStringsAsAuthIdentity( username, ((void*)0), password, &id );
    ok( status == SEC_E_OK, "got %08x\n", status );
    ok( id != ((void*)0), "id not set\n" );

    username_ptr = password_ptr = ((void*)0);
    domainname_ptr = (const WCHAR *)0xdeadbeef;
    status = pSspiEncodeAuthIdentityAsStrings( id, &username_ptr, &domainname_ptr, &password_ptr );
    ok( status == SEC_E_OK, "got %08x\n", status );
    ok( !lstrcmpW( username, username_ptr ), "wrong username\n" );
    ok( domainname_ptr == ((void*)0), "domainname_ptr not cleared\n" );
    ok( !lstrcmpW( password, password_ptr ), "wrong password\n" );

    pSspiLocalFree( (void *)username_ptr );
    pSspiLocalFree( (void *)password_ptr );
    pSspiFreeAuthIdentity( id );
}
