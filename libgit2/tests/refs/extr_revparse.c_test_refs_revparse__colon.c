
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_invalid_single_spec (char*) ;
 int cl_git_fail (int ) ;
 int g_obj ;
 int g_repo ;
 int git_revparse_single (int *,int ,char*) ;
 int test_object (char*,char*) ;

void test_refs_revparse__colon(void)
{
 assert_invalid_single_spec(":/");
 assert_invalid_single_spec("point_to_blob:readme.txt");
 cl_git_fail(git_revparse_single(&g_obj, g_repo, ":2:README"));

 test_object(":/not found in any commit", ((void*)0));
 test_object("subtrees:ab/42.txt", ((void*)0));
 test_object("subtrees:ab/4.txt/nope", ((void*)0));
 test_object("subtrees:nope", ((void*)0));
 test_object("test/master^1:branch_file.txt", ((void*)0));


 test_object("test:readme.txt", "0266163a49e280c4f5ed1e08facd36a2bd716bcf");
 test_object("tags/test:readme.txt", "0266163a49e280c4f5ed1e08facd36a2bd716bcf");
 test_object("e90810b:readme.txt", "0266163a49e280c4f5ed1e08facd36a2bd716bcf");
 test_object("tags/e90810b:readme.txt", "0266163a49e280c4f5ed1e08facd36a2bd716bcf");


 test_object("a65f:branch_file.txt", "3697d64be941a53d4ae8f6a271e4e3fa56b022cc");


 test_object("a65f^{tree}:branch_file.txt", "3697d64be941a53d4ae8f6a271e4e3fa56b022cc");
 test_object("944c:branch_file.txt", "3697d64be941a53d4ae8f6a271e4e3fa56b022cc");


 test_object("master:", "944c0f6e4dfa41595e6eb3ceecdb14f50fe18162");
 test_object("subtrees:", "ae90f12eea699729ed24555e40b9fd669da12a12");
 test_object("subtrees:ab", "f1425cef211cc08caa31e7b545ffb232acb098c3");
 test_object("subtrees:ab/", "f1425cef211cc08caa31e7b545ffb232acb098c3");


 test_object("subtrees:ab/4.txt", "d6c93164c249c8000205dd4ec5cbca1b516d487f");
 test_object("subtrees:ab/de/fgh/1.txt", "1f67fc4386b2d171e0d21be1c447e12660561f9b");
 test_object("master:README", "a8233120f6ad708f843d861ce2b7228ec4e3dec6");
 test_object("master:new.txt", "a71586c1dfe8a71c6cbf6c129f404c5642ff31bd");
 test_object(":/Merge", "a4a7dce85cf63874e984719f4fdd239f5145052f");
 test_object(":/one", "c47800c7266a2be04c571c04d5a6614691ea99bd");
 test_object(":/packed commit t", "41bc8c69075bbdb46c5c6f0566cc8cc5b46e8bd9");
 test_object("test/master^2:branch_file.txt", "45b983be36b73c0788dc9cbcb76cbb80fc7bb057");
 test_object("test/master@{1}:branch_file.txt", "3697d64be941a53d4ae8f6a271e4e3fa56b022cc");
}
