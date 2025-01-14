
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_matches (char*,char*,int,int,int,int) ;

void test_core_wildmatch__various_additional(void)
{
 assert_matches("acrt", "a[c-c]st", 0, 0, 0, 0);
 assert_matches("acrt", "a[c-c]rt", 1, 1, 1, 1);
 assert_matches("]", "[!]-]", 0, 0, 0, 0);
 assert_matches("a", "[!]-]", 1, 1, 1, 1);
 assert_matches("", "\\", 0, 0, 0, 0);
 assert_matches("\\", "\\", 0, 0, 0, 0);
 assert_matches("XXX/\\", "*/\\", 0, 0, 0, 0);
 assert_matches("XXX/\\", "*/\\\\", 1, 1, 1, 1);
 assert_matches("foo", "foo", 1, 1, 1, 1);
 assert_matches("@foo", "@foo", 1, 1, 1, 1);
 assert_matches("foo", "@foo", 0, 0, 0, 0);
 assert_matches("[ab]", "\\[ab]", 1, 1, 1, 1);
 assert_matches("[ab]", "[[]ab]", 1, 1, 1, 1);
 assert_matches("[ab]", "[[:]ab]", 1, 1, 1, 1);
 assert_matches("[ab]", "[[::]ab]", 0, 0, 0, 0);
 assert_matches("[ab]", "[[:digit]ab]", 1, 1, 1, 1);
 assert_matches("[ab]", "[\\[:]ab]", 1, 1, 1, 1);
 assert_matches("?a?b", "\\??\\?b", 1, 1, 1, 1);
 assert_matches("abc", "\\a\\b\\c", 1, 1, 1, 1);
 assert_matches("foo", "", 0, 0, 0, 0);
 assert_matches("foo/bar/baz/to", "**/t[o]", 1, 1, 1, 1);
}
