
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostsreader {int f; } ;


 int fclose (int ) ;

void hostsreader_close(struct hostsreader *ctx) {
 fclose(ctx->f);
}
