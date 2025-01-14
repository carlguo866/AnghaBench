
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TEST (int,int ) ;
 int TEST_uint_eq (unsigned int,unsigned int) ;
 int TEST_uint_ge (unsigned int,unsigned int) ;
 int TEST_uint_gt (unsigned int,unsigned int) ;
 int TEST_uint_le (unsigned int,unsigned int) ;
 int TEST_uint_lt (unsigned int,unsigned int) ;
 int TEST_uint_ne (unsigned int,unsigned int) ;

__attribute__((used)) static int test_uint(void)
{
    if (!TEST(1, TEST_uint_eq(3u, 3u))
        | !TEST(0, TEST_uint_eq(3u, 5u))
        | !TEST(1, TEST_uint_ne(4u, 2u))
        | !TEST(0, TEST_uint_ne(6u, 6u))
        | !TEST(1, TEST_uint_lt(5u, 9u))
        | !TEST(0, TEST_uint_lt(9u, 5u))
        | !TEST(1, TEST_uint_le(5u, 9u))
        | !TEST(1, TEST_uint_le(7u, 7u))
        | !TEST(0, TEST_uint_le(9u, 5u))
        | !TEST(1, TEST_uint_gt(11u, 1u))
        | !TEST(0, TEST_uint_gt(1u, 11u))
        | !TEST(1, TEST_uint_ge(11u, 1u))
        | !TEST(1, TEST_uint_ge(6u, 6u))
        | !TEST(0, TEST_uint_ge(1u, 11u)))
        goto err;
    return 1;

err:
    return 0;
}
