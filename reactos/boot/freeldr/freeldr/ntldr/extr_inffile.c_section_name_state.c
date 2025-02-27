
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parser {int error; } ;
typedef char CHAR ;


 int COMMENT ;
 int LINE_START ;
 int STATUS_BAD_SECTION_NAME_LINE ;
 int * add_section_from_token (struct parser*) ;
 int is_eol (struct parser*,char const*) ;
 int push_state (struct parser*,int ) ;
 int push_token (struct parser*,char const*) ;
 int set_state (struct parser*,int ) ;

__attribute__((used)) static
const CHAR*
section_name_state(
    struct parser *parser,
    const CHAR *pos)
{
    const CHAR *p;

    for (p = pos; !is_eol(parser, p); p++)
    {
        if (*p == ']')
        {
            push_token(parser, p);
            if (add_section_from_token(parser) == ((void*)0))
                return ((void*)0);
            push_state(parser, LINE_START);
            set_state(parser, COMMENT);
            return p + 1;
        }
    }
    parser->error = STATUS_BAD_SECTION_NAME_LINE;
    return ((void*)0);
}
