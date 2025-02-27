
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int expect_decode_pass (char*,char*) ;

void test_buf_percent__decode_succeeds(void)
{
 expect_decode_pass("", "");
 expect_decode_pass(" ", "%20");
 expect_decode_pass("a", "a");
 expect_decode_pass(" a", "%20a");
 expect_decode_pass("a ", "a%20");
 expect_decode_pass("github.com", "github.com");
 expect_decode_pass("github.com", "githu%62.com");
 expect_decode_pass("github.com", "github%2ecom");
 expect_decode_pass("foo bar baz", "foo%20bar%20baz");
 expect_decode_pass("foo bar baz", "foo%20bar%20baz");
 expect_decode_pass("foo bar ", "foo%20bar%20");
}
