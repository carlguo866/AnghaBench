
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *get_key_fmt(int fmt)
{
 switch (fmt) {
 case 128:
  return "simple";
 default:
  return "unknown/invalid format";
 }
}
