
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Assert (int) ;
 int FATAL ;
 int elog (int ,char*) ;
 char* palloc (size_t) ;
 int snprintf (char*,size_t,char*,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static char *
PLy_procedure_munge_source(const char *name, const char *src)
{
 char *mrc,
      *mp;
 const char *sp;
 size_t mlen;
 int plen;




 mlen = (strlen(src) * 2) + strlen(name) + 16;

 mrc = palloc(mlen);
 plen = snprintf(mrc, mlen, "def %s():\n\t", name);
 Assert(plen >= 0 && plen < mlen);

 sp = src;
 mp = mrc + plen;

 while (*sp != '\0')
 {
  if (*sp == '\r' && *(sp + 1) == '\n')
   sp++;

  if (*sp == '\n' || *sp == '\r')
  {
   *mp++ = '\n';
   *mp++ = '\t';
   sp++;
  }
  else
   *mp++ = *sp++;
 }
 *mp++ = '\n';
 *mp++ = '\n';
 *mp = '\0';

 if (mp > (mrc + mlen))
  elog(FATAL, "buffer overrun in PLy_procedure_munge_source");

 return mrc;
}
