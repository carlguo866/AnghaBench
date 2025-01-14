
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct symt_function {int dummy; } ;
struct symt {int dummy; } ;
struct sym_enum {scalar_t__ index; scalar_t__ tag; scalar_t__ addr; int user; TYPE_1__* sym_info; int (* cb ) (TYPE_1__*,scalar_t__,int ) ;} ;
struct module_pair {int dummy; } ;
struct TYPE_3__ {scalar_t__ Index; scalar_t__ Tag; scalar_t__ Address; scalar_t__ Size; } ;
typedef int BOOL ;


 int FALSE ;
 int stub1 (TYPE_1__*,scalar_t__,int ) ;
 int symt_fill_sym_info (struct module_pair*,struct symt_function const*,struct symt const*,TYPE_1__*) ;

__attribute__((used)) static BOOL send_symbol(const struct sym_enum* se, struct module_pair* pair,
                        const struct symt_function* func, const struct symt* sym)
{
    symt_fill_sym_info(pair, func, sym, se->sym_info);
    if (se->index && se->sym_info->Index != se->index) return FALSE;
    if (se->tag && se->sym_info->Tag != se->tag) return FALSE;
    if (se->addr && !(se->addr >= se->sym_info->Address && se->addr < se->sym_info->Address + se->sym_info->Size)) return FALSE;
    return !se->cb(se->sym_info, se->sym_info->Size, se->user);
}
