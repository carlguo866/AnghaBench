
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_11__ ;


struct TYPE_14__ {int sign; int offset; int time; } ;
struct TYPE_18__ {TYPE_2__ when; int email; int name; } ;
typedef TYPE_6__ git_signature ;
typedef int git_oid ;
typedef int git_object ;
struct TYPE_17__ {int size; } ;
struct TYPE_19__ {int object; TYPE_5__ parent_ids; int tree_id; int message_encoding; int raw_message; TYPE_4__* committer; TYPE_11__* author; } ;
typedef TYPE_7__ git_commit ;
struct TYPE_15__ {size_t time; size_t offset; size_t sign; } ;
struct TYPE_16__ {char const* name; char const* email; TYPE_3__ when; } ;
struct TYPE_13__ {size_t time; size_t offset; size_t sign; } ;
struct TYPE_12__ {char const* name; char const* email; TYPE_1__ when; } ;


 int GIT_OBJECT_COMMIT ;
 int cl_assert (int ) ;
 int cl_assert_equal_i (int ,size_t) ;
 int cl_assert_equal_oid (int *,int *) ;
 int cl_assert_equal_p (int ,int *) ;
 int cl_assert_equal_s (int ,char const*) ;
 int cl_git_pass (int ) ;
 int git_object__free (int *) ;
 int git_object__from_raw (int **,char const*,size_t,int ) ;
 int git_oid_fromstr (int *,char const*) ;
 int git_signature__equal (TYPE_6__*,TYPE_11__*) ;
 int git_signature_free (TYPE_6__*) ;
 int git_signature_from_buffer (TYPE_6__**,char const*) ;
 size_t strlen (char const*) ;

__attribute__((used)) static void assert_commit_parses(const char *data, size_t datalen,
 const char *expected_treeid,
 const char *expected_author,
 const char *expected_committer,
 const char *expected_encoding,
 const char *expected_message,
 size_t expected_parents)
{
 git_commit *commit;
 if (!datalen)
  datalen = strlen(data);
 cl_git_pass(git_object__from_raw((git_object **) &commit, data, datalen, GIT_OBJECT_COMMIT));

 if (expected_author) {
  git_signature *author;
  cl_git_pass(git_signature_from_buffer(&author, expected_author));
  cl_assert(git_signature__equal(author, commit->author));
  cl_assert_equal_s(author->name, commit->author->name);
  cl_assert_equal_s(author->email, commit->author->email);
  cl_assert_equal_i(author->when.time, commit->author->when.time);
  cl_assert_equal_i(author->when.offset, commit->author->when.offset);
  cl_assert_equal_i(author->when.sign, commit->author->when.sign);
  git_signature_free(author);
 }

 if (expected_committer) {
  git_signature *committer;
  cl_git_pass(git_signature_from_buffer(&committer, expected_committer));
  cl_assert_equal_s(committer->name, commit->committer->name);
  cl_assert_equal_s(committer->email, commit->committer->email);
  cl_assert_equal_i(committer->when.time, commit->committer->when.time);
  cl_assert_equal_i(committer->when.offset, commit->committer->when.offset);
  cl_assert_equal_i(committer->when.sign, commit->committer->when.sign);
  git_signature_free(committer);
 }

 if (expected_encoding)
  cl_assert_equal_s(commit->message_encoding, expected_encoding);
 else
  cl_assert_equal_p(commit->message_encoding, ((void*)0));

 if (expected_message)
  cl_assert_equal_s(commit->raw_message, expected_message);
 else
  cl_assert_equal_p(commit->message_encoding, ((void*)0));

 if (expected_treeid) {
  git_oid tree_oid;
  cl_git_pass(git_oid_fromstr(&tree_oid, expected_treeid));
  cl_assert_equal_oid(&tree_oid, &commit->tree_id);
 }

 cl_assert_equal_i(commit->parent_ids.size, expected_parents);

 git_object__free(&commit->object);
}
