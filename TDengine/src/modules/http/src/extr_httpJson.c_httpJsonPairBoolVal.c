
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JsonBuf ;


 int httpJsonBool (int *,int) ;
 int httpJsonPairHead (int *,char*,int) ;

void httpJsonPairBoolVal(JsonBuf* buf, char* name, int nNameLen, int num) {
  httpJsonPairHead(buf, name, nNameLen);
  httpJsonBool(buf, num);
}
