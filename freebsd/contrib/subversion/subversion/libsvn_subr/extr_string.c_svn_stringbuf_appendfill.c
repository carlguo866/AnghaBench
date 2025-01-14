
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t len; char* data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef size_t apr_size_t ;


 int memset (char*,char,size_t) ;
 int svn_stringbuf_ensure (TYPE_1__*,size_t) ;

void
svn_stringbuf_appendfill(svn_stringbuf_t *str,
                         char byte,
                         apr_size_t count)
{
  apr_size_t new_len = str->len + count;
  svn_stringbuf_ensure(str, new_len);

  memset(str->data + str->len, byte, count);


  str->len = new_len;
  str->data[new_len] = '\0';
}
