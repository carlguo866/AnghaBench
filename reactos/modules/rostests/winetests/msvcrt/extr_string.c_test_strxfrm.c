
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dest ;


 int EINVAL ;
 size_t INT_MAX ;
 int LC_ALL ;
 scalar_t__ broken (int) ;
 int errno ;
 int ok (int,char*,...) ;
 scalar_t__ p__atodbl_l ;
 int setlocale (int ,char*) ;
 int strcmp (char*,char*) ;
 size_t strxfrm (char*,char*,int) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_strxfrm(void)
{
    char dest[256];
    size_t ret;


    if(p__atodbl_l) {
        errno = 0xdeadbeef;
        ret = strxfrm(((void*)0), "src", 1);
        ok(ret == INT_MAX, "ret = %d\n", (int)ret);
        ok(errno == EINVAL, "errno = %d\n", errno);

        errno = 0xdeadbeef;
        ret = strxfrm(dest, ((void*)0), 100);
        ok(ret == INT_MAX, "ret = %d\n", (int)ret);
        ok(errno == EINVAL, "errno = %d\n", errno);
    }

    ret = strxfrm(((void*)0), "src", 0);
    ok(ret == 3, "ret = %d\n", (int)ret);
    dest[0] = 'a';
    ret = strxfrm(dest, "src", 0);
    ok(ret == 3, "ret = %d\n", (int)ret);
    ok(dest[0] == 'a', "dest[0] = %d\n", dest[0]);

    dest[3] = 'a';
    ret = strxfrm(dest, "src", 5);
    ok(ret == 3, "ret = %d\n", (int)ret);
    ok(!strcmp(dest, "src"), "dest = %s\n", dest);

    errno = 0xdeadbeef;
    dest[1] = 'a';
    ret = strxfrm(dest, "src", 1);
    ok(ret == 3, "ret = %d\n", (int)ret);
    ok(dest[0] == 's', "dest[0] = %d\n", dest[0]);
    ok(dest[1] == 'a', "dest[1] = %d\n", dest[1]);
    ok(errno == 0xdeadbeef, "errno = %d\n", errno);

    ret = strxfrm(dest, "", 5);
    ok(ret == 0, "ret = %d\n", (int)ret);
    ok(!dest[0], "dest[0] = %d\n", dest[0]);

    if(!setlocale(LC_ALL, "polish")) {
        win_skip("stxfrm tests\n");
        return;
    }

    ret = strxfrm(((void*)0), "src", 0);
    ok(ret < sizeof(dest)-1, "ret = %d\n", (int)ret);
    dest[0] = 'a';
    ret = strxfrm(dest, "src", 0);
    ok(ret < sizeof(dest)-1, "ret = %d\n", (int)ret);
    ok(dest[0] == 'a', "dest[0] = %d\n", dest[0]);

    ret = strxfrm(dest, "src", ret+1);
    ok(ret < sizeof(dest)-1, "ret = %d\n", (int)ret);
    ok(dest[0], "dest[0] = 0\n");

    errno = 0xdeadbeef;
    dest[0] = 'a';
    ret = strxfrm(dest, "src", 5);
    ok(ret>5 && ret<sizeof(dest)-1, "ret = %d\n", (int)ret);
    ok(!dest[0] || broken(!p__atodbl_l && dest[0]=='a'), "dest[0] = %d\n", dest[0]);

    setlocale(LC_ALL, "C");
}
