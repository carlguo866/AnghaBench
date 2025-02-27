
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int LPWSTR ;
typedef scalar_t__ HRESULT ;
typedef int DWORD ;
typedef char const CHAR ;


 scalar_t__ E_POINTER ;
 int FreeWideString (int ) ;
 int GetWideString (char const*) ;
 int INTERNET_MAX_URL_LENGTH ;
 scalar_t__ S_OK ;
 scalar_t__ lstrcmpW (int *,int ) ;
 int ok (int,char*,...) ;
 scalar_t__ pUrlGetPartA (char const*,char const*,int*,int,int) ;
 scalar_t__ pUrlGetPartW (int ,int *,int*,int,int) ;
 scalar_t__ strcmp (char const*,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static void test_url_part(const char* szUrl, DWORD dwPart, DWORD dwFlags, const char* szExpected)
{
  CHAR szPart[INTERNET_MAX_URL_LENGTH];
  WCHAR wszPart[INTERNET_MAX_URL_LENGTH];
  LPWSTR wszUrl = GetWideString(szUrl);
  LPWSTR wszConvertedPart;
  HRESULT res;
  DWORD dwSize;

  dwSize = 1;
  res = pUrlGetPartA(szUrl, szPart, &dwSize, dwPart, dwFlags);
  ok(res == E_POINTER, "UrlGetPart for \"%s\" gave: 0x%08x\n", szUrl, res);
  ok(dwSize == strlen(szExpected)+1 ||
          (*szExpected == '?' && dwSize == strlen(szExpected)),
          "UrlGetPart for \"%s\" gave size: %u\n", szUrl, dwSize);

  dwSize = INTERNET_MAX_URL_LENGTH;
  res = pUrlGetPartA(szUrl, szPart, &dwSize, dwPart, dwFlags);
  ok(res == S_OK,
    "UrlGetPartA for \"%s\" part 0x%08x returned 0x%x and \"%s\"\n",
    szUrl, dwPart, res, szPart);
  if (pUrlGetPartW) {
    dwSize = INTERNET_MAX_URL_LENGTH;
    res = pUrlGetPartW(wszUrl, wszPart, &dwSize, dwPart, dwFlags);
    ok(res == S_OK,
      "UrlGetPartW for \"%s\" part 0x%08x returned 0x%x\n",
      szUrl, dwPart, res);

    wszConvertedPart = GetWideString(szPart);

    ok(lstrcmpW(wszPart,wszConvertedPart)==0,
        "Strings didn't match between ascii and unicode UrlGetPart!\n");

    FreeWideString(wszConvertedPart);
  }
  FreeWideString(wszUrl);


  ok(strcmp(szPart,szExpected)==0 ||
     (*szExpected=='?' && !strcmp(szPart,szExpected+1)),
  "Expected %s, but got %s\n", szExpected, szPart);
}
