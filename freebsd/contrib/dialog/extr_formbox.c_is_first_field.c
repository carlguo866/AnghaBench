
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ text_flen; } ;
typedef TYPE_1__ DIALOG_FORMITEM ;



__attribute__((used)) static int
is_first_field(DIALOG_FORMITEM item[], int choice)
{
    int count = 0;
    while (choice >= 0) {
 if (item[choice].text_flen > 0) {
     ++count;
 }
 --choice;
    }

    return (count == 1);
}
