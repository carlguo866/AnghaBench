
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int removeSrcFile; } ;
typedef TYPE_1__ FIO_prefs_t ;



void FIO_setRemoveSrcFile(FIO_prefs_t* const prefs, unsigned flag) { prefs->removeSrcFile = (flag>0); }
