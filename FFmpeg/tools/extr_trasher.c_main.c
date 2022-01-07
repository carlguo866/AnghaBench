
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int FILE ;


 int SEEK_END ;
 int SEEK_SET ;
 int UINT32_MAX ;
 int abs (int) ;
 void* atoi (char*) ;
 int checked_seek (int *,int,int ) ;
 int * fopen (char*,char*) ;
 int ftell (int *) ;
 int fwrite (int*,int,int,int *) ;
 int perror (char*) ;
 int printf (char*) ;
 unsigned long long ran () ;
 void* state ;

int main(int argc, char **argv)
{
    FILE *f;
    int count, maxburst, length;

    if (argc < 5) {
        printf("USAGE: trasher <filename> <count> <maxburst> <seed>\n");
        return 1;
    }

    f = fopen(argv[1], "rb+");
    if (!f) {
        perror(argv[1]);
        return 2;
    }
    count = atoi(argv[2]);
    maxburst = atoi(argv[3]);
    state = atoi(argv[4]);

    checked_seek(f, 0, SEEK_END);
    length = ftell(f);
    checked_seek(f, 0, SEEK_SET);

    while (count--) {
        int burst = 1 + ran() * (uint64_t) (abs(maxburst) - 1) / UINT32_MAX;
        int pos = ran() * (uint64_t) length / UINT32_MAX;
        checked_seek(f, pos, SEEK_SET);

        if (maxburst < 0)
            burst = -maxburst;

        if (pos + burst > length)
            continue;

        while (burst--) {
            int val = ran() * 256ULL / UINT32_MAX;

            if (maxburst < 0)
                val = 0;

            fwrite(&val, 1, 1, f);
        }
    }

    return 0;
}
