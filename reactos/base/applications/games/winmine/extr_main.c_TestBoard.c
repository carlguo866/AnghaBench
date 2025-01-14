
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ y; scalar_t__ x; } ;
struct TYPE_15__ {scalar_t__ status; scalar_t__ boxes_left; scalar_t__ num_flags; scalar_t__ mines; unsigned int rows; unsigned int cols; size_t difficulty; scalar_t__ time; scalar_t__* best_time; int hInst; int hWnd; TYPE_2__** box; TYPE_1__ press; int mines_rect; } ;
struct TYPE_14__ {int x; int y; } ;
struct TYPE_13__ {scalar_t__ FlagType; scalar_t__ IsMine; } ;
typedef TYPE_3__ POINT ;
typedef int LPARAM ;
typedef int HWND ;
typedef TYPE_4__ BOARD ;


 size_t CUSTOM ;
 int CongratsDlgProc ;
 int DLG_CONGRATS ;
 int DLG_TIMES ;
 int DialogBoxParamW (int ,int ,int ,int ,int ) ;
 scalar_t__ FLAG ;
 scalar_t__ GAMEOVER ;
 int MAKEINTRESOURCEW (int ) ;
 scalar_t__ PtInRect (int *,TYPE_3__) ;
 int RDW_INVALIDATE ;
 int RDW_UPDATENOW ;
 int RedrawWindow (int ,int *,int ,int) ;
 int TestFace (TYPE_4__*,TYPE_3__,int) ;
 int TestMines (TYPE_4__*,TYPE_3__,int) ;
 int TimesDlgProc ;
 int UnpressBoxes (TYPE_4__*,scalar_t__,scalar_t__) ;
 scalar_t__ WON ;

__attribute__((used)) static void TestBoard( HWND hWnd, BOARD *p_board, int x, int y, int msg )
{
    POINT pt;
    unsigned col,row;

    pt.x = x;
    pt.y = y;

    if( PtInRect( &p_board->mines_rect, pt ) && p_board->status != GAMEOVER
    && p_board->status != WON )
        TestMines( p_board, pt, msg );
    else {
        UnpressBoxes( p_board,
            p_board->press.x,
            p_board->press.y );
        p_board->press.x = 0;
        p_board->press.y = 0;
    }

    if( p_board->boxes_left == 0 ) {
        p_board->status = WON;

        if (p_board->num_flags < p_board->mines) {
            for( row = 1; row <= p_board->rows; row++ ) {
                for( col = 1; col <= p_board->cols; col++ ) {
                    if (p_board->box[col][row].IsMine && p_board->box[col][row].FlagType != FLAG)
                        p_board->box[col][row].FlagType = FLAG;
                }
            }

            p_board->num_flags = p_board->mines;

            RedrawWindow( p_board->hWnd, ((void*)0), 0,
                RDW_INVALIDATE | RDW_UPDATENOW );
        }

        if( p_board->difficulty != CUSTOM &&
                    p_board->time < p_board->best_time[p_board->difficulty] ) {
            p_board->best_time[p_board->difficulty] = p_board->time;

            DialogBoxParamW( p_board->hInst, MAKEINTRESOURCEW(DLG_CONGRATS), hWnd,
                             CongratsDlgProc, (LPARAM) p_board);
            DialogBoxParamW( p_board->hInst, MAKEINTRESOURCEW(DLG_TIMES), hWnd,
                             TimesDlgProc, (LPARAM) p_board);
        }
    }
    TestFace( p_board, pt, msg );
}
