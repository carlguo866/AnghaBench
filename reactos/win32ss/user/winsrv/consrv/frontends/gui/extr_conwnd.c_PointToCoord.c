
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_14__ {scalar_t__ X; scalar_t__ Y; } ;
struct TYPE_11__ {scalar_t__ X; scalar_t__ Y; } ;
struct TYPE_10__ {scalar_t__ X; scalar_t__ Y; } ;
struct TYPE_13__ {TYPE_2__ ScreenBufferSize; TYPE_1__ ViewOrigin; } ;
struct TYPE_12__ {TYPE_4__* ActiveBuffer; } ;
typedef int SHORT ;
typedef TYPE_3__* PGUI_CONSOLE_DATA ;
typedef TYPE_4__* PCONSOLE_SCREEN_BUFFER ;
typedef int LPARAM ;
typedef TYPE_5__ COORD ;


 int GetScreenBufferSizeUnits (TYPE_4__*,TYPE_3__*,scalar_t__*,scalar_t__*) ;
 scalar_t__ HIWORD (int ) ;
 scalar_t__ LOWORD (int ) ;

__attribute__((used)) static COORD
PointToCoord(PGUI_CONSOLE_DATA GuiData, LPARAM lParam)
{
    PCONSOLE_SCREEN_BUFFER Buffer = GuiData->ActiveBuffer;
    COORD Coord;
    UINT WidthUnit, HeightUnit;

    GetScreenBufferSizeUnits(Buffer, GuiData, &WidthUnit, &HeightUnit);

    Coord.X = Buffer->ViewOrigin.X + ((SHORT)LOWORD(lParam) / (int)WidthUnit );
    Coord.Y = Buffer->ViewOrigin.Y + ((SHORT)HIWORD(lParam) / (int)HeightUnit);


    if (Coord.X < 0)
        Coord.X = 0;
    else if (Coord.X >= Buffer->ScreenBufferSize.X)
        Coord.X = Buffer->ScreenBufferSize.X - 1;

    if (Coord.Y < 0)
        Coord.Y = 0;
    else if (Coord.Y >= Buffer->ScreenBufferSize.Y)
        Coord.Y = Buffer->ScreenBufferSize.Y - 1;

    return Coord;
}
