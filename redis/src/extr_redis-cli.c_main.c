
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int clusterManagerCommandProc ;
struct TYPE_4__ {int * backup_dir; int threshold; int pipeline; int timeout; scalar_t__ slots; scalar_t__ weight_argc; int * weight; int * to; int * from; scalar_t__ replicas; scalar_t__ flags; int * argv; scalar_t__ argc; int * name; } ;
struct TYPE_6__ {int hostport; int repeat; int interval; int last_cmd_type; int * eval; scalar_t__ intrinsic_latency_mode; scalar_t__ lru_test_mode; scalar_t__ scan_mode; scalar_t__ stat_mode; scalar_t__ hotkeys; int memkeys_samples; scalar_t__ memkeys; scalar_t__ bigkeys; scalar_t__ pipe_mode; scalar_t__ getrdb_mode; scalar_t__ slave_mode; scalar_t__ latency_dist_mode; scalar_t__ latency_mode; void* mb_delim; void* hostip; int output; TYPE_1__ cluster_manager_command; scalar_t__ no_auth_warning; scalar_t__ verbose; scalar_t__ enable_ldb_on_eval; scalar_t__ eval_ldb_sync; scalar_t__ eval_ldb_end; scalar_t__ eval_ldb; int * user; int * auth; scalar_t__ stdinarg; int pipe_timeout; int * rdb_filename; int * pattern; scalar_t__ cluster_mode; scalar_t__ lru_test_sample_size; scalar_t__ latency_history; scalar_t__ pubsub_mode; scalar_t__ monitor_mode; scalar_t__ shutdown; scalar_t__ interactive; scalar_t__ dbnum; int * hostsocket; } ;
struct TYPE_5__ {int hints; } ;


 int CLUSTER_MANAGER_MIGRATE_PIPELINE ;
 int CLUSTER_MANAGER_MIGRATE_TIMEOUT ;
 scalar_t__ CLUSTER_MANAGER_MODE () ;
 int CLUSTER_MANAGER_REBALANCE_THRESHOLD ;
 int LRUTestMode () ;
 int OUTPUT_RAW ;
 int OUTPUT_STANDARD ;
 int REDIS_CLI_DEFAULT_PIPE_TIMEOUT ;
 scalar_t__ REDIS_ERR ;
 scalar_t__ REDIS_OK ;
 int SIGPIPE ;
 int SIG_IGN ;
 scalar_t__ cliConnect (int ) ;
 int clusterManagerMode (int *) ;
 TYPE_3__ config ;
 int convertToSds (int,char**) ;
 int evalMode (int,char**) ;
 int exit (int) ;
 int fileno (int ) ;
 int findBigKeys (int,int ) ;
 int findHotKeys () ;
 int getRDB (int *) ;
 int * getenv (char*) ;
 int intrinsicLatencyMode () ;
 int isatty (int ) ;
 int latencyDistMode () ;
 int latencyMode () ;
 int noninteractive (int,int ) ;
 int parseEnv () ;
 int parseOptions (int,char**) ;
 int pipeMode () ;
 TYPE_2__ pref ;
 int repl () ;
 int scanMode () ;
 int sdsfree (void*) ;
 void* sdsnew (char*) ;
 int sendCapa () ;
 int signal (int ,int ) ;
 int slaveMode () ;
 int spectrum_palette ;
 int spectrum_palette_color ;
 int spectrum_palette_color_size ;
 int spectrum_palette_size ;
 int statMode () ;
 int stdout ;
 int * validateClusterManagerCommand () ;

