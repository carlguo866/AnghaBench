
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_filecheck_args {unsigned int fa_type; unsigned int fa_len; unsigned long fa_ino; } ;


 size_t OCFS2_FILECHECK_ARGS_LEN ;
 unsigned int OCFS2_FILECHECK_TYPE_SET ;
 scalar_t__ ocfs2_filecheck_args_get_long (char const*,size_t,unsigned long*) ;
 scalar_t__ ocfs2_filecheck_type_parse (char const*,unsigned int*) ;

__attribute__((used)) static int
ocfs2_filecheck_args_parse(const char *name, const char *buf, size_t count,
      struct ocfs2_filecheck_args *args)
{
 unsigned long val = 0;
 unsigned int type;


 if ((count < 1) || (count >= OCFS2_FILECHECK_ARGS_LEN))
  return 1;

 if (ocfs2_filecheck_type_parse(name, &type))
  return 1;
 if (ocfs2_filecheck_args_get_long(buf, count, &val))
  return 1;

 if (val <= 0)
  return 1;

 args->fa_type = type;
 if (type == OCFS2_FILECHECK_TYPE_SET)
  args->fa_len = (unsigned int)val;
 else
  args->fa_ino = val;

 return 0;
}
