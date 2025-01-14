
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ type; } ;
typedef TYPE_1__ isc_token_t ;
typedef scalar_t__ isc_result_t ;
typedef int isc_lex_t ;
typedef scalar_t__ isc_boolean_t ;


 unsigned int ISC_LEXOPT_DNSMULTILINE ;
 unsigned int ISC_LEXOPT_EOF ;
 unsigned int ISC_LEXOPT_EOL ;
 unsigned int ISC_LEXOPT_ESCAPE ;
 unsigned int ISC_LEXOPT_NUMBER ;
 unsigned int ISC_LEXOPT_OCTAL ;
 scalar_t__ ISC_R_BADNUMBER ;
 scalar_t__ ISC_R_RANGE ;
 scalar_t__ ISC_R_SUCCESS ;
 scalar_t__ ISC_R_UNEXPECTEDEND ;
 scalar_t__ isc_lex_gettoken (int *,unsigned int,TYPE_1__*) ;
 int isc_lex_ungettoken (int *,TYPE_1__*) ;
 scalar_t__ isc_tokentype_eof ;
 scalar_t__ isc_tokentype_eol ;
 scalar_t__ isc_tokentype_number ;

isc_result_t
isc_lex_getoctaltoken(isc_lex_t *lex, isc_token_t *token, isc_boolean_t eol)
{
 unsigned int options = ISC_LEXOPT_EOL | ISC_LEXOPT_EOF |
          ISC_LEXOPT_DNSMULTILINE | ISC_LEXOPT_ESCAPE|
          ISC_LEXOPT_NUMBER | ISC_LEXOPT_OCTAL;
 isc_result_t result;

 result = isc_lex_gettoken(lex, options, token);
 if (result == ISC_R_RANGE)
  isc_lex_ungettoken(lex, token);
 if (result != ISC_R_SUCCESS)
  return (result);

 if (eol && ((token->type == isc_tokentype_eol) ||
      (token->type == isc_tokentype_eof)))
  return (ISC_R_SUCCESS);
 if (token->type != isc_tokentype_number) {
  isc_lex_ungettoken(lex, token);
  if (token->type == isc_tokentype_eol ||
      token->type == isc_tokentype_eof)
   return (ISC_R_UNEXPECTEDEND);
  return (ISC_R_BADNUMBER);
 }
 return (ISC_R_SUCCESS);
}
