
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ts_config {int dummy; } ;
struct ts_bm {unsigned int patlen; } ;


 struct ts_bm* ts_config_priv (struct ts_config*) ;

__attribute__((used)) static unsigned int bm_get_pattern_len(struct ts_config *conf)
{
 struct ts_bm *bm = ts_config_priv(conf);
 return bm->patlen;
}
