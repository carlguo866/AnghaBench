
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TEST (int,int ) ;
 int TEST_uchar_eq (int,int) ;
 int TEST_uchar_ge (int,int) ;
 int TEST_uchar_gt (int,int) ;
 int TEST_uchar_le (int,int) ;
 int TEST_uchar_lt (int,int) ;
 int TEST_uchar_ne (int,int) ;

__attribute__((used)) static int test_uchar(void)
{
    if (!TEST(1, TEST_uchar_eq(49, 49))
        | !TEST(0, TEST_uchar_eq(49, 60))
        | !TEST(1, TEST_uchar_ne(50, 2))
        | !TEST(0, TEST_uchar_ne(66, 66))
        | !TEST(1, TEST_uchar_lt(60, 80))
        | !TEST(0, TEST_uchar_lt(80, 60))
        | !TEST(1, TEST_uchar_le(60, 80))
        | !TEST(1, TEST_uchar_le(78, 78))
        | !TEST(0, TEST_uchar_le(80, 60))
        | !TEST(1, TEST_uchar_gt(88, 37))
        | !TEST(0, TEST_uchar_gt(37, 88))
        | !TEST(1, TEST_uchar_ge(88, 37))
        | !TEST(1, TEST_uchar_ge(66, 66))
        | !TEST(0, TEST_uchar_ge(37, 88)))
        goto err;
    return 1;

err:
    return 0;
}
