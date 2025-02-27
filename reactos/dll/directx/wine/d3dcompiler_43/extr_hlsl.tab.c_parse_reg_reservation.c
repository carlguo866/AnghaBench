
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reg_reservation {int type; int regnum; } ;
typedef enum bwritershader_param_register_type { ____Placeholder_bwritershader_param_register_type } bwritershader_param_register_type ;
typedef int DWORD ;


 int BWRITERSPR_CONST ;
 int BWRITERSPR_CONSTBOOL ;
 int BWRITERSPR_CONSTINT ;
 int BWRITERSPR_SAMPLER ;
 int ERR (char*) ;
 int FIXME (char*) ;
 struct reg_reservation* d3dcompiler_alloc (int) ;
 int sscanf (char const*,char*,int *) ;

__attribute__((used)) static struct reg_reservation *parse_reg_reservation(const char *reg_string)
{
    struct reg_reservation *reg_res;
    enum bwritershader_param_register_type type;
    DWORD regnum = 0;

    switch (reg_string[0])
    {
        case 'c':
            type = BWRITERSPR_CONST;
            break;
        case 'i':
            type = BWRITERSPR_CONSTINT;
            break;
        case 'b':
            type = BWRITERSPR_CONSTBOOL;
            break;
        case 's':
            type = BWRITERSPR_SAMPLER;
            break;
        default:
            FIXME("Unsupported register type.\n");
            return ((void*)0);
     }

    if (!sscanf(reg_string + 1, "%u", &regnum))
    {
        FIXME("Unsupported register reservation syntax.\n");
        return ((void*)0);
    }

    reg_res = d3dcompiler_alloc(sizeof(*reg_res));
    if (!reg_res)
    {
        ERR("Out of memory.\n");
        return ((void*)0);
    }
    reg_res->type = type;
    reg_res->regnum = regnum;
    return reg_res;
}
