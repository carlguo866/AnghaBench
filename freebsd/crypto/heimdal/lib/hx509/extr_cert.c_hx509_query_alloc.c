
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hx509_query ;
typedef int hx509_context ;


 int ENOMEM ;
 int * calloc (int,int) ;

int
hx509_query_alloc(hx509_context context, hx509_query **q)
{
    *q = calloc(1, sizeof(**q));
    if (*q == ((void*)0))
 return ENOMEM;
    return 0;
}
