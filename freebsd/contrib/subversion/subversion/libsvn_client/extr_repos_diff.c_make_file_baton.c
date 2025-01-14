
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_prop_t ;
typedef int svn_boolean_t ;
struct file_baton {int base_revision; int propchanges; int path; int * pool; void* skip; void* tree_conflicted; int added; TYPE_1__* edit_baton; struct dir_baton* parent_baton; } ;
struct dir_baton {int users; TYPE_1__* edit_baton; } ;
typedef int apr_pool_t ;
struct TYPE_2__ {int revision; } ;


 void* FALSE ;
 int apr_array_make (int *,int,int) ;
 struct file_baton* apr_pcalloc (int *,int) ;
 int apr_pstrdup (int *,char const*) ;
 int * svn_pool_create (int *) ;

__attribute__((used)) static struct file_baton *
make_file_baton(const char *path,
                struct dir_baton *parent_baton,
                svn_boolean_t added,
                apr_pool_t *result_pool)
{
  apr_pool_t *file_pool = svn_pool_create(result_pool);
  struct file_baton *file_baton = apr_pcalloc(file_pool, sizeof(*file_baton));

  file_baton->parent_baton = parent_baton;
  file_baton->edit_baton = parent_baton->edit_baton;
  file_baton->added = added;
  file_baton->tree_conflicted = FALSE;
  file_baton->skip = FALSE;
  file_baton->pool = file_pool;
  file_baton->path = apr_pstrdup(file_pool, path);
  file_baton->propchanges = apr_array_make(file_pool, 8, sizeof(svn_prop_t));
  file_baton->base_revision = parent_baton->edit_baton->revision;

  parent_baton->users++;

  return file_baton;
}
