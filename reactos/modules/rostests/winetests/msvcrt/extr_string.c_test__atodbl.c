
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int x; } ;
typedef TYPE_1__ _CRT_DOUBLE ;


 int _OVERFLOW ;
 int _UNDERFLOW ;
 int _atodbl (TYPE_1__*,char*) ;
 scalar_t__ almost_equal (int,int ) ;
 int ok (int,char*,int) ;
 int p__atodbl_l (TYPE_1__*,char*,int *) ;
 int strcpy (char*,char*) ;
 int win_skip (char*) ;

__attribute__((used)) static void test__atodbl(void)
{
    _CRT_DOUBLE d;
    char num[32];
    int ret;

    if(!p__atodbl_l) {


        win_skip("_atodbl_l is not available\n");
        return;
    }

    num[0] = 0;
    ret = p__atodbl_l(&d, num, ((void*)0));
    ok(ret == 0, "_atodbl_l(&d, \"\", NULL) returned %d, expected 0\n", ret);
    ok(d.x == 0, "d.x = %lf, expected 0\n", d.x);
    ret = _atodbl(&d, num);
    ok(ret == 0, "_atodbl(&d, \"\") returned %d, expected 0\n", ret);
    ok(d.x == 0, "d.x = %lf, expected 0\n", d.x);

    strcpy(num, "t");
    ret = p__atodbl_l(&d, num, ((void*)0));
    ok(ret == 0, "_atodbl_l(&d, \"t\", NULL) returned %d, expected 0\n", ret);
    ok(d.x == 0, "d.x = %lf, expected 0\n", d.x);
    ret = _atodbl(&d, num);
    ok(ret == 0, "_atodbl(&d, \"t\") returned %d, expected 0\n", ret);
    ok(d.x == 0, "d.x = %lf, expected 0\n", d.x);

    strcpy(num, "0");
    ret = p__atodbl_l(&d, num, ((void*)0));
    ok(ret == 0, "_atodbl_l(&d, \"0\", NULL) returned %d, expected 0\n", ret);
    ok(d.x == 0, "d.x = %lf, expected 0\n", d.x);
    ret = _atodbl(&d, num);
    ok(ret == 0, "_atodbl(&d, \"0\") returned %d, expected 0\n", ret);
    ok(d.x == 0, "d.x = %lf, expected 0\n", d.x);

    strcpy(num, "123");
    ret = p__atodbl_l(&d, num, ((void*)0));
    ok(ret == 0, "_atodbl_l(&d, \"123\", NULL) returned %d, expected 0\n", ret);
    ok(d.x == 123, "d.x = %lf, expected 123\n", d.x);
    ret = _atodbl(&d, num);
    ok(ret == 0, "_atodbl(&d, \"123\") returned %d, expected 0\n", ret);
    ok(d.x == 123, "d.x = %lf, expected 123\n", d.x);

    strcpy(num, "1e-309");
    ret = p__atodbl_l(&d, num, ((void*)0));
    ok(ret == _UNDERFLOW, "_atodbl_l(&d, \"1e-309\", NULL) returned %d, expected _UNDERFLOW\n", ret);
    ok(d.x!=0 && almost_equal(d.x, 0), "d.x = %le, expected 0\n", d.x);
    ret = _atodbl(&d, num);
    ok(ret == _UNDERFLOW, "_atodbl(&d, \"1e-309\") returned %d, expected _UNDERFLOW\n", ret);
    ok(d.x!=0 && almost_equal(d.x, 0), "d.x = %le, expected 0\n", d.x);

    strcpy(num, "1e309");
    ret = p__atodbl_l(&d, num, ((void*)0));
    ok(ret == _OVERFLOW, "_atodbl_l(&d, \"1e309\", NULL) returned %d, expected _OVERFLOW\n", ret);
    ret = _atodbl(&d, num);
    ok(ret == _OVERFLOW, "_atodbl(&d, \"1e309\") returned %d, expected _OVERFLOW\n", ret);
}
