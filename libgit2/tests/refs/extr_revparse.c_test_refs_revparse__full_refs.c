
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test_object (char*,char*) ;

void test_refs_revparse__full_refs(void)
{
 test_object("refs/heads/master", "a65fedf39aefe402d3bb6e24df4d4f5fe4547750");
 test_object("refs/heads/test", "e90810b8df3e80c413d903f631643c716887138d");
 test_object("refs/tags/test", "b25fa35b38051e4ae45d4222e795f9df2e43f1d1");
}
