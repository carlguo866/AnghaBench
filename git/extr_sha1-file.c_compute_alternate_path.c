
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 int FREE_AND_NULL (char*) ;
 int F_OK ;
 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 int access (char*,int ) ;
 int free (char*) ;
 scalar_t__ get_common_dir (struct strbuf*,char*) ;
 scalar_t__ is_directory (char*) ;
 char* mkpath (char*,char*) ;
 char* mkpathdup (char*,char*) ;
 char* read_gitfile (char*) ;
 char* real_path_if_valid (char const*) ;
 int strbuf_addf (struct strbuf*,int ,char const*) ;
 char* xstrdup (char const*) ;

char *compute_alternate_path(const char *path, struct strbuf *err)
{
 char *ref_git = ((void*)0);
 const char *repo, *ref_git_s;
 int seen_error = 0;

 ref_git_s = real_path_if_valid(path);
 if (!ref_git_s) {
  seen_error = 1;
  strbuf_addf(err, _("path '%s' does not exist"), path);
  goto out;
 } else




  ref_git = xstrdup(ref_git_s);

 repo = read_gitfile(ref_git);
 if (!repo)
  repo = read_gitfile(mkpath("%s/.git", ref_git));
 if (repo) {
  free(ref_git);
  ref_git = xstrdup(repo);
 }

 if (!repo && is_directory(mkpath("%s/.git/objects", ref_git))) {
  char *ref_git_git = mkpathdup("%s/.git", ref_git);
  free(ref_git);
  ref_git = ref_git_git;
 } else if (!is_directory(mkpath("%s/objects", ref_git))) {
  struct strbuf sb = STRBUF_INIT;
  seen_error = 1;
  if (get_common_dir(&sb, ref_git)) {
   strbuf_addf(err,
        _("reference repository '%s' as a linked "
          "checkout is not supported yet."),
        path);
   goto out;
  }

  strbuf_addf(err, _("reference repository '%s' is not a "
     "local repository."), path);
  goto out;
 }

 if (!access(mkpath("%s/shallow", ref_git), F_OK)) {
  strbuf_addf(err, _("reference repository '%s' is shallow"),
       path);
  seen_error = 1;
  goto out;
 }

 if (!access(mkpath("%s/info/grafts", ref_git), F_OK)) {
  strbuf_addf(err,
       _("reference repository '%s' is grafted"),
       path);
  seen_error = 1;
  goto out;
 }

out:
 if (seen_error) {
  FREE_AND_NULL(ref_git);
 }

 return ref_git;
}
