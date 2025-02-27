
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct dstr {char* array; int member_0; } ;
struct TYPE_4__ {char* file; int mutex; } ;
typedef TYPE_1__ config_t ;


 int CONFIG_ERROR ;
 int CONFIG_SUCCESS ;
 int LOG_ERROR ;
 int blog (int ,char*,...) ;
 int config_save (TYPE_1__*) ;
 int dstr_cat (struct dstr*,char const*) ;
 int dstr_copy (struct dstr*,char*) ;
 int dstr_free (struct dstr*) ;
 scalar_t__ os_safe_replace (char*,char*,char*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

int config_save_safe(config_t *config, const char *temp_ext,
       const char *backup_ext)
{
 struct dstr temp_file = {0};
 struct dstr backup_file = {0};
 char *file = config->file;
 int ret;

 if (!temp_ext || !*temp_ext) {
  blog(LOG_ERROR, "config_save_safe: invalid "
    "temporary extension specified");
  return CONFIG_ERROR;
 }

 pthread_mutex_lock(&config->mutex);

 dstr_copy(&temp_file, config->file);
 if (*temp_ext != '.')
  dstr_cat(&temp_file, ".");
 dstr_cat(&temp_file, temp_ext);

 config->file = temp_file.array;
 ret = config_save(config);
 config->file = file;

 if (ret != CONFIG_SUCCESS) {
  blog(LOG_ERROR,
       "config_save_safe: failed to "
       "write to %s",
       temp_file.array);
  goto cleanup;
 }

 if (backup_ext && *backup_ext) {
  dstr_copy(&backup_file, config->file);
  if (*backup_ext != '.')
   dstr_cat(&backup_file, ".");
  dstr_cat(&backup_file, backup_ext);
 }

 if (os_safe_replace(file, temp_file.array, backup_file.array) != 0)
  ret = CONFIG_ERROR;

cleanup:
 pthread_mutex_unlock(&config->mutex);
 dstr_free(&temp_file);
 dstr_free(&backup_file);
 return ret;
}
