
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct serverCommand {int (* proc ) (struct client*) ;} ;
struct disque_stat {scalar_t__ st_size; } ;
struct client {int argc; scalar_t__ bufpos; int flags; int reply; TYPE_1__** argv; } ;
typedef char* sds ;
struct TYPE_5__ {scalar_t__ ptr; } ;
typedef TYPE_1__ robj ;
typedef int off_t ;
typedef int buf ;
struct TYPE_6__ {int aof_state; int aof_fd; scalar_t__ aof_load_truncated; scalar_t__ aof_current_size; scalar_t__ aof_rewrite_base_size; } ;
typedef int FILE ;


 int AOF_OFF ;
 int CLIENT_BLOCKED ;
 int C_ERR ;
 int C_OK ;
 int LL_WARNING ;
 int OBJ_STRING ;
 int SEEK_END ;
 int aofUpdateCurrentSize () ;
 int atoi (char*) ;
 struct client* createFakeClient () ;
 TYPE_1__* createObject (int ,char*) ;
 int disque_fstat (int ,struct disque_stat*) ;
 int errno ;
 int exit (int) ;
 int fclose (int *) ;
 scalar_t__ feof (int *) ;
 int * fgets (char*,int,int *) ;
 int fileno (int *) ;
 int * fopen (char*,char*) ;
 scalar_t__ fread (char*,int,int,int *) ;
 int freeFakeClient (struct client*) ;
 int freeFakeClientArgv (struct client*) ;
 int ftello (int *) ;
 scalar_t__ listLength (int ) ;
 int loadingProgress (int) ;
 struct serverCommand* lookupCommand (scalar_t__) ;
 int lseek (int,int ,int ) ;
 int processEventsWhileBlocked () ;
 int sdsfree (char*) ;
 char* sdsnewlen (int *,unsigned long) ;
 TYPE_3__ server ;
 int serverAssert (int) ;
 int serverLog (int ,char*,...) ;
 int startLoading (int *) ;
 int stopLoading () ;
 int strerror (int ) ;
 unsigned long strtol (char*,int *,int) ;
 int stub1 (struct client*) ;
 int truncate (char*,int) ;
 TYPE_1__** zmalloc (int) ;

int loadAppendOnlyFile(char *filename) {
    struct client *fakeClient;
    FILE *fp = fopen(filename,"r");
    struct disque_stat sb;
    int old_aof_state = server.aof_state;
    long loops = 0;
    off_t valid_up_to = 0;

    if (fp && disque_fstat(fileno(fp),&sb) != -1 && sb.st_size == 0) {
        server.aof_current_size = 0;
        fclose(fp);
        return C_ERR;
    }

    if (fp == ((void*)0)) {
        serverLog(LL_WARNING,"Fatal error: can't open the append log file for reading: %s",strerror(errno));
        exit(1);
    }



    server.aof_state = AOF_OFF;

    fakeClient = createFakeClient();
    startLoading(fp);

    while(1) {
        int argc, j;
        unsigned long len;
        robj **argv;
        char buf[128];
        sds argsds;
        struct serverCommand *cmd;


        if (!(loops++ % 1000)) {
            loadingProgress(ftello(fp));
            processEventsWhileBlocked();
        }

        if (fgets(buf,sizeof(buf),fp) == ((void*)0)) {
            if (feof(fp))
                break;
            else
                goto readerr;
        }
        if (buf[0] != '*') goto fmterr;
        if (buf[1] == '\0') goto readerr;
        argc = atoi(buf+1);
        if (argc < 1) goto fmterr;

        argv = zmalloc(sizeof(robj*)*argc);
        fakeClient->argc = argc;
        fakeClient->argv = argv;

        for (j = 0; j < argc; j++) {
            if (fgets(buf,sizeof(buf),fp) == ((void*)0)) {
                fakeClient->argc = j;
                freeFakeClientArgv(fakeClient);
                goto readerr;
            }
            if (buf[0] != '$') goto fmterr;
            len = strtol(buf+1,((void*)0),10);
            argsds = sdsnewlen(((void*)0),len);
            if (len && fread(argsds,len,1,fp) == 0) {
                sdsfree(argsds);
                fakeClient->argc = j;
                freeFakeClientArgv(fakeClient);
                goto readerr;
            }
            argv[j] = createObject(OBJ_STRING,argsds);
            if (fread(buf,2,1,fp) == 0) {
                fakeClient->argc = j+1;
                freeFakeClientArgv(fakeClient);
                goto readerr;
            }
        }


        cmd = lookupCommand(argv[0]->ptr);
        if (!cmd) {
            serverLog(LL_WARNING,"Unknown command '%s' reading the append only file", (char*)argv[0]->ptr);
            exit(1);
        }


        cmd->proc(fakeClient);


        serverAssert(fakeClient->bufpos == 0 && listLength(fakeClient->reply) == 0);

        serverAssert((fakeClient->flags & CLIENT_BLOCKED) == 0);



        freeFakeClientArgv(fakeClient);
        if (server.aof_load_truncated) valid_up_to = ftello(fp);
    }

loaded_ok:
    fclose(fp);
    freeFakeClient(fakeClient);
    server.aof_state = old_aof_state;
    stopLoading();
    aofUpdateCurrentSize();
    server.aof_rewrite_base_size = server.aof_current_size;
    return C_OK;

readerr:
    if (!feof(fp)) {
        serverLog(LL_WARNING,"Unrecoverable error reading the append only file: %s", strerror(errno));
        exit(1);
    }


    if (server.aof_load_truncated) {
        serverLog(LL_WARNING,"!!! Warning: short read while loading the AOF file !!!");
        serverLog(LL_WARNING,"!!! Truncating the AOF at offset %llu !!!",
            (unsigned long long) valid_up_to);
        if (valid_up_to == -1 || truncate(filename,valid_up_to) == -1) {
            if (valid_up_to == -1) {
                serverLog(LL_WARNING,"Last valid command offset is invalid");
            } else {
                serverLog(LL_WARNING,"Error truncating the AOF file: %s",
                    strerror(errno));
            }
        } else {


            if (server.aof_fd != -1 && lseek(server.aof_fd,0,SEEK_END) == -1) {
                serverLog(LL_WARNING,"Can't seek the end of the AOF file: %s",
                    strerror(errno));
            } else {
                serverLog(LL_WARNING,
                    "AOF loaded anyway because aof-load-truncated is enabled");
                goto loaded_ok;
            }
        }
    }
    serverLog(LL_WARNING,"Unexpected end of file reading the append only file. You can: 1) Make a backup of your AOF file, then use ./disque-check-aof --fix <filename>. 2) Alternatively you can set the 'aof-load-truncated' configuration option to yes and restart the server.");
    exit(1);

fmterr:
    serverLog(LL_WARNING,"Bad file format reading the append only file: make a backup of your AOF file, then use ./disque-check-aof --fix <filename>");
    exit(1);
}
