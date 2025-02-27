
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module_func_block {int (* deinit ) (struct module_env*,int ) ;int name; int (* init ) (struct module_env*,int ) ;} ;
struct module_env {int scratch; int scratch_buffer; struct config_file* cfg; } ;
struct config_file {int dummy; } ;
typedef int env ;


 int BUFSIZ ;
 int edns_known_options_delete (struct module_env*) ;
 int edns_known_options_init (struct module_env*) ;
 int fatal_exit (char*,...) ;
 int memset (struct module_env*,int ,int) ;
 int regional_create () ;
 int regional_destroy (int ) ;
 int sldns_buffer_free (int ) ;
 int sldns_buffer_new (int ) ;
 int stub1 (struct module_env*,int ) ;
 int stub2 (struct module_env*,int ) ;

__attribute__((used)) static void
check_mod(struct config_file* cfg, struct module_func_block* fb)
{
 struct module_env env;
 memset(&env, 0, sizeof(env));
 env.cfg = cfg;
 env.scratch = regional_create();
 env.scratch_buffer = sldns_buffer_new(BUFSIZ);
 if(!env.scratch || !env.scratch_buffer)
  fatal_exit("out of memory");
 if(!edns_known_options_init(&env))
  fatal_exit("out of memory");
 if(!(*fb->init)(&env, 0)) {
  fatal_exit("bad config for %s module", fb->name);
 }
 (*fb->deinit)(&env, 0);
 sldns_buffer_free(env.scratch_buffer);
 regional_destroy(env.scratch);
 edns_known_options_delete(&env);
}
