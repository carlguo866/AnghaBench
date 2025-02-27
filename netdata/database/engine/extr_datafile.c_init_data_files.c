
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rrdengine_instance {int last_fileno; int dbfiles_path; } ;


 int create_new_datafile_pair (struct rrdengine_instance*,int,int) ;
 int error (char*,int ) ;
 int info (char*,int ) ;
 int scan_data_files (struct rrdengine_instance*) ;

int init_data_files(struct rrdengine_instance *ctx)
{
    int ret;

    ret = scan_data_files(ctx);
    if (ret < 0) {
        error("Failed to scan path \"%s\".", ctx->dbfiles_path);
        return ret;
    } else if (0 == ret) {
        info("Data files not found, creating in path \"%s\".", ctx->dbfiles_path);
        ret = create_new_datafile_pair(ctx, 1, 1);
        if (ret) {
            error("Failed to create data and journal files in path \"%s\".", ctx->dbfiles_path);
            return ret;
        }
        ctx->last_fileno = 1;
    }

    return 0;
}
