
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dest ;
typedef int big ;


 scalar_t__ ARRAY_SIZE (char const*) ;
 int EINVAL ;
 int ERANGE ;
 int errno ;
 int memcmp (char*,char const*,int) ;
 int memset (char*,char,int) ;
 int ok (int,char*,...) ;
 int okchars (char*,char const,char const,char const,char const,char const,char const,char,char) ;
 int p_memcpy_s (char*,scalar_t__,char const*,scalar_t__) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_memcpy_s(void)
{
    static char dest[8], buf[32];
    static const char tiny[] = {'T',0,'I','N','Y',0};
    static const char big[] = {'a','t','o','o','l','o','n','g','s','t','r','i','n','g',0};
    int ret;
    if (!p_memcpy_s) {
        win_skip("memcpy_s not found\n");
        return;
    }


    memset(dest, 'X', sizeof(dest));
    ret = p_memcpy_s(dest, ARRAY_SIZE(dest), tiny, ARRAY_SIZE(tiny));
    ok(ret == 0, "Copying a buffer into a big enough destination returned %d, expected 0\n", ret);
    okchars(dest, tiny[0], tiny[1], tiny[2], tiny[3], tiny[4], tiny[5], 'X', 'X');


    errno = 0xdeadbeef;
    memset(dest, 'X', sizeof(dest));
    ret = p_memcpy_s(dest, ARRAY_SIZE(dest), big, ARRAY_SIZE(big));
    ok(ret == ERANGE, "Copying a big buffer to a small destination returned %d, expected ERANGE\n", ret);
    ok(errno == ERANGE, "errno is %d, expected ERANGE\n", errno);
    okchars(dest, 0, 0, 0, 0, 0, 0, 0, 0);


    errno = 0xdeadbeef;
    memset(dest, 'X', sizeof(dest));
    ret = p_memcpy_s(dest, ARRAY_SIZE(dest), ((void*)0), ARRAY_SIZE(tiny));
    ok(ret == EINVAL, "Copying a NULL source buffer returned %d, expected EINVAL\n", ret);
    ok(errno == EINVAL, "errno is %d, expected EINVAL\n", errno);
    okchars(dest, 0, 0, 0, 0, 0, 0, 0, 0);


    errno = 0xdeadbeef;
    memset(dest, 'X', sizeof(dest));
    ret = p_memcpy_s(dest, 0, tiny, ARRAY_SIZE(tiny));
    ok(ret == ERANGE, "Copying into a destination of size 0 returned %d, expected ERANGE\n", ret);
    ok(errno == ERANGE, "errno is %d, expected ERANGE\n", errno);
    okchars(dest, 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X');


    errno = 0xdeadbeef;
    ret = p_memcpy_s(((void*)0), ARRAY_SIZE(dest), tiny, ARRAY_SIZE(tiny));
    ok(ret == EINVAL, "Copying a tiny buffer to a big NULL destination returned %d, expected EINVAL\n", ret);
    ok(errno == EINVAL, "errno is %d, expected EINVAL\n", errno);


    errno = 0xdeadbeef;
    memset(dest, 'X', sizeof(dest));
    ret = p_memcpy_s(dest, 0, ((void*)0), ARRAY_SIZE(tiny));
    ok(ret == EINVAL, "Copying a NULL buffer into a destination of size 0 returned %d, expected EINVAL\n", ret);
    ok(errno == EINVAL, "errno is %d, expected EINVAL\n", errno);
    okchars(dest, 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X');

    ret = p_memcpy_s(buf, ARRAY_SIZE(buf), big, ARRAY_SIZE(big));
    ok(!ret, "memcpy_s returned %d\n", ret);
    ok(!memcmp(buf, big, sizeof(big)), "unexpected buf\n");

    ret = p_memcpy_s(buf + 1, ARRAY_SIZE(buf) - 1, buf, ARRAY_SIZE(big));
    ok(!ret, "memcpy_s returned %d\n", ret);
    ok(!memcmp(buf + 1, big, sizeof(big)), "unexpected buf\n");

    ret = p_memcpy_s(buf, ARRAY_SIZE(buf), buf + 1, ARRAY_SIZE(big));
    ok(!ret, "memcpy_s returned %d\n", ret);
    ok(!memcmp(buf, big, sizeof(big)), "unexpected buf\n");
}
