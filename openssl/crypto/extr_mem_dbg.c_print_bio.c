
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;


 int BIO_write (int *,char const*,size_t) ;

__attribute__((used)) static int print_bio(const char *str, size_t len, void *b)
{
    return BIO_write((BIO *)b, str, len);
}
