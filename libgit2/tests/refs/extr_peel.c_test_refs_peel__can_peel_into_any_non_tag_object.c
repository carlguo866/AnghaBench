
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_OBJECT_ANY ;
 int GIT_OBJECT_BLOB ;
 int GIT_OBJECT_COMMIT ;
 int assert_peel (char*,int ,char*,int ) ;

void test_refs_peel__can_peel_into_any_non_tag_object(void)
{
 assert_peel("refs/heads/master", GIT_OBJECT_ANY,
  "a65fedf39aefe402d3bb6e24df4d4f5fe4547750", GIT_OBJECT_COMMIT);
 assert_peel("refs/tags/point_to_blob", GIT_OBJECT_ANY,
  "1385f264afb75a56a5bec74243be9b367ba4ca08", GIT_OBJECT_BLOB);
 assert_peel("refs/tags/test", GIT_OBJECT_ANY,
  "e90810b8df3e80c413d903f631643c716887138d", GIT_OBJECT_COMMIT);
}
