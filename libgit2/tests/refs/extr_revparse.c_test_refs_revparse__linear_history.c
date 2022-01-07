
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_invalid_single_spec (char*) ;
 int test_object (char*,char*) ;

void test_refs_revparse__linear_history(void)
{
 assert_invalid_single_spec("~");
 test_object("foo~bar", ((void*)0));

 assert_invalid_single_spec("master~bar");
 assert_invalid_single_spec("master~-1");
 assert_invalid_single_spec("master~0bar");
 assert_invalid_single_spec("this doesn't make sense~2");
 assert_invalid_single_spec("be3563a^{tree}~");
 assert_invalid_single_spec("point_to_blob^{blob}~");

 test_object("master~0", "a65fedf39aefe402d3bb6e24df4d4f5fe4547750");
 test_object("master~1", "be3563ae3f795b2b4353bcce3a527ad0a4f7f644");
 test_object("master~2", "9fd738e8f7967c078dceed8190330fc8648ee56a");
 test_object("master~1~1", "9fd738e8f7967c078dceed8190330fc8648ee56a");
 test_object("master~~", "9fd738e8f7967c078dceed8190330fc8648ee56a");
}
