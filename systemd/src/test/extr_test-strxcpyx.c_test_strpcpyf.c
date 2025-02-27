
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int target ;


 int assert_se (int) ;
 int streq (char*,char*) ;
 size_t strpcpyf (char**,int,char*,...) ;

__attribute__((used)) static void test_strpcpyf(void) {
        char target[25];
        char *s = target;
        size_t space_left;

        space_left = sizeof(target);
        space_left = strpcpyf(&s, space_left, "space left: %zu. ", space_left);
        space_left = strpcpyf(&s, space_left, "foo%s", "bar");

        assert_se(streq(target, "space left: 25. foobar"));
        assert_se(space_left == 3);


        s = target;
        space_left = strpcpyf(&s, 12, "00 left: %i. ", 999);
        assert_se(streq(target, "00 left: 99"));
        assert_se(space_left == 0);
        assert_se(target[12] == '2');
}
