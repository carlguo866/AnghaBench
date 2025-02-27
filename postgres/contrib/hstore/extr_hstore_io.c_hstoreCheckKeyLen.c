
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERRCODE_STRING_DATA_RIGHT_TRUNCATION ;
 int ERROR ;
 size_t HSTORE_MAX_KEY_LEN ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;

size_t
hstoreCheckKeyLen(size_t len)
{
 if (len > HSTORE_MAX_KEY_LEN)
  ereport(ERROR,
    (errcode(ERRCODE_STRING_DATA_RIGHT_TRUNCATION),
     errmsg("string too long for hstore key")));
 return len;
}
