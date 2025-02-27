
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ apr_status_t ;
typedef int apr_pool_t ;
typedef long apr_off_t ;
typedef int apr_file_t ;
typedef int abts_case ;


 int ABTS_INT_EQUAL (int *,scalar_t__,scalar_t__) ;
 int APR_FOPEN_CREATE ;
 int APR_FOPEN_DELONCLOSE ;
 int APR_FOPEN_EXCL ;
 int APR_FOPEN_READ ;
 int APR_FOPEN_TRUNCATE ;
 int APR_FOPEN_WRITE ;
 int APR_SET ;
 scalar_t__ APR_SUCCESS ;
 scalar_t__ apr_file_mktemp (int **,char*,int,int *) ;
 scalar_t__ apr_file_puts (char*,int *) ;
 scalar_t__ apr_file_seek (int *,int ,long*) ;

__attribute__((used)) static apr_status_t create_dummy_file(abts_case *tc, apr_pool_t *p,
                                      apr_file_t **fd)
{
    int i;
    apr_status_t rv;
    apr_off_t off = 0L;
    char template[] = "data/testxmldummyXXXXXX";

    rv = apr_file_mktemp(fd, template, APR_FOPEN_CREATE | APR_FOPEN_TRUNCATE | APR_FOPEN_DELONCLOSE |
                         APR_FOPEN_READ | APR_FOPEN_WRITE | APR_FOPEN_EXCL, p);
    ABTS_INT_EQUAL(tc, APR_SUCCESS, rv);

    if (rv != APR_SUCCESS)
        return rv;

    rv = apr_file_puts("<?xml version=\"1.0\" ?>\n<mary>\n", *fd);
    ABTS_INT_EQUAL(tc, APR_SUCCESS, rv);

    for (i = 0; i < 5000; i++) {
        rv = apr_file_puts("<hmm roast=\"lamb\" "
                           "for=\"dinner &lt;&gt;&#x3D;\">yummy</hmm>\n", *fd);
        ABTS_INT_EQUAL(tc, APR_SUCCESS, rv);
    }

    rv = apr_file_puts("</mary>\n", *fd);
    ABTS_INT_EQUAL(tc, APR_SUCCESS, rv);

    rv = apr_file_seek(*fd, APR_SET, &off);
    ABTS_INT_EQUAL(tc, APR_SUCCESS, rv);

    return rv;
}
