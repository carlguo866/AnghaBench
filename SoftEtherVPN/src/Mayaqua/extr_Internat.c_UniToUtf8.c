
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef size_t UINT ;
typedef int BYTE ;


 size_t GetUniType (int ) ;
 scalar_t__ IsBigEndian () ;
 size_t UniStrLen (int *) ;

UINT UniToUtf8(BYTE *u, UINT size, wchar_t *s)
{
 UINT i, len, type, wp;

 if (u == ((void*)0) || s == ((void*)0))
 {
  return 0;
 }
 if (size == 0)
 {
  size = 0x3fffffff;
 }

 len = UniStrLen(s);
 wp = 0;
 for (i = 0;i < len;i++)
 {
  BYTE c1, c2;
  wchar_t c = s[i];

  if (IsBigEndian())
  {
   if (sizeof(wchar_t) == 2)
   {
    c1 = ((BYTE *)&c)[0];
    c2 = ((BYTE *)&c)[1];
   }
   else
   {
    c1 = ((BYTE *)&c)[2];
    c2 = ((BYTE *)&c)[3];
   }
  }
  else
  {
   c1 = ((BYTE *)&c)[1];
   c2 = ((BYTE *)&c)[0];
  }

  type = GetUniType(s[i]);
  switch (type)
  {
  case 1:
   if (wp < size)
   {
    u[wp++] = c2;
   }
   break;
  case 2:
   if (wp < size)
   {
    u[wp++] = 0xc0 | (((((c1 & 0x07) << 2) & 0x1c)) | (((c2 & 0xc0) >> 6) & 0x03));
   }
   if (wp < size)
   {
    u[wp++] = 0x80 | (c2 & 0x3f);
   }
   break;
  case 3:
   if (wp < size)
   {
    u[wp++] = 0xe0 | (((c1 & 0xf0) >> 4) & 0x0f);
   }
   if (wp < size)
   {
    u[wp++] = 0x80 | (((c1 & 0x0f) << 2) & 0x3c) | (((c2 & 0xc0) >> 6) & 0x03);
   }
   if (wp < size)
   {
    u[wp++] = 0x80 | (c2 & 0x3f);
   }
   break;
  }
 }
 if (wp < size)
 {
  u[wp] = 0;
 }
 return wp;
}
