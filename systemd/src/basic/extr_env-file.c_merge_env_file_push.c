
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int REPLACE_ENV_ALLOW_BRACELESS ;
 int REPLACE_ENV_ALLOW_EXTENDED ;
 int REPLACE_ENV_USE_ENVIRONMENT ;
 int assert (char***) ;
 int env_name_is_valid (char const*) ;
 int free (char*) ;
 int free_and_replace (char*,char*) ;
 int load_env_file_push (char const*,unsigned int,char const*,char*,char***,int*) ;
 int log_debug (char*,char const*,unsigned int,char const*,char*) ;
 int log_error (char*,int ,unsigned int,char const*) ;
 char* replace_env (char*,char**,int) ;
 int strna (char const*) ;

__attribute__((used)) static int merge_env_file_push(
                const char *filename, unsigned line,
                const char *key, char *value,
                void *userdata,
                int *n_pushed) {

        char ***env = userdata;
        char *expanded_value;

        assert(env);

        if (!value) {
                log_error("%s:%u: invalid syntax (around \"%s\"), ignoring.", strna(filename), line, key);
                return 0;
        }

        if (!env_name_is_valid(key)) {
                log_error("%s:%u: invalid variable name \"%s\", ignoring.", strna(filename), line, key);
                free(value);
                return 0;
        }

        expanded_value = replace_env(value, *env,
                                     REPLACE_ENV_USE_ENVIRONMENT|
                                     REPLACE_ENV_ALLOW_BRACELESS|
                                     REPLACE_ENV_ALLOW_EXTENDED);
        if (!expanded_value)
                return -ENOMEM;

        free_and_replace(value, expanded_value);

        log_debug("%s:%u: setting %s=%s", filename, line, key, value);

        return load_env_file_push(filename, line, key, value, env, n_pushed);
}
