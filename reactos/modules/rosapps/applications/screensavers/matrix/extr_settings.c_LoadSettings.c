
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef scalar_t__ TCHAR ;
typedef scalar_t__ LONG ;
typedef int HKEY ;
typedef int BYTE ;


 scalar_t__ DENSITY_MAX ;
 scalar_t__ DENSITY_MIN ;
 scalar_t__ ERROR_SUCCESS ;
 void* FALSE ;
 scalar_t__ FONT_MAX ;
 scalar_t__ FONT_MIN ;
 int HKEY_CURRENT_USER ;
 int KEY_READ ;
 int MAXMSG_LENGTH ;
 scalar_t__ MSGSPEED_MAX ;
 scalar_t__ MSGSPEED_MIN ;
 int RegCloseKey (int ) ;
 int RegCreateKeyEx (int ,scalar_t__*,int ,scalar_t__*,int ,int ,int *,int *,int *) ;
 scalar_t__ RegQueryValueEx (int ,scalar_t__*,int ,int ,int *,int*) ;
 scalar_t__ SPEED_MAX ;
 scalar_t__ SPEED_MIN ;
 void* TRUE ;
 int ZeroMemory (scalar_t__*,int) ;
 scalar_t__* _T (char*) ;
 scalar_t__ _istascii (scalar_t__) ;
 int free (scalar_t__*) ;
 void* g_fFontBold ;
 void* g_fRandomizeMessages ;
 scalar_t__ g_nDensity ;
 scalar_t__ g_nFontSize ;
 scalar_t__ g_nMatrixSpeed ;
 scalar_t__ g_nMessageSpeed ;
 size_t g_nNumMessages ;
 scalar_t__ g_szFontName ;
 int * g_szMessages ;
 int lstrcpy (scalar_t__,scalar_t__*) ;
 int lstrcpyn (int ,scalar_t__*,int ) ;
 scalar_t__ lstrlen (scalar_t__*) ;
 scalar_t__* malloc (int) ;

void LoadSettings()
{
 HKEY hkey;
 LONG value;
 ULONG len;
 TCHAR *hugechar = malloc(4096);
 TCHAR *hptr = hugechar;

 if(hugechar == 0)
  return;

 ZeroMemory(hugechar, 4096);

 RegCreateKeyEx(HKEY_CURRENT_USER, _T("Software\\Catch22\\Matrix Screen Saver"), 0,
  _T(""), 0, KEY_READ, ((void*)0), &hkey, ((void*)0));

 len = sizeof value;
 if(ERROR_SUCCESS == RegQueryValueEx(hkey, _T("MessageSpeed"), 0, 0, (BYTE *)&value, &len))
 {
  if(value >= MSGSPEED_MIN && value <= MSGSPEED_MAX)
   g_nMessageSpeed = value;
 }

 if(ERROR_SUCCESS == RegQueryValueEx(hkey, _T("MatrixSpeed"), 0, 0, (BYTE *)&value, &len))
 {
  if(value >= SPEED_MIN && value <= SPEED_MAX)
   g_nMatrixSpeed = value;
 }

 if(ERROR_SUCCESS == RegQueryValueEx(hkey, _T("Density"), 0, 0, (BYTE *)&value, &len))
 {
  if(value >= DENSITY_MIN && value <= DENSITY_MAX)
   g_nDensity = value;
 }

 if(ERROR_SUCCESS == RegQueryValueEx(hkey, _T("FontSize"), 0, 0, (BYTE *)&value, &len))
 {
  if(value >= FONT_MIN && value <= FONT_MAX)
   g_nFontSize = value;
 }

 if(ERROR_SUCCESS == RegQueryValueEx(hkey, _T("FontBold"), 0, 0, (BYTE *)&value, &len))
  g_fFontBold = (value == 0 ? FALSE : TRUE);

 if(ERROR_SUCCESS == RegQueryValueEx(hkey, _T("Randomize"), 0, 0, (BYTE *)&value, &len))
  g_fRandomizeMessages = (value == 0 ? FALSE : TRUE);

 len = 512;
 if(RegQueryValueEx(hkey, _T("FontName"), 0, 0, (BYTE *)g_szFontName, &len) != ERROR_SUCCESS)
  lstrcpy(g_szFontName, _T("Arial"));

 len = 4096;

 if(ERROR_SUCCESS == RegQueryValueEx(hkey, _T("Messages"), 0, 0 , (BYTE *)hugechar, &len))
 {
  while(len > 0 && *hptr && _istascii(*hptr))
  {
   if(lstrlen(hptr) > 0)
   {
    lstrcpyn(g_szMessages[g_nNumMessages], hptr, MAXMSG_LENGTH);
    ++g_nNumMessages;
    hptr += lstrlen(hptr) + 1;
   }
  }
 }
 else
 {

  lstrcpyn(g_szMessages[0], _T("ReactOS"), MAXMSG_LENGTH);
  ++g_nNumMessages;
 }

 RegCloseKey(hkey);
 free(hugechar);
}
