
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t USHORT ;
typedef int ULONG ;
struct TYPE_3__ {int (* InD ) (size_t) ;} ;
struct TYPE_4__ {scalar_t__ hVdd; TYPE_1__ IoHandlers; } ;


 scalar_t__ INVALID_HANDLE_VALUE ;
 size_t IOReadW (size_t) ;
 TYPE_2__* IoPortProc ;
 int MAKELONG (size_t,size_t) ;
 int stub1 (size_t) ;

ULONG
IOReadD(USHORT Port)
{
    if (IoPortProc[Port].hVdd == INVALID_HANDLE_VALUE &&
        IoPortProc[Port].IoHandlers.InD)
    {
        return IoPortProc[Port].IoHandlers.InD(Port);
    }
    else
    {
        USHORT Low, High;


        Low = IOReadW(Port);
        High = IOReadW(Port + sizeof(USHORT));
        return MAKELONG(Low, High);
    }
}
