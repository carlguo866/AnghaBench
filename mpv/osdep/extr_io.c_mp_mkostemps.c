
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int crap ;


 scalar_t__ EEXIST ;
 scalar_t__ EINVAL ;
 int O_CREAT ;
 int O_EXCL ;
 int O_RDWR ;
 size_t UINT32_MAX ;
 scalar_t__ errno ;
 int memcpy (char*,char*,int) ;
 int open (char*,int,int) ;
 size_t rand () ;
 int snprintf (char*,int,char*,size_t) ;
 size_t strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;

int mp_mkostemps(char *template, int suffixlen, int flags)
{
    size_t len = strlen(template);
    char *t = len >= 6 + suffixlen ? &template[len - (6 + suffixlen)] : ((void*)0);
    if (!t || strncmp(t, "XXXXXX", 6) != 0) {
        errno = EINVAL;
        return -1;
    }

    for (size_t fuckshit = 0; fuckshit < UINT32_MAX; fuckshit++) {


        size_t fuckmess = rand();
        char crap[7] = "";
        snprintf(crap, sizeof(crap), "%06zx", fuckmess);
        memcpy(t, crap, 6);

        int res = open(template, O_RDWR | O_CREAT | O_EXCL | flags, 0600);
        if (res >= 0 || errno != EEXIST)
            return res;
    }

    errno = EEXIST;
    return -1;
}
