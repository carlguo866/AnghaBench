
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shader_reg {int srcmod; } ;
struct instruction {struct shader_reg* src; } ;
struct asm_parser {int status; int line_no; } ;


 int PARSE_ERR ;
 int asmparser_message (struct asm_parser*,char*,int ,int ) ;
 int check_abs_srcmod (struct asm_parser*,int ) ;
 int check_legacy_srcmod (struct asm_parser*,int ) ;
 int check_loop_swizzle (struct asm_parser*,struct shader_reg const*) ;
 int check_reg_type (struct shader_reg const*,int ) ;
 int debug_print_srcreg (struct shader_reg const*) ;
 struct shader_reg map_oldvs_register (struct shader_reg const*) ;
 int set_parse_status (int *,int ) ;
 int vs_2_reg_allowed ;

__attribute__((used)) static void asmparser_srcreg_vs_2(struct asm_parser *This,
                                  struct instruction *instr, int num,
                                  const struct shader_reg *src) {
    struct shader_reg reg;

    if(!check_reg_type(src, vs_2_reg_allowed)) {
        asmparser_message(This, "Line %u: Source register %s not supported in VS 2\n",
                          This->line_no,
                          debug_print_srcreg(src));
        set_parse_status(&This->status, PARSE_ERR);
    }
    check_loop_swizzle(This, src);
    check_legacy_srcmod(This, src->srcmod);
    check_abs_srcmod(This, src->srcmod);
    reg = map_oldvs_register(src);
    instr->src[num] = reg;
}
