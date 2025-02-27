
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int buffer ;
typedef scalar_t__ USHORT ;
typedef int ULONG ;
struct TYPE_5__ {int s_b1; int s_b2; int s_b3; int s_b4; } ;
struct TYPE_6__ {TYPE_1__ S_un_b; } ;
struct TYPE_7__ {TYPE_2__ S_un; } ;
typedef scalar_t__ NTSTATUS ;
typedef char* LPSTR ;
typedef TYPE_3__ IN_ADDR ;
typedef int DWORD ;
typedef char CHAR ;


 scalar_t__ STATUS_INVALID_PARAMETER ;
 scalar_t__ STATUS_SUCCESS ;
 scalar_t__ htons (int) ;
 int memset (char*,char,int) ;
 int ok (int,char*,scalar_t__,...) ;
 scalar_t__ pRtlIpv4AddressToStringExA (TYPE_3__*,scalar_t__,char*,int*) ;
 int strcmp (char*,char*) ;
 int strlen (char*) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_RtlIpv4AddressToStringEx(void)
{
    CHAR ip_1234[] = "1.2.3.4";
    CHAR ip_1234_80[] = "1.2.3.4:80";
    LPSTR expect;
    CHAR buffer[30];
    NTSTATUS res;
    IN_ADDR ip;
    ULONG size;
    DWORD used;
    USHORT port;

    if (!pRtlIpv4AddressToStringExA)
    {
        win_skip("RtlIpv4AddressToStringExA not available\n");
        return;
    }

    ip.S_un.S_un_b.s_b1 = 1;
    ip.S_un.S_un_b.s_b2 = 2;
    ip.S_un.S_un_b.s_b3 = 3;
    ip.S_un.S_un_b.s_b4 = 4;

    port = htons(80);
    expect = ip_1234_80;

    size = sizeof(buffer);
    memset(buffer, '#', sizeof(buffer) - 1);
    buffer[sizeof(buffer) -1] = 0;
    res = pRtlIpv4AddressToStringExA(&ip, port, buffer, &size);
    used = strlen(buffer);
    ok( (res == STATUS_SUCCESS) &&
        (size == strlen(expect) + 1) && !strcmp(buffer, expect),
        "got 0x%x and size %d with '%s'\n", res, size, buffer);

    size = used + 1;
    memset(buffer, '#', sizeof(buffer) - 1);
    buffer[sizeof(buffer) -1] = 0;
    res = pRtlIpv4AddressToStringExA(&ip, port, buffer, &size);
    ok( (res == STATUS_SUCCESS) &&
        (size == strlen(expect) + 1) && !strcmp(buffer, expect),
        "got 0x%x and size %d with '%s'\n", res, size, buffer);

    size = used;
    memset(buffer, '#', sizeof(buffer) - 1);
    buffer[sizeof(buffer) -1] = 0;
    res = pRtlIpv4AddressToStringExA(&ip, port, buffer, &size);
    ok( (res == STATUS_INVALID_PARAMETER) && (size == used + 1),
        "got 0x%x and %d with '%s' (expected STATUS_INVALID_PARAMETER and %d)\n",
        res, size, buffer, used + 1);

    size = used - 1;
    memset(buffer, '#', sizeof(buffer) - 1);
    buffer[sizeof(buffer) -1] = 0;
    res = pRtlIpv4AddressToStringExA(&ip, port, buffer, &size);
    ok( (res == STATUS_INVALID_PARAMETER) && (size == used + 1),
        "got 0x%x and %d with '%s' (expected STATUS_INVALID_PARAMETER and %d)\n",
        res, size, buffer, used + 1);



    port = 0;
    expect = ip_1234;

    size = sizeof(buffer);
    memset(buffer, '#', sizeof(buffer) - 1);
    buffer[sizeof(buffer) -1] = 0;
    res = pRtlIpv4AddressToStringExA(&ip, port, buffer, &size);
    used = strlen(buffer);
    ok( (res == STATUS_SUCCESS) &&
        (size == strlen(expect) + 1) && !strcmp(buffer, expect),
        "got 0x%x and size %d with '%s'\n", res, size, buffer);

    size = used + 1;
    memset(buffer, '#', sizeof(buffer) - 1);
    buffer[sizeof(buffer) -1] = 0;
    res = pRtlIpv4AddressToStringExA(&ip, port, buffer, &size);
    ok( (res == STATUS_SUCCESS) &&
        (size == strlen(expect) + 1) && !strcmp(buffer, expect),
        "got 0x%x and size %d with '%s'\n", res, size, buffer);

    size = used;
    memset(buffer, '#', sizeof(buffer) - 1);
    buffer[sizeof(buffer) -1] = 0;
    res = pRtlIpv4AddressToStringExA(&ip, port, buffer, &size);
    ok( (res == STATUS_INVALID_PARAMETER) && (size == used + 1),
        "got 0x%x and %d with '%s' (expected STATUS_INVALID_PARAMETER and %d)\n",
        res, size, buffer, used + 1);

    size = used - 1;
    memset(buffer, '#', sizeof(buffer) - 1);
    buffer[sizeof(buffer) -1] = 0;
    res = pRtlIpv4AddressToStringExA(&ip, port, buffer, &size);
    ok( (res == STATUS_INVALID_PARAMETER) && (size == used + 1),
        "got 0x%x and %d with '%s' (expected STATUS_INVALID_PARAMETER and %d)\n",
        res, size, buffer, used + 1);



    memset(buffer, '#', sizeof(buffer) - 1);
    buffer[sizeof(buffer) -1] = 0;
    res = pRtlIpv4AddressToStringExA(&ip, 0, buffer, ((void*)0));
    ok(res == STATUS_INVALID_PARAMETER,
        "got 0x%x with '%s' (expected STATUS_INVALID_PARAMETER)\n", res, buffer);

    size = sizeof(buffer);
    res = pRtlIpv4AddressToStringExA(&ip, 0, ((void*)0), &size);
    ok( res == STATUS_INVALID_PARAMETER,
        "got 0x%x and size %d (expected STATUS_INVALID_PARAMETER)\n", res, size);

    size = sizeof(buffer);
    memset(buffer, '#', sizeof(buffer) - 1);
    buffer[sizeof(buffer) -1] = 0;
    res = pRtlIpv4AddressToStringExA(((void*)0), 0, buffer, &size);
    ok( res == STATUS_INVALID_PARAMETER,
        "got 0x%x and size %d with '%s' (expected STATUS_INVALID_PARAMETER)\n",
        res, size, buffer);
}
