
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rewrite {int dummy; } ;
struct remote {int configured_in_repo; char const* receivepack; char const* uploadpack; int fetch_tags; char const* foreign_vcs; int http_proxy_authmethod; int http_proxy; int fetch; int push; void* prune_tags; void* prune; void* skip_default_update; void* mirror; int origin; } ;
struct branch {char const* remote_name; char const* pushremote_name; } ;


 scalar_t__ CONFIG_SCOPE_REPO ;
 int REMOTE_CONFIG ;
 int _ (char*) ;
 int add_instead_of (struct rewrite*,int ) ;
 int add_merge (struct branch*,int ) ;
 int add_pushurl (struct remote*,char const*) ;
 int add_url (struct remote*,char const*) ;
 int config_error_nonbool (char const*) ;
 scalar_t__ current_config_scope () ;
 int error (int ) ;
 int free (char*) ;
 void* git_config_bool (char const*,char const*) ;
 int git_config_string (char const**,char const*,char const*) ;
 struct branch* make_branch (char const*,int) ;
 struct remote* make_remote (char const*,int) ;
 struct rewrite* make_rewrite (int *,char const*,int) ;
 scalar_t__ parse_config_key (char const*,char*,char const**,int*,char const**) ;
 char const* pushremote_name ;
 int refspec_append (int *,char const*) ;
 int rewrites ;
 int rewrites_push ;
 int strcmp (char const*,char*) ;
 int warning (int ,char const*) ;
 int xstrdup (char const*) ;

__attribute__((used)) static int handle_config(const char *key, const char *value, void *cb)
{
 const char *name;
 int namelen;
 const char *subkey;
 struct remote *remote;
 struct branch *branch;
 if (parse_config_key(key, "branch", &name, &namelen, &subkey) >= 0) {
  if (!name)
   return 0;
  branch = make_branch(name, namelen);
  if (!strcmp(subkey, "remote")) {
   return git_config_string(&branch->remote_name, key, value);
  } else if (!strcmp(subkey, "pushremote")) {
   return git_config_string(&branch->pushremote_name, key, value);
  } else if (!strcmp(subkey, "merge")) {
   if (!value)
    return config_error_nonbool(key);
   add_merge(branch, xstrdup(value));
  }
  return 0;
 }
 if (parse_config_key(key, "url", &name, &namelen, &subkey) >= 0) {
  struct rewrite *rewrite;
  if (!name)
   return 0;
  if (!strcmp(subkey, "insteadof")) {
   if (!value)
    return config_error_nonbool(key);
   rewrite = make_rewrite(&rewrites, name, namelen);
   add_instead_of(rewrite, xstrdup(value));
  } else if (!strcmp(subkey, "pushinsteadof")) {
   if (!value)
    return config_error_nonbool(key);
   rewrite = make_rewrite(&rewrites_push, name, namelen);
   add_instead_of(rewrite, xstrdup(value));
  }
 }

 if (parse_config_key(key, "remote", &name, &namelen, &subkey) < 0)
  return 0;


 if (!name && !strcmp(subkey, "pushdefault"))
  return git_config_string(&pushremote_name, key, value);

 if (!name)
  return 0;

 if (*name == '/') {
  warning(_("config remote shorthand cannot begin with '/': %s"),
   name);
  return 0;
 }
 remote = make_remote(name, namelen);
 remote->origin = REMOTE_CONFIG;
 if (current_config_scope() == CONFIG_SCOPE_REPO)
  remote->configured_in_repo = 1;
 if (!strcmp(subkey, "mirror"))
  remote->mirror = git_config_bool(key, value);
 else if (!strcmp(subkey, "skipdefaultupdate"))
  remote->skip_default_update = git_config_bool(key, value);
 else if (!strcmp(subkey, "skipfetchall"))
  remote->skip_default_update = git_config_bool(key, value);
 else if (!strcmp(subkey, "prune"))
  remote->prune = git_config_bool(key, value);
 else if (!strcmp(subkey, "prunetags"))
  remote->prune_tags = git_config_bool(key, value);
 else if (!strcmp(subkey, "url")) {
  const char *v;
  if (git_config_string(&v, key, value))
   return -1;
  add_url(remote, v);
 } else if (!strcmp(subkey, "pushurl")) {
  const char *v;
  if (git_config_string(&v, key, value))
   return -1;
  add_pushurl(remote, v);
 } else if (!strcmp(subkey, "push")) {
  const char *v;
  if (git_config_string(&v, key, value))
   return -1;
  refspec_append(&remote->push, v);
  free((char *)v);
 } else if (!strcmp(subkey, "fetch")) {
  const char *v;
  if (git_config_string(&v, key, value))
   return -1;
  refspec_append(&remote->fetch, v);
  free((char *)v);
 } else if (!strcmp(subkey, "receivepack")) {
  const char *v;
  if (git_config_string(&v, key, value))
   return -1;
  if (!remote->receivepack)
   remote->receivepack = v;
  else
   error(_("more than one receivepack given, using the first"));
 } else if (!strcmp(subkey, "uploadpack")) {
  const char *v;
  if (git_config_string(&v, key, value))
   return -1;
  if (!remote->uploadpack)
   remote->uploadpack = v;
  else
   error(_("more than one uploadpack given, using the first"));
 } else if (!strcmp(subkey, "tagopt")) {
  if (!strcmp(value, "--no-tags"))
   remote->fetch_tags = -1;
  else if (!strcmp(value, "--tags"))
   remote->fetch_tags = 2;
 } else if (!strcmp(subkey, "proxy")) {
  return git_config_string((const char **)&remote->http_proxy,
      key, value);
 } else if (!strcmp(subkey, "proxyauthmethod")) {
  return git_config_string((const char **)&remote->http_proxy_authmethod,
      key, value);
 } else if (!strcmp(subkey, "vcs")) {
  return git_config_string(&remote->foreign_vcs, key, value);
 }
 return 0;
}
