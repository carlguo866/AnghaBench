
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int Revision; } ;
struct TYPE_4__ {int member_0; } ;
typedef TYPE_1__ SID_IDENTIFIER_AUTHORITY ;
typedef TYPE_2__ SID ;
typedef int PSID ;
typedef int BOOL ;


 int AllocateAndInitializeSid (TYPE_1__*,int,int ,int ,int ,int ,int ,int ,int ,int ,int*) ;
 int DOMAIN_ALIAS_RID_ADMINS ;
 int ERROR_CALL_NOT_IMPLEMENTED ;
 int ERROR_SUCCESS ;
 int EqualSid (int,int) ;
 int FreeSid (int) ;
 int GetLastError () ;
 int SECURITY_BUILTIN_DOMAIN_RID ;
 int SECURITY_NT_AUTHORITY ;
 int SECURITY_WORLD_RID ;
 int SECURITY_WORLD_SID_AUTHORITY ;
 int SID_REVISION ;
 int SetLastError (int) ;
 scalar_t__ broken (int) ;
 int debugstr_sid (int) ;
 int ok (int,char*,...) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_EqualSid(void)
{
    PSID sid1, sid2;
    BOOL ret;
    SID_IDENTIFIER_AUTHORITY SIDAuthWorld = { SECURITY_WORLD_SID_AUTHORITY };
    SID_IDENTIFIER_AUTHORITY SIDAuthNT = { SECURITY_NT_AUTHORITY };

    SetLastError(0xdeadbeef);
    ret = AllocateAndInitializeSid(&SIDAuthNT, 2, SECURITY_BUILTIN_DOMAIN_RID,
        DOMAIN_ALIAS_RID_ADMINS, 0, 0, 0, 0, 0, 0, &sid1);
    if (!ret && GetLastError() == ERROR_CALL_NOT_IMPLEMENTED)
    {
        win_skip("AllocateAndInitializeSid is not implemented\n");
        return;
    }
    ok(ret, "AllocateAndInitializeSid failed with error %d\n", GetLastError());
    ok(GetLastError() == 0xdeadbeef,
       "AllocateAndInitializeSid shouldn't have set last error to %d\n",
       GetLastError());

    ret = AllocateAndInitializeSid(&SIDAuthWorld, 1, SECURITY_WORLD_RID,
        0, 0, 0, 0, 0, 0, 0, &sid2);
    ok(ret, "AllocateAndInitializeSid failed with error %d\n", GetLastError());

    SetLastError(0xdeadbeef);
    ret = EqualSid(sid1, sid2);
    ok(!ret, "World and domain admins sids shouldn't have been equal\n");
    ok(GetLastError() == ERROR_SUCCESS ||
       broken(GetLastError() == 0xdeadbeef),
       "EqualSid should have set last error to ERROR_SUCCESS instead of %d\n",
       GetLastError());

    SetLastError(0xdeadbeef);
    sid2 = FreeSid(sid2);
    ok(!sid2, "FreeSid should have returned NULL instead of %p\n", sid2);
    ok(GetLastError() == 0xdeadbeef,
       "FreeSid shouldn't have set last error to %d\n",
       GetLastError());

    ret = AllocateAndInitializeSid(&SIDAuthNT, 2, SECURITY_BUILTIN_DOMAIN_RID,
        DOMAIN_ALIAS_RID_ADMINS, 0, 0, 0, 0, 0, 0, &sid2);
    ok(ret, "AllocateAndInitializeSid failed with error %d\n", GetLastError());

    SetLastError(0xdeadbeef);
    ret = EqualSid(sid1, sid2);
    ok(ret, "Same sids should have been equal %s != %s\n",
       debugstr_sid(sid1), debugstr_sid(sid2));
    ok(GetLastError() == ERROR_SUCCESS ||
       broken(GetLastError() == 0xdeadbeef),
       "EqualSid should have set last error to ERROR_SUCCESS instead of %d\n",
       GetLastError());

    ((SID *)sid2)->Revision = 2;
    SetLastError(0xdeadbeef);
    ret = EqualSid(sid1, sid2);
    ok(!ret, "EqualSid with invalid sid should have returned FALSE\n");
    ok(GetLastError() == ERROR_SUCCESS ||
       broken(GetLastError() == 0xdeadbeef),
       "EqualSid should have set last error to ERROR_SUCCESS instead of %d\n",
       GetLastError());
    ((SID *)sid2)->Revision = SID_REVISION;

    FreeSid(sid1);
    FreeSid(sid2);
}
