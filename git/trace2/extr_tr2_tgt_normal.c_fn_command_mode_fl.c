
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 struct strbuf STRBUF_INIT ;
 int normal_io_write_fl (char const*,int,struct strbuf*) ;
 int strbuf_addf (struct strbuf*,char*,char const*) ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static void fn_command_mode_fl(const char *file, int line, const char *mode)
{
 struct strbuf buf_payload = STRBUF_INIT;

 strbuf_addf(&buf_payload, "cmd_mode %s", mode);
 normal_io_write_fl(file, line, &buf_payload);
 strbuf_release(&buf_payload);
}
