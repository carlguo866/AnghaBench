
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;


 int test_proc_output (char*) ;

__attribute__((used)) static int test_read_proc(char *page, char **start, off_t off,
     int count, int *eof, void *data)
{
 int len;

 len = test_proc_output(page);
 if (len <= off+count)
  *eof = 1;
 *start = page + off;
 len -= off;
 if (len > count)
  len = count;
 if (len < 0)
  len = 0;
 return len;
}
