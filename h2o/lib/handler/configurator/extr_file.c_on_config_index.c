
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int size; TYPE_4__** elements; } ;
struct TYPE_11__ {int * scalar; TYPE_1__ sequence; } ;
struct TYPE_13__ {scalar_t__ type; TYPE_2__ data; } ;
typedef TYPE_4__ yoml_t ;
struct st_h2o_file_configurator_t {TYPE_3__* vars; } ;
typedef int h2o_configurator_context_t ;
struct TYPE_14__ {scalar_t__ configurator; } ;
typedef TYPE_5__ h2o_configurator_command_t ;
struct TYPE_12__ {int ** index_files; } ;


 scalar_t__ YOML_TYPE_SCALAR ;
 int free (int **) ;
 int h2o_configurator_errprintf (TYPE_5__*,TYPE_4__*,char*) ;
 int ** h2o_mem_alloc (int) ;

__attribute__((used)) static int on_config_index(h2o_configurator_command_t *cmd, h2o_configurator_context_t *ctx, yoml_t *node)
{
    struct st_h2o_file_configurator_t *self = (void *)cmd->configurator;
    size_t i;

    free(self->vars->index_files);
    self->vars->index_files = h2o_mem_alloc(sizeof(self->vars->index_files[0]) * (node->data.sequence.size + 1));
    for (i = 0; i != node->data.sequence.size; ++i) {
        yoml_t *element = node->data.sequence.elements[i];
        if (element->type != YOML_TYPE_SCALAR) {
            h2o_configurator_errprintf(cmd, element, "argument must be a sequence of scalars");
            return -1;
        }
        self->vars->index_files[i] = element->data.scalar;
    }
    self->vars->index_files[i] = ((void*)0);

    return 0;
}
