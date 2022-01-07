
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WPARAM ;
typedef int VOID ;
typedef int TCHAR ;
typedef scalar_t__ POWER_ACTION ;
typedef size_t LRESULT ;
typedef scalar_t__ LPARAM ;
typedef int INT ;
typedef int HWND ;


 size_t CB_ERR ;
 int CB_INSERTSTRING ;
 int CB_SETITEMDATA ;
 int LoadString (int ,int ,int *,int) ;
 int MAX_PATH ;
 size_t SendMessage (int ,int ,int,scalar_t__) ;
 int hApplet ;

__attribute__((used)) static VOID
AddItem(HWND hDlgCtrl, INT ResourceId, LPARAM lParam, POWER_ACTION * lpAction)
{
    TCHAR szBuffer[MAX_PATH];
    LRESULT Index;

    if (LoadString(hApplet, ResourceId, szBuffer, MAX_PATH) < MAX_PATH)
    {
        Index = SendMessage(hDlgCtrl, CB_INSERTSTRING, -1, (LPARAM)szBuffer);
        if (Index != CB_ERR)
        {
            SendMessage(hDlgCtrl, CB_SETITEMDATA, (WPARAM)Index, lParam);
            lpAction[Index] = (POWER_ACTION)lParam;
        }
    }
}
