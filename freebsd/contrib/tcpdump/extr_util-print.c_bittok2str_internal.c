
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct tok {char const* s; int v; } ;
typedef int buf ;


 int snprintf (char*,int,char*,int) ;
 size_t strlcpy (char*,char const*,size_t) ;

__attribute__((used)) static char *
bittok2str_internal(register const struct tok *lp, register const char *fmt,
    register u_int v, const char *sep)
{
        static char buf[1024+1];
        char *bufp = buf;
        size_t space_left = sizeof(buf), string_size;
        register u_int rotbit;
        register u_int tokval;
        const char * sepstr = "";

 while (lp != ((void*)0) && lp->s != ((void*)0)) {
            tokval=lp->v;
            rotbit=1;
            while (rotbit != 0) {




  if (tokval == (v&rotbit)) {

                    if (space_left <= 1)
                        return (buf);
                    string_size = strlcpy(bufp, sepstr, space_left);
                    if (string_size >= space_left)
                        return (buf);
                    bufp += string_size;
                    space_left -= string_size;
                    if (space_left <= 1)
                        return (buf);
                    string_size = strlcpy(bufp, lp->s, space_left);
                    if (string_size >= space_left)
                        return (buf);
                    bufp += string_size;
                    space_left -= string_size;
                    sepstr = sep;
                    break;
                }
                rotbit=rotbit<<1;
            }
            lp++;
 }

        if (bufp == buf)

            (void)snprintf(buf, sizeof(buf), fmt == ((void*)0) ? "#%08x" : fmt, v);
        return (buf);
}
