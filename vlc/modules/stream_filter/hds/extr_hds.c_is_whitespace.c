
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool is_whitespace( char c )
{
    return ( ' ' == c ||
             '\t' == c ||
             '\n' == c ||
             '\v' == c ||
             '\f' == c ||
             '\r' == c );
}
