
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FTPContext ;


 int ftp_getc (int *) ;

__attribute__((used)) static int ftp_get_line(FTPContext *s, char *line, int line_size)
{
    int ch;
    char *q = line;

    for (;;) {
        ch = ftp_getc(s);
        if (ch < 0) {
            return ch;
        }
        if (ch == '\n') {

            if (q > line && q[-1] == '\r')
                q--;
            *q = '\0';
            return 0;
        } else {
            if ((q - line) < line_size - 1)
                *q++ = ch;
        }
    }
}
