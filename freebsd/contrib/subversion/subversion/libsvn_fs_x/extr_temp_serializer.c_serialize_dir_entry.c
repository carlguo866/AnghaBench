
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_temp_serializer__context_t ;
struct TYPE_3__ {int name; } ;
typedef TYPE_1__ svn_fs_x__dirent_t ;
typedef scalar_t__ apr_uint32_t ;
typedef scalar_t__ apr_size_t ;


 scalar_t__ APR_ALIGN_DEFAULT (scalar_t__) ;
 int svn_temp_serializer__add_string (int *,int *) ;
 scalar_t__ svn_temp_serializer__get_length (int *) ;
 int svn_temp_serializer__pop (int *) ;
 int svn_temp_serializer__push (int *,void const* const*,int) ;

__attribute__((used)) static void
serialize_dir_entry(svn_temp_serializer__context_t *context,
                    svn_fs_x__dirent_t **entry_p,
                    apr_uint32_t *length)
{
  svn_fs_x__dirent_t *entry = *entry_p;
  apr_size_t initial_length = svn_temp_serializer__get_length(context);

  svn_temp_serializer__push(context,
                            (const void * const *)entry_p,
                            sizeof(**entry_p));

  svn_temp_serializer__add_string(context, &entry->name);

  *length = (apr_uint32_t)( svn_temp_serializer__get_length(context)
                           - APR_ALIGN_DEFAULT(initial_length));

  svn_temp_serializer__pop(context);
}
