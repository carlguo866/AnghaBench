
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ pos; scalar_t__ len; int* buf; } ;
struct TYPE_4__ {TYPE_1__ buf; } ;
struct config_source {TYPE_2__ u; } ;


 int EOF ;

__attribute__((used)) static int config_buf_fgetc(struct config_source *conf)
{
 if (conf->u.buf.pos < conf->u.buf.len)
  return conf->u.buf.buf[conf->u.buf.pos++];

 return EOF;
}
