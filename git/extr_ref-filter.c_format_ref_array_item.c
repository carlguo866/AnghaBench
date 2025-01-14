
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct strbuf {int dummy; } ;
struct ref_formatting_state {TYPE_1__* stack; int quote_style; } ;
struct ref_format {char* format; scalar_t__ need_color_reset_at_eol; int quote_style; } ;
struct ref_array_item {int dummy; } ;
struct atom_value {int s; scalar_t__ (* handler ) (struct atom_value*,struct ref_formatting_state*,struct strbuf*) ;} ;
struct TYPE_3__ {int output; scalar_t__ prev; } ;


 int GIT_COLOR_RESET ;
 struct ref_formatting_state REF_FORMATTING_STATE_INIT ;
 int _ (char*) ;
 scalar_t__ append_atom (struct atom_value*,struct ref_formatting_state*,struct strbuf*) ;
 int append_literal (char const*,char const*,struct ref_formatting_state*) ;
 char* find_next (char const*) ;
 scalar_t__ get_ref_atom_value (struct ref_array_item*,int,struct atom_value**,struct strbuf*) ;
 int parse_ref_filter_atom (struct ref_format const*,char const*,char const*,struct strbuf*) ;
 int pop_stack_element (TYPE_1__**) ;
 int push_stack_element (TYPE_1__**) ;
 int strbuf_addbuf (struct strbuf*,int *) ;
 int strbuf_addf_ret (struct strbuf*,int,int ) ;
 char* strchr (char const*,char) ;
 int strlen (char const*) ;
 scalar_t__ stub1 (struct atom_value*,struct ref_formatting_state*,struct strbuf*) ;

int format_ref_array_item(struct ref_array_item *info,
      const struct ref_format *format,
      struct strbuf *final_buf,
      struct strbuf *error_buf)
{
 const char *cp, *sp, *ep;
 struct ref_formatting_state state = REF_FORMATTING_STATE_INIT;

 state.quote_style = format->quote_style;
 push_stack_element(&state.stack);

 for (cp = format->format; *cp && (sp = find_next(cp)); cp = ep + 1) {
  struct atom_value *atomv;
  int pos;

  ep = strchr(sp, ')');
  if (cp < sp)
   append_literal(cp, sp, &state);
  pos = parse_ref_filter_atom(format, sp + 2, ep, error_buf);
  if (pos < 0 || get_ref_atom_value(info, pos, &atomv, error_buf) ||
      atomv->handler(atomv, &state, error_buf)) {
   pop_stack_element(&state.stack);
   return -1;
  }
 }
 if (*cp) {
  sp = cp + strlen(cp);
  append_literal(cp, sp, &state);
 }
 if (format->need_color_reset_at_eol) {
  struct atom_value resetv;
  resetv.s = GIT_COLOR_RESET;
  if (append_atom(&resetv, &state, error_buf)) {
   pop_stack_element(&state.stack);
   return -1;
  }
 }
 if (state.stack->prev) {
  pop_stack_element(&state.stack);
  return strbuf_addf_ret(error_buf, -1, _("format: %%(end) atom missing"));
 }
 strbuf_addbuf(final_buf, &state.stack->output);
 pop_stack_element(&state.stack);
 return 0;
}
