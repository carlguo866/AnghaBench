
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rev_id; } ;
typedef TYPE_1__ svnlook_ctxt_t ;
typedef int svn_error_t ;
struct svnlook_opt_state {scalar_t__ no_newline; } ;
typedef int apr_pool_t ;
typedef int apr_getopt_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int check_number_of_args (struct svnlook_opt_state*,int ) ;
 int get_ctxt_baton (TYPE_1__**,struct svnlook_opt_state*,int *) ;
 int svn_cmdline_printf (int *,char*,int ,char*) ;

__attribute__((used)) static svn_error_t *
subcommand_youngest(apr_getopt_t *os, void *baton, apr_pool_t *pool)
{
  struct svnlook_opt_state *opt_state = baton;
  svnlook_ctxt_t *c;

  SVN_ERR(check_number_of_args(opt_state, 0));

  SVN_ERR(get_ctxt_baton(&c, opt_state, pool));
  SVN_ERR(svn_cmdline_printf(pool, "%ld%s", c->rev_id,
                             opt_state->no_newline ? "" : "\n"));
  return SVN_NO_ERROR;
}
