
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * data; } ;
typedef TYPE_1__ svn_string_t ;
typedef int svn_revnum_t ;
typedef int svn_ra_session_t ;
typedef scalar_t__ svn_node_kind_t ;
typedef int svn_error_t ;
typedef int svn_client_ctx_t ;
struct find_added_rev_baton {char const* victim_abspath; int * repos_relpath; void* added_rev; int * pool; int * parent_repos_relpath; int * ctx; int member_0; } ;
struct conflict_tree_incoming_delete_details {scalar_t__ replacing_node_kind; void* added_rev; void* rev_author; void* repos_relpath; void* deleted_rev; } ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 void* SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 int SVN_PROP_REVISION_AUTHOR ;
 void* _ (char*) ;
 struct conflict_tree_incoming_delete_details* apr_pcalloc (int *,int) ;
 void* apr_pstrdup (int *,int *) ;
 int find_added_rev ;
 void* rev_below (void*) ;
 int svn_client__open_ra_session_internal (int **,char const**,char const*,int *,int *,int ,int ,int *,int *,int *) ;
 scalar_t__ svn_node_none ;
 char* svn_path_url_add_component2 (char const*,char const*,int *) ;
 int svn_ra_check_path (int *,char*,void*,scalar_t__*,int *) ;
 int svn_ra_get_location_segments (int *,char*,int ,int ,int ,int ,struct find_added_rev_baton*,int *) ;
 int svn_ra_rev_prop (int *,void*,int ,TYPE_1__**,int *) ;

__attribute__((used)) static svn_error_t *
get_incoming_delete_details_for_reverse_addition(
  struct conflict_tree_incoming_delete_details **details,
  const char *repos_root_url,
  const char *old_repos_relpath,
  svn_revnum_t old_rev,
  svn_revnum_t new_rev,
  svn_client_ctx_t *ctx,
  const char *victim_abspath,
  apr_pool_t *result_pool,
  apr_pool_t *scratch_pool)
{
  svn_ra_session_t *ra_session;
  const char *url;
  const char *corrected_url;
  svn_string_t *author_revprop;
  struct find_added_rev_baton b = { 0 };

  url = svn_path_url_add_component2(repos_root_url, old_repos_relpath,
                                    scratch_pool);
  SVN_ERR(svn_client__open_ra_session_internal(&ra_session,
                                               &corrected_url,
                                               url, ((void*)0), ((void*)0),
                                               FALSE,
                                               FALSE,
                                               ctx,
                                               scratch_pool,
                                               scratch_pool));

  *details = apr_pcalloc(result_pool, sizeof(**details));
  b.ctx = ctx;
  b.victim_abspath = victim_abspath;
  b.added_rev = SVN_INVALID_REVNUM;
  b.repos_relpath = ((void*)0);
  b.parent_repos_relpath = ((void*)0);
  b.pool = scratch_pool;


  SVN_ERR(svn_ra_get_location_segments(ra_session, "", old_rev,
                                       old_rev, new_rev,
                                       find_added_rev, &b,
                                       scratch_pool));

  SVN_ERR(svn_ra_rev_prop(ra_session, b.added_rev,
                          SVN_PROP_REVISION_AUTHOR,
                          &author_revprop, scratch_pool));
  (*details)->deleted_rev = SVN_INVALID_REVNUM;
  (*details)->added_rev = b.added_rev;
  (*details)->repos_relpath = apr_pstrdup(result_pool, b.repos_relpath);
  if (author_revprop)
    (*details)->rev_author = apr_pstrdup(result_pool, author_revprop->data);
  else
    (*details)->rev_author = _("unknown author");


  (*details)->replacing_node_kind = svn_node_none;
  if ((*details)->added_rev > 0)
    {
      svn_node_kind_t replaced_node_kind;

      SVN_ERR(svn_ra_check_path(ra_session, "",
                                rev_below((*details)->added_rev),
                                &replaced_node_kind, scratch_pool));
      if (replaced_node_kind != svn_node_none)
        SVN_ERR(svn_ra_check_path(ra_session, "", (*details)->added_rev,
                                  &(*details)->replacing_node_kind,
                                  scratch_pool));
    }

  return SVN_NO_ERROR;
}
