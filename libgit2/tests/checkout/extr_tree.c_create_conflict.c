
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int mode; char const* path; int id; } ;
typedef TYPE_1__ git_index_entry ;
typedef int git_index ;


 int GIT_INDEX_ENTRY_STAGE_SET (TYPE_1__*,int) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_index_add (int *,TYPE_1__*) ;
 int git_index_free (int *) ;
 int git_index_write (int *) ;
 int git_oid_fromstr (int *,char*) ;
 int git_repository_index (int **,int ) ;
 int memset (TYPE_1__*,int,int) ;

__attribute__((used)) static void create_conflict(const char *path)
{
 git_index *index;
 git_index_entry entry;

 cl_git_pass(git_repository_index(&index, g_repo));

 memset(&entry, 0x0, sizeof(git_index_entry));
 entry.mode = 0100644;
 GIT_INDEX_ENTRY_STAGE_SET(&entry, 1);
 git_oid_fromstr(&entry.id, "d427e0b2e138501a3d15cc376077a3631e15bd46");
 entry.path = path;
 cl_git_pass(git_index_add(index, &entry));

 GIT_INDEX_ENTRY_STAGE_SET(&entry, 2);
 git_oid_fromstr(&entry.id, "ee3fa1b8c00aff7fe02065fdb50864bb0d932ccf");
 cl_git_pass(git_index_add(index, &entry));

 GIT_INDEX_ENTRY_STAGE_SET(&entry, 3);
 git_oid_fromstr(&entry.id, "2bd0a343aeef7a2cf0d158478966a6e587ff3863");
 cl_git_pass(git_index_add(index, &entry));

 cl_git_pass(git_index_write(index));
 git_index_free(index);
}
