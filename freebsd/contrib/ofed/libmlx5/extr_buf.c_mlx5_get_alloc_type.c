
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int name ;
typedef enum mlx5_alloc_type { ____Placeholder_mlx5_alloc_type } mlx5_alloc_type ;


 int MLX5_ALLOC_TYPE_ALL ;
 int MLX5_ALLOC_TYPE_ANON ;
 int MLX5_ALLOC_TYPE_CONTIG ;
 int MLX5_ALLOC_TYPE_HUGE ;
 int MLX5_ALLOC_TYPE_PREFER_CONTIG ;
 int MLX5_ALLOC_TYPE_PREFER_HUGE ;
 char* getenv (char*) ;
 int snprintf (char*,int,char*,char const*) ;
 int strcasecmp (char*,char*) ;

void mlx5_get_alloc_type(const char *component,
    enum mlx5_alloc_type *alloc_type,
    enum mlx5_alloc_type default_type)

{
 char *env_value;
 char name[128];

 snprintf(name, sizeof(name), "%s_ALLOC_TYPE", component);

 *alloc_type = default_type;

 env_value = getenv(name);
 if (env_value) {
  if (!strcasecmp(env_value, "ANON"))
   *alloc_type = MLX5_ALLOC_TYPE_ANON;
  else if (!strcasecmp(env_value, "HUGE"))
   *alloc_type = MLX5_ALLOC_TYPE_HUGE;
  else if (!strcasecmp(env_value, "CONTIG"))
   *alloc_type = MLX5_ALLOC_TYPE_CONTIG;
  else if (!strcasecmp(env_value, "PREFER_CONTIG"))
   *alloc_type = MLX5_ALLOC_TYPE_PREFER_CONTIG;
  else if (!strcasecmp(env_value, "PREFER_HUGE"))
   *alloc_type = MLX5_ALLOC_TYPE_PREFER_HUGE;
  else if (!strcasecmp(env_value, "ALL"))
   *alloc_type = MLX5_ALLOC_TYPE_ALL;
 }
}
