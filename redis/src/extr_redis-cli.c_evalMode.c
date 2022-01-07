
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef char* sds ;
typedef int redisReply ;
typedef int buf ;
struct TYPE_2__ {int eval_ldb; char* eval; int prompt; scalar_t__ eval_ldb_sync; } ;
typedef int FILE ;


 int CC_FORCE ;
 int REDIS_OK ;
 int cliConnect (int ) ;
 int cliReadReply (int ) ;
 TYPE_1__ config ;
 int context ;
 int errno ;
 int exit (int) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,char*,char*) ;
 size_t fread (char*,int,int,int *) ;
 int freeReplyObject (int *) ;
 int issueCommand (int,char**) ;
 int printf (char*) ;
 int * redisCommand (int ,char*) ;
 int repl () ;
 char* sdscatlen (char*,char*,size_t) ;
 char* sdscatprintf (char*,char*,int) ;
 char* sdsempty () ;
 int sdsfree (char*) ;
 char* sdsnew (char*) ;
 int stderr ;
 char* strerror (int ) ;
 int strncpy (int ,char*,int) ;
 char** zmalloc (int) ;

__attribute__((used)) static int evalMode(int argc, char **argv) {
    sds script = ((void*)0);
    FILE *fp;
    char buf[1024];
    size_t nread;
    char **argv2;
    int j, got_comma, keys;
    int retval = REDIS_OK;

    while(1) {
        if (config.eval_ldb) {
            printf(
            "Lua debugging session started, please use:\n"
            "quit    -- End the session.\n"
            "restart -- Restart the script in debug mode again.\n"
            "help    -- Show Lua script debugging commands.\n\n"
            );
        }

        sdsfree(script);
        script = sdsempty();
        got_comma = 0;
        keys = 0;


        fp = fopen(config.eval,"r");
        if (!fp) {
            fprintf(stderr,
                "Can't open file '%s': %s\n", config.eval, strerror(errno));
            exit(1);
        }
        while((nread = fread(buf,1,sizeof(buf),fp)) != 0) {
            script = sdscatlen(script,buf,nread);
        }
        fclose(fp);


        if (config.eval_ldb) {
            redisReply *reply = redisCommand(context,
                    config.eval_ldb_sync ?
                    "SCRIPT DEBUG sync": "SCRIPT DEBUG yes");
            if (reply) freeReplyObject(reply);
        }


        argv2 = zmalloc(sizeof(sds)*(argc+3));
        argv2[0] = sdsnew("EVAL");
        argv2[1] = script;
        for (j = 0; j < argc; j++) {
            if (!got_comma && argv[j][0] == ',' && argv[j][1] == 0) {
                got_comma = 1;
                continue;
            }
            argv2[j+3-got_comma] = sdsnew(argv[j]);
            if (!got_comma) keys++;
        }
        argv2[2] = sdscatprintf(sdsempty(),"%d",keys);


        int eval_ldb = config.eval_ldb;
        retval = issueCommand(argc+3-got_comma, argv2);
        if (eval_ldb) {
            if (!config.eval_ldb) {



                printf("Eval debugging session can't start:\n");
                cliReadReply(0);
                break;
            } else {
                strncpy(config.prompt,"lua debugger> ",sizeof(config.prompt));
                repl();

                cliConnect(CC_FORCE);
                printf("\n");
            }
        } else {
            break;
        }
    }
    return retval;
}
