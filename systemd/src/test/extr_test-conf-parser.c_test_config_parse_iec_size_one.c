
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_se (int) ;
 scalar_t__ config_parse_iec_size (char*,char*,int,char*,int,char*,int ,char const*,size_t*,int *) ;

__attribute__((used)) static void test_config_parse_iec_size_one(const char *rvalue, size_t expected) {
        size_t iec_size = 0;

        assert_se(config_parse_iec_size("unit", "filename", 1, "section", 1, "lvalue", 0, rvalue, &iec_size, ((void*)0)) >= 0);
        assert_se(expected == iec_size);
}