int main(int argc, char **argv) {
    int firstarg;

    config.hostip = sdsnew("127.0.0.1");
    config.hostport = 6379;
    config.hostsocket = ((void*)0);
    config.repeat = 1;
    config.interval = 0;
    config.dbnum = 0;
    config.interactive = 0;
    config.shutdown = 0;
    config.monitor_mode = 0;
    config.pubsub_mode = 0;
    config.latency_mode = 0;
    config.latency_dist_mode = 0;
    config.latency_history = 0;
    config.lru_test_mode = 0;
    config.lru_test_sample_size = 0;
    config.cluster_mode = 0;
    config.slave_mode = 0;
    config.getrdb_mode = 0;
    config.stat_mode = 0;
    config.scan_mode = 0;
    config.intrinsic_latency_mode = 0;
    config.pattern = ((void*)0);
    config.rdb_filename = ((void*)0);
    config.pipe_mode = 0;
    config.pipe_timeout = REDIS_CLI_DEFAULT_PIPE_TIMEOUT;
    config.bigkeys = 0;
    config.hotkeys = 0;
    config.stdinarg = 0;
    config.auth = ((void*)0);
    config.user = ((void*)0);
    config.eval = ((void*)0);
    config.eval_ldb = 0;
    config.eval_ldb_end = 0;
    config.eval_ldb_sync = 0;
    config.enable_ldb_on_eval = 0;
    config.last_cmd_type = -1;
    config.verbose = 0;
    config.no_auth_warning = 0;
    config.cluster_manager_command.name = ((void*)0);
    config.cluster_manager_command.argc = 0;
    config.cluster_manager_command.argv = ((void*)0);
    config.cluster_manager_command.flags = 0;
    config.cluster_manager_command.replicas = 0;
    config.cluster_manager_command.from = ((void*)0);
    config.cluster_manager_command.to = ((void*)0);
    config.cluster_manager_command.weight = ((void*)0);
    config.cluster_manager_command.weight_argc = 0;
    config.cluster_manager_command.slots = 0;
    config.cluster_manager_command.timeout = CLUSTER_MANAGER_MIGRATE_TIMEOUT;
    config.cluster_manager_command.pipeline = CLUSTER_MANAGER_MIGRATE_PIPELINE;
    config.cluster_manager_command.threshold =
        CLUSTER_MANAGER_REBALANCE_THRESHOLD;
    config.cluster_manager_command.backup_dir = ((void*)0);
    pref.hints = 1;

    spectrum_palette = spectrum_palette_color;
    spectrum_palette_size = spectrum_palette_color_size;

    if (!isatty(fileno(stdout)) && (getenv("FAKETTY") == ((void*)0)))
        config.output = OUTPUT_RAW;
    else
        config.output = OUTPUT_STANDARD;
    config.mb_delim = sdsnew("\n");

    firstarg = parseOptions(argc,argv);
    argc -= firstarg;
    argv += firstarg;

    parseEnv();


    if (CLUSTER_MANAGER_MODE()) {
        clusterManagerCommandProc *proc = validateClusterManagerCommand();
        if (!proc) {
            sdsfree(config.hostip);
            sdsfree(config.mb_delim);
            exit(1);
        }
        clusterManagerMode(proc);
    }


    if (config.latency_mode) {
        if (cliConnect(0) == REDIS_ERR) exit(1);
        latencyMode();
    }


    if (config.latency_dist_mode) {
        if (cliConnect(0) == REDIS_ERR) exit(1);
        latencyDistMode();
    }


    if (config.slave_mode) {
        if (cliConnect(0) == REDIS_ERR) exit(1);
        sendCapa();
        slaveMode();
    }


    if (config.getrdb_mode) {
        if (cliConnect(0) == REDIS_ERR) exit(1);
        sendCapa();
        getRDB(((void*)0));
    }


    if (config.pipe_mode) {
        if (cliConnect(0) == REDIS_ERR) exit(1);
        pipeMode();
    }


    if (config.bigkeys) {
        if (cliConnect(0) == REDIS_ERR) exit(1);
        findBigKeys(0, 0);
    }


    if (config.memkeys) {
        if (cliConnect(0) == REDIS_ERR) exit(1);
        findBigKeys(1, config.memkeys_samples);
    }


    if (config.hotkeys) {
        if (cliConnect(0) == REDIS_ERR) exit(1);
        findHotKeys();
    }


    if (config.stat_mode) {
        if (cliConnect(0) == REDIS_ERR) exit(1);
        if (config.interval == 0) config.interval = 1000000;
        statMode();
    }


    if (config.scan_mode) {
        if (cliConnect(0) == REDIS_ERR) exit(1);
        scanMode();
    }


    if (config.lru_test_mode) {
        if (cliConnect(0) == REDIS_ERR) exit(1);
        LRUTestMode();
    }


    if (config.intrinsic_latency_mode) intrinsicLatencyMode();


    if (argc == 0 && !config.eval) {

        signal(SIGPIPE, SIG_IGN);



        cliConnect(0);
        repl();
    }


    if (cliConnect(0) != REDIS_OK) exit(1);
    if (config.eval) {
        return evalMode(argc,argv);
    } else {
        return noninteractive(argc,convertToSds(argc,argv));
    }
}
