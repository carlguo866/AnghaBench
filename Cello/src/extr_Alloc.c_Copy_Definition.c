
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char* Copy_Definition(void) {
  return
    "struct Copy {\n"
    "  var (*copy)(var);\n"
    "};\n";
}
