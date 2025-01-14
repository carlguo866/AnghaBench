
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int path; int io_valid; scalar_t__ io_output_bps; scalar_t__ io_input_bps; int memory_valid; scalar_t__ memory; int n_tasks_valid; scalar_t__ n_tasks; scalar_t__ cpu_usage; int cpu_valid; scalar_t__ cpu_fraction; } ;
typedef TYPE_1__ Group ;


 int CMP (scalar_t__,scalar_t__) ;
 int CPU_PERCENT ;





 int arg_cpu_type ;
 int arg_order ;
 scalar_t__ arg_recursive ;
 int empty_to_root (int ) ;
 int path_compare (int ,int ) ;
 scalar_t__ path_startswith (int ,int ) ;

__attribute__((used)) static int group_compare(Group * const *a, Group * const *b) {
        const Group *x = *a, *y = *b;
        int r;

        if (arg_order != 128 || arg_recursive) {





                if (path_startswith(empty_to_root(y->path), empty_to_root(x->path)))
                        return -1;
                if (path_startswith(empty_to_root(x->path), empty_to_root(y->path)))
                        return 1;
        }

        switch (arg_order) {

        case 129:
                break;

        case 132:
                if (arg_cpu_type == CPU_PERCENT) {
                        if (x->cpu_valid && y->cpu_valid) {
                                r = CMP(y->cpu_fraction, x->cpu_fraction);
                                if (r != 0)
                                        return r;
                        } else if (x->cpu_valid)
                                return -1;
                        else if (y->cpu_valid)
                                return 1;
                } else {
                        r = CMP(y->cpu_usage, x->cpu_usage);
                        if (r != 0)
                                return r;
                }

                break;

        case 128:
                if (x->n_tasks_valid && y->n_tasks_valid) {
                        r = CMP(y->n_tasks, x->n_tasks);
                        if (r != 0)
                                return r;
                } else if (x->n_tasks_valid)
                        return -1;
                else if (y->n_tasks_valid)
                        return 1;

                break;

        case 130:
                if (x->memory_valid && y->memory_valid) {
                        r = CMP(y->memory, x->memory);
                        if (r != 0)
                                return r;
                } else if (x->memory_valid)
                        return -1;
                else if (y->memory_valid)
                        return 1;

                break;

        case 131:
                if (x->io_valid && y->io_valid) {
                        r = CMP(y->io_input_bps + y->io_output_bps, x->io_input_bps + x->io_output_bps);
                        if (r != 0)
                                return r;
                } else if (x->io_valid)
                        return -1;
                else if (y->io_valid)
                        return 1;
        }

        return path_compare(x->path, y->path);
}
