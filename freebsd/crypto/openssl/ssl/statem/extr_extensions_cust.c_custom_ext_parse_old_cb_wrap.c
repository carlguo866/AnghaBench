
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* parse_cb ) (int *,unsigned int,unsigned char const*,size_t,int*,int ) ;int parse_arg; } ;
typedef TYPE_1__ custom_ext_parse_cb_wrap ;
typedef int X509 ;
typedef int SSL ;


 int stub1 (int *,unsigned int,unsigned char const*,size_t,int*,int ) ;

__attribute__((used)) static int custom_ext_parse_old_cb_wrap(SSL *s, unsigned int ext_type,
                                        unsigned int context,
                                        const unsigned char *in,
                                        size_t inlen, X509 *x, size_t chainidx,
                                        int *al, void *parse_arg)
{
    custom_ext_parse_cb_wrap *parse_cb_wrap =
        (custom_ext_parse_cb_wrap *)parse_arg;

    if (parse_cb_wrap->parse_cb == ((void*)0))
        return 1;

    return parse_cb_wrap->parse_cb(s, ext_type, in, inlen, al,
                                   parse_cb_wrap->parse_arg);
}
