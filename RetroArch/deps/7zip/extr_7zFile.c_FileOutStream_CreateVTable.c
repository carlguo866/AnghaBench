
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Write; } ;
struct TYPE_5__ {TYPE_1__ s; } ;
typedef TYPE_2__ CFileOutStream ;


 int FileOutStream_Write ;

void FileOutStream_CreateVTable(CFileOutStream *p)
{
   p->s.Write = FileOutStream_Write;
}
