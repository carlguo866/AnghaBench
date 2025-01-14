
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int temp_blks_read; } ;
struct TYPE_5__ {int data; } ;
struct TYPE_6__ {long curOffset; int curFile; int numFiles; scalar_t__ nbytes; TYPE_1__ buffer; int * files; } ;
typedef int File ;
typedef TYPE_2__ BufFile ;


 scalar_t__ FileRead (int ,int ,int,long,int ) ;
 long MAX_PHYSICAL_FILESIZE ;
 int WAIT_EVENT_BUFFILE_READ ;
 TYPE_3__ pgBufferUsage ;

__attribute__((used)) static void
BufFileLoadBuffer(BufFile *file)
{
 File thisfile;




 if (file->curOffset >= MAX_PHYSICAL_FILESIZE &&
  file->curFile + 1 < file->numFiles)
 {
  file->curFile++;
  file->curOffset = 0L;
 }




 thisfile = file->files[file->curFile];
 file->nbytes = FileRead(thisfile,
       file->buffer.data,
       sizeof(file->buffer),
       file->curOffset,
       WAIT_EVENT_BUFFILE_READ);
 if (file->nbytes < 0)
  file->nbytes = 0;


 if (file->nbytes > 0)
  pgBufferUsage.temp_blks_read++;
}
