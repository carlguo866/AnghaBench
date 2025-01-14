
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef char wchar_t ;
struct TYPE_4__ {char* cFileName; int dwFileAttributes; } ;
typedef TYPE_1__ WIN32_FIND_DATA ;
typedef char* PWCHAR ;
typedef int PVOID ;
typedef scalar_t__ (* PKULL_M_FILE_FIND_CALLBACK ) (int,char*,char*,int ) ;
typedef char* PCWCHAR ;
typedef int HANDLE ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;
 int FILE_ATTRIBUTE_DIRECTORY ;
 int FindClose (int ) ;
 int FindFirstFile (char*,TYPE_1__*) ;
 scalar_t__ FindNextFile (int ,TYPE_1__*) ;
 int GetFileAttributes (char*) ;
 int INVALID_FILE_ATTRIBUTES ;
 int INVALID_HANDLE_VALUE ;
 int LPTR ;
 scalar_t__ LocalAlloc (int ,int) ;
 int LocalFree (char*) ;
 int MAX_PATH ;
 scalar_t__ TRUE ;
 scalar_t__ _wcsicmp (char*,char*) ;
 int kprintf (char*,...) ;
 scalar_t__ wcscat_s (char*,int,char*) ;
 scalar_t__ wcscpy_s (char*,int,char*) ;
 scalar_t__ wcslen (char*) ;

BOOL kull_m_file_Find(PCWCHAR directory, PCWCHAR filter, BOOL isRecursive , DWORD level, BOOL isPrintInfos, PKULL_M_FILE_FIND_CALLBACK callback, PVOID pvArg)
{
 BOOL status = FALSE;
 DWORD dwAttrib;
 HANDLE hFind;
 WIN32_FIND_DATA fData;
 PWCHAR fullpath;

 dwAttrib = GetFileAttributes(directory);
 if((dwAttrib != INVALID_FILE_ATTRIBUTES) && (dwAttrib & FILE_ATTRIBUTE_DIRECTORY))
 {
  if(isPrintInfos && !level)
  {
   kprintf(L"%*s" L"Directory \'%s\'", level << 1, L"", directory);
   if(filter)
    kprintf(L" (%s)", filter);
   kprintf(L"\n");
  }
  if(fullpath = (wchar_t *) LocalAlloc(LPTR, MAX_PATH * sizeof(wchar_t)))
  {
   if(wcscpy_s(fullpath, MAX_PATH, directory) == 0)
   {
    if(wcscat_s(fullpath, MAX_PATH, L"\\") == 0)
    {
     if(wcscat_s(fullpath, MAX_PATH, filter ? filter : L"*") == 0)
     {
      hFind = FindFirstFile(fullpath, &fData);
      if(hFind != INVALID_HANDLE_VALUE)
      {
       do
       {
        if(_wcsicmp(fData.cFileName, L".") && _wcsicmp(fData.cFileName, L".."))
        {
         if(wcscpy_s(fullpath, MAX_PATH, directory) == 0)
         {
          if(wcscat_s(fullpath, MAX_PATH, L"\\") == 0)
          {
           dwAttrib = (DWORD) wcslen(fullpath);
           if(wcscat_s(fullpath, MAX_PATH, fData.cFileName) == 0)
           {
            if(isPrintInfos)
             kprintf(L"%*s" L"%3u %c|'%s\'\n", level << 1, L"", level, (fData.dwFileAttributes & FILE_ATTRIBUTE_DIRECTORY) ? L'D' : L'F' , fData.cFileName);
            if(!(fData.dwFileAttributes & FILE_ATTRIBUTE_DIRECTORY))
            {
             if(callback)
              status = callback(level, fullpath, fullpath + dwAttrib, pvArg);
            }
            else if(isRecursive && fData.cFileName)
             status = kull_m_file_Find(fullpath, filter, TRUE, level + 1, isPrintInfos, callback, pvArg);
           }
          }
         }
        }
       } while(!status && FindNextFile(hFind, &fData));
       FindClose(hFind);
      }
     }
    }
   }
  }
  LocalFree(fullpath);
 }
 return status;
}
