
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fprintf (int ,char*) ;
 int fread (unsigned char*,int,int,int *) ;
 int stderr ;

__attribute__((used)) static unsigned int readuint(FILE * f, int bigendian)
{
    unsigned char c1, c2, c3, c4;
    if (!fread(&c1, 1, 1, f)) {
        fprintf(stderr,
                "\nError: fread return a number of element different from the expected.\n");
        return 0;
    }
    if (!fread(&c2, 1, 1, f)) {
        fprintf(stderr,
                "\nError: fread return a number of element different from the expected.\n");
        return 0;
    }
    if (!fread(&c3, 1, 1, f)) {
        fprintf(stderr,
                "\nError: fread return a number of element different from the expected.\n");
        return 0;
    }
    if (!fread(&c4, 1, 1, f)) {
        fprintf(stderr,
                "\nError: fread return a number of element different from the expected.\n");
        return 0;
    }
    if (bigendian) {
        return (unsigned int)(c1 << 24) + (unsigned int)(c2 << 16) + (unsigned int)(
                   c3 << 8) + c4;
    } else {
        return (unsigned int)(c4 << 24) + (unsigned int)(c3 << 16) + (unsigned int)(
                   c2 << 8) + c1;
    }
}
