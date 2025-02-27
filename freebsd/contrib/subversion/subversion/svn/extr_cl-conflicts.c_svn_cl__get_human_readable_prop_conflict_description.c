
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_client_conflict_t ;
typedef int apr_pool_t ;


 int SVN_ERR_ASSERT (int) ;
 int * SVN_NO_ERROR ;
 char* _ (char*) ;
 char* apr_psprintf (int *,char*,char const*,...) ;
 int map_conflict_action_xml ;
 int map_conflict_reason_xml ;
 int operation_str (int ) ;
 int svn_client_conflict_get_incoming_change (int *) ;
 int svn_client_conflict_get_local_change (int *) ;
 int svn_client_conflict_get_operation (int *) ;
 int svn_token__to_word (int ,int) ;
svn_error_t *
svn_cl__get_human_readable_prop_conflict_description(
  const char **desc,
  svn_client_conflict_t *conflict,
  apr_pool_t *pool)
{
  const char *reason_str, *action_str;



  switch (svn_client_conflict_get_local_change(conflict))
    {
      case 129:
        reason_str = _("local edit");
        break;
      case 131:
        reason_str = _("local add");
        break;
      case 130:
        reason_str = _("local delete");
        break;
      case 128:
        reason_str = _("local obstruction");
        break;
      default:
        reason_str = apr_psprintf(
                       pool, _("local %s"),
                       svn_token__to_word(
                         map_conflict_reason_xml,
                         svn_client_conflict_get_local_change(conflict)));
        break;
    }
  switch (svn_client_conflict_get_incoming_change(conflict))
    {
      case 132:
        action_str = _("incoming edit");
        break;
      case 134:
        action_str = _("incoming add");
        break;
      case 133:
        action_str = _("incoming delete");
        break;
      default:
        action_str = apr_psprintf(
                       pool, _("incoming %s"),
                       svn_token__to_word(
                         map_conflict_action_xml,
                         svn_client_conflict_get_incoming_change(conflict)));
        break;
    }
  SVN_ERR_ASSERT(reason_str && action_str);
  *desc = apr_psprintf(pool, _("%s, %s %s"),
                       reason_str, action_str,
                       operation_str(
                         svn_client_conflict_get_operation(conflict)));
  return SVN_NO_ERROR;
}
