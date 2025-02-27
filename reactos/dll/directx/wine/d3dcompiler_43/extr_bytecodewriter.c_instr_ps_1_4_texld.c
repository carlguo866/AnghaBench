
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ type; int regnum; } ;
struct instruction {TYPE_2__* src; int dstmod; int shift; TYPE_3__ dst; } ;
struct bytecode_buffer {int dummy; } ;
struct bc_writer {TYPE_1__* funcs; void* state; } ;
struct TYPE_5__ {scalar_t__ type; int regnum; } ;
struct TYPE_4__ {int (* srcreg ) (struct bc_writer*,TYPE_2__*,struct bytecode_buffer*) ;int (* dstreg ) (struct bc_writer*,TYPE_3__*,struct bytecode_buffer*,int ,int ) ;int (* opcode ) (struct bc_writer*,struct instruction const*,int,struct bytecode_buffer*) ;} ;


 scalar_t__ BWRITERSPR_SAMPLER ;
 scalar_t__ BWRITERSPR_TEMP ;
 int D3DSIO_TEX ;
 int D3DSI_OPCODE_MASK ;
 void* E_INVALIDARG ;
 int WARN (char*,...) ;
 int stub1 (struct bc_writer*,struct instruction const*,int,struct bytecode_buffer*) ;
 int stub2 (struct bc_writer*,TYPE_3__*,struct bytecode_buffer*,int ,int ) ;
 int stub3 (struct bc_writer*,TYPE_2__*,struct bytecode_buffer*) ;

__attribute__((used)) static void instr_ps_1_4_texld(struct bc_writer *This,
                               const struct instruction *instr,
                               struct bytecode_buffer *buffer) {
    if(instr->src[1].type != BWRITERSPR_SAMPLER ||
       instr->src[1].regnum > 5) {
        WARN("Unsupported sampler type %u regnum %u\n",
             instr->src[1].type, instr->src[1].regnum);
        This->state = E_INVALIDARG;
        return;
    } else if(instr->dst.type != BWRITERSPR_TEMP) {
        WARN("Can only sample into a temp register\n");
        This->state = E_INVALIDARG;
        return;
    }

    if(instr->src[1].regnum != instr->dst.regnum) {
        WARN("Sampling from sampler s%u to register r%u is not possible in ps_1_4\n",
             instr->src[1].regnum, instr->dst.regnum);
        This->state = E_INVALIDARG;
        return;
    }

    This->funcs->opcode(This, instr, D3DSIO_TEX & D3DSI_OPCODE_MASK, buffer);
    This->funcs->dstreg(This, &instr->dst, buffer, instr->shift, instr->dstmod);
    This->funcs->srcreg(This, &instr->src[0], buffer);
}
