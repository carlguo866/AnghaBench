
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int unichar ;


 int FL_ALPHA ;
 int* attr ;

bool unichar_isalpha(unichar c) {
    return c < 128 && (attr[c] & FL_ALPHA) != 0;
}
