
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct linenoiseState {int ifd; int ofd; char* buf; size_t buflen; char const* prompt; scalar_t__ oldpos; scalar_t__ pos; int len; int plen; scalar_t__ history_index; scalar_t__ maxrows; int cols; } ;
 int EAGAIN ;


 int LINENOISE_HISTORY_NEXT ;
 int LINENOISE_HISTORY_PREV ;
 char completeLine (struct linenoiseState*) ;
 int * completionCallback ;
 int errno ;
 int free (int ) ;
 int getColumns (int,int) ;
 int * history ;
 size_t history_len ;
 int linenoiseClearScreen () ;
 int linenoiseEditBackspace (struct linenoiseState*) ;
 int linenoiseEditDelete (struct linenoiseState*) ;
 int linenoiseEditDeletePrevWord (struct linenoiseState*) ;
 int linenoiseEditHistoryNext (struct linenoiseState*,int ) ;
 int linenoiseEditInsert (struct linenoiseState*,char) ;
 int linenoiseEditMoveEnd (struct linenoiseState*) ;
 int linenoiseEditMoveHome (struct linenoiseState*) ;
 int linenoiseEditMoveLeft (struct linenoiseState*) ;
 int linenoiseEditMoveRight (struct linenoiseState*) ;
 int linenoiseHistoryAdd (char*) ;
 int mlmode ;
 int read (int,char*,int) ;
 int refreshLine (struct linenoiseState*) ;
 int strlen (char const*) ;
 int write (int,char const*,int ) ;

__attribute__((used)) static int linenoiseEdit(int stdin_fd, int stdout_fd, char *buf, size_t buflen, const char *prompt)
{
    struct linenoiseState l;



    l.ifd = stdin_fd;
    l.ofd = stdout_fd;
    l.buf = buf;
    l.buflen = buflen;
    l.prompt = prompt;
    l.plen = strlen(prompt);
    l.oldpos = l.pos = 0;
    l.len = 0;
    l.cols = getColumns(stdin_fd, stdout_fd);
    l.maxrows = 0;
    l.history_index = 0;


    l.buf[0] = '\0';
    l.buflen--;



    linenoiseHistoryAdd("");

    if (write(l.ofd,prompt,l.plen) == -1) return -1;
    while(1) {
        char c;
        int nread;
        char seq[3];

        nread = read(l.ifd,&c,1);
        if (nread <= 0) return l.len;




        if (c == 9 && completionCallback != ((void*)0)) {
            c = completeLine(&l);

            if (c < 0) return l.len;

            if (c == 0) continue;
        }

        switch(c) {
        case 129:
            history_len--;
            free(history[history_len]);
            if (mlmode) linenoiseEditMoveEnd(&l);
            return (int)l.len;
        case 140:
            errno = EAGAIN;
            return -1;
        case 143:
        case 8:
            linenoiseEditBackspace(&l);
            break;
        case 139:

            if (l.len > 0) {
                linenoiseEditDelete(&l);
            } else {
                history_len--;
                free(history[history_len]);
                return -1;
            }
            break;
        case 132:
            if (l.pos > 0 && l.pos < l.len) {
                int aux = buf[l.pos-1];
                buf[l.pos-1] = buf[l.pos];
                buf[l.pos] = aux;
                if (l.pos != l.len-1) l.pos++;
                refreshLine(&l);
            }
            break;
        case 141:
            linenoiseEditMoveLeft(&l);
            break;
        case 137:
            linenoiseEditMoveRight(&l);
            break;
        case 133:
            linenoiseEditHistoryNext(&l, LINENOISE_HISTORY_PREV);
            break;
        case 134:
            linenoiseEditHistoryNext(&l, LINENOISE_HISTORY_NEXT);
            break;
        case 128:



            if (read(l.ifd,seq,1) == -1) break;
            if (read(l.ifd,seq+1,1) == -1) break;


            if (seq[0] == '[') {
                if (seq[1] >= '0' && seq[1] <= '9') {

                    if (read(l.ifd,seq+2,1) == -1) break;
                    if (seq[2] == '~') {
                        switch(seq[1]) {
                        case '3':
                            linenoiseEditDelete(&l);
                            break;
                        }
                    }
                } else {
                    switch(seq[1]) {
                    case 'A':
                        linenoiseEditHistoryNext(&l, LINENOISE_HISTORY_PREV);
                        break;
                    case 'B':
                        linenoiseEditHistoryNext(&l, LINENOISE_HISTORY_NEXT);
                        break;
                    case 'C':
                        linenoiseEditMoveRight(&l);
                        break;
                    case 'D':
                        linenoiseEditMoveLeft(&l);
                        break;
                    case 'H':
                        linenoiseEditMoveHome(&l);
                        break;
                    case 'F':
                        linenoiseEditMoveEnd(&l);
                        break;
                    }
                }
            }


            else if (seq[0] == 'O') {
                switch(seq[1]) {
                case 'H':
                    linenoiseEditMoveHome(&l);
                    break;
                case 'F':
                    linenoiseEditMoveEnd(&l);
                    break;
                }
            }
            break;
        default:
            if (linenoiseEditInsert(&l,c)) return -1;
            break;
        case 131:
            buf[0] = '\0';
            l.pos = l.len = 0;
            refreshLine(&l);
            break;
        case 136:
            buf[l.pos] = '\0';
            l.len = l.pos;
            refreshLine(&l);
            break;
        case 142:
            linenoiseEditMoveHome(&l);
            break;
        case 138:
            linenoiseEditMoveEnd(&l);
            break;
        case 135:
            linenoiseClearScreen();
            refreshLine(&l);
            break;
        case 130:
            linenoiseEditDeletePrevWord(&l);
            break;
        }
    }
    return l.len;
}
