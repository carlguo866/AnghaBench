
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test_object (char*,char*) ;

void test_refs_revparse__describe_output(void)
{
 test_object("blah-7-gc47800c", "c47800c7266a2be04c571c04d5a6614691ea99bd");
 test_object("not-good", "a65fedf39aefe402d3bb6e24df4d4f5fe4547750");
}
