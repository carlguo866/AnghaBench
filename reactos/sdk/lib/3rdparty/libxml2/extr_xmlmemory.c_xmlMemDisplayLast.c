
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mh_type; char* mh_file; int mh_line; scalar_t__ mh_tag; struct TYPE_4__* mh_next; scalar_t__ mh_size; int mh_number; } ;
typedef TYPE_1__ MEMHDR ;
typedef int FILE ;




 scalar_t__ MEMTAG ;



 int debugMaxMemSize ;
 int debugMemSize ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int *,char*,...) ;
 TYPE_1__* memlist ;
 int xmlMemContentShow (int *,TYPE_1__*) ;
 int xmlMemMutex ;
 int xmlMutexLock (int ) ;
 int xmlMutexUnlock (int ) ;

void
xmlMemDisplayLast(FILE *fp, long nbBytes)
{





    FILE *old_fp = fp;

    if (nbBytes <= 0)
        return;

    if (fp == ((void*)0)) {
 fp = fopen(".memorylist", "w");
 if (fp == ((void*)0))
     return;
    }
    fprintf(fp,"Memory list not compiled (MEM_LIST not defined !)\n");

    if (old_fp == ((void*)0))
 fclose(fp);
}
