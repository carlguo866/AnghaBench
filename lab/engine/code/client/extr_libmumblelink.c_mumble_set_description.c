
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_2__ {int description; } ;


 size_t MIN (int,scalar_t__) ;
 TYPE_1__* lm ;
 int mbstowcs (int ,char const*,size_t) ;
 scalar_t__ strlen (char const*) ;

void mumble_set_description(const char* description)
{
 size_t len;
 if (!lm)
  return;
 len = MIN(sizeof(lm->description)/sizeof(wchar_t), strlen(description)+1);
 mbstowcs(lm->description, description, len);
}
