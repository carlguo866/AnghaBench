
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strref {int len; int array; } ;
struct lexer {int dummy; } ;
struct darray {int dummy; } ;
struct config_section {int name; } ;
struct TYPE_2__ {char* array; } ;
struct base_token {scalar_t__ type; TYPE_1__ text; } ;


 scalar_t__ BASETOKEN_WHITESPACE ;
 int PARSE_WHITESPACE ;
 int base_token_clear (struct base_token*) ;
 int bstrdup_n (int ,int ) ;
 int config_parse_section (struct config_section*,struct lexer*) ;
 int config_parse_string (struct lexer*,struct strref*,char) ;
 struct config_section* darray_push_back_new (int,struct darray*) ;
 int is_newline (char) ;
 scalar_t__ lexer_getbasetoken (struct lexer*,struct base_token*,int ) ;
 int strref_clear (struct strref*) ;

__attribute__((used)) static void parse_config_data(struct darray *sections, struct lexer *lex)
{
 struct strref section_name;
 struct base_token token;

 base_token_clear(&token);

 while (lexer_getbasetoken(lex, &token, PARSE_WHITESPACE)) {
  struct config_section *section;

  while (token.type == BASETOKEN_WHITESPACE) {
   if (!lexer_getbasetoken(lex, &token, PARSE_WHITESPACE))
    return;
  }

  if (*token.text.array != '[') {
   while (!is_newline(*token.text.array)) {
    if (!lexer_getbasetoken(lex, &token,
       PARSE_WHITESPACE))
     return;
   }

   continue;
  }

  strref_clear(&section_name);
  config_parse_string(lex, &section_name, ']');
  if (!section_name.len)
   return;

  section = darray_push_back_new(sizeof(struct config_section),
            sections);
  section->name = bstrdup_n(section_name.array, section_name.len);
  config_parse_section(section, lex);
 }
}
