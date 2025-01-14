
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int nb_programs; TYPE_1__** programs; } ;
struct TYPE_5__ {unsigned int id; int pcr_pid; int pmt_version; } ;
typedef TYPE_1__ AVProgram ;
typedef TYPE_2__ AVFormatContext ;


 int AV_LOG_VERBOSE ;
 int av_log (TYPE_2__*,int ,char*,unsigned int,int,int,int,unsigned int) ;

__attribute__((used)) static void update_av_program_info(AVFormatContext *s, unsigned int programid,
                                   unsigned int pid, int version)
{
    int i;
    for (i = 0; i < s->nb_programs; i++) {
        AVProgram *program = s->programs[i];
        if (program->id == programid) {
            int old_pcr_pid = program->pcr_pid,
                old_version = program->pmt_version;
            program->pcr_pid = pid;
            program->pmt_version = version;

            if (old_version != -1 && old_version != version) {
                av_log(s, AV_LOG_VERBOSE,
                       "detected PMT change (program=%d, version=%d/%d, pcr_pid=0x%x/0x%x)\n",
                       programid, old_version, version, old_pcr_pid, pid);
            }
            break;
        }
    }
}
