
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SEGGER_RTT_Write (unsigned int,char const*,int) ;
 int _strlen (char const*) ;

int SEGGER_RTT_WriteString(unsigned BufferIndex, const char* s) {
  int Len;

  Len = _strlen(s);
  return SEGGER_RTT_Write(BufferIndex, s, Len);
}
