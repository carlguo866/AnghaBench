
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union in_addr_union {int dummy; } in_addr_union ;


 int assert_se (int) ;
 scalar_t__ in_addr_equal (unsigned int,union in_addr_union*,union in_addr_union*) ;
 scalar_t__ in_addr_from_string (unsigned int,char const*,union in_addr_union*) ;
 scalar_t__ in_addr_prefix_next (unsigned int,union in_addr_union*,unsigned int) ;

__attribute__((used)) static void test_in_addr_prefix_next_one(unsigned f, const char *before, unsigned pl, const char *after) {
        union in_addr_union ubefore, uafter, t;

        assert_se(in_addr_from_string(f, before, &ubefore) >= 0);

        t = ubefore;
        assert_se((in_addr_prefix_next(f, &t, pl) > 0) == !!after);

        if (after) {
                assert_se(in_addr_from_string(f, after, &uafter) >= 0);
                assert_se(in_addr_equal(f, &t, &uafter) > 0);
        }
}
