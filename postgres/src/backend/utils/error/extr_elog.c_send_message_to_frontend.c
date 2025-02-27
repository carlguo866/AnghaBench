
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int tbuf ;
struct TYPE_13__ {scalar_t__ elevel; int sqlerrcode; char* message; char* detail; char* hint; char* context; char* schema_name; char* table_name; char* column_name; char* datatype_name; char* constraint_name; int cursorpos; int internalpos; char* internalquery; char* filename; int lineno; char* funcname; scalar_t__ show_funcname; } ;
struct TYPE_12__ {char* data; } ;
typedef TYPE_1__ StringInfoData ;
typedef TYPE_2__ ErrorData ;


 scalar_t__ ERROR ;
 int FrontendProtocol ;
 char PGUNSIXBIT (int) ;
 char PG_DIAG_COLUMN_NAME ;
 char PG_DIAG_CONSTRAINT_NAME ;
 char PG_DIAG_CONTEXT ;
 char PG_DIAG_DATATYPE_NAME ;
 char PG_DIAG_INTERNAL_POSITION ;
 char PG_DIAG_INTERNAL_QUERY ;
 char PG_DIAG_MESSAGE_DETAIL ;
 char PG_DIAG_MESSAGE_HINT ;
 char PG_DIAG_MESSAGE_PRIMARY ;
 char PG_DIAG_SCHEMA_NAME ;
 char PG_DIAG_SEVERITY ;
 char PG_DIAG_SEVERITY_NONLOCALIZED ;
 char PG_DIAG_SOURCE_FILE ;
 char PG_DIAG_SOURCE_FUNCTION ;
 char PG_DIAG_SOURCE_LINE ;
 char PG_DIAG_SQLSTATE ;
 char PG_DIAG_STATEMENT_POSITION ;
 char PG_DIAG_TABLE_NAME ;
 int PG_PROTOCOL_MAJOR (int ) ;
 char* _ (char const*) ;
 int appendStringInfo (TYPE_1__*,char*,char*) ;
 int appendStringInfoChar (TYPE_1__*,char) ;
 int appendStringInfoString (TYPE_1__*,char*) ;
 int err_sendstring (TYPE_1__*,char const*) ;
 char* error_severity (scalar_t__) ;
 int initStringInfo (TYPE_1__*) ;
 int pfree (char*) ;
 int pq_beginmessage (TYPE_1__*,char) ;
 int pq_endmessage (TYPE_1__*) ;
 int pq_flush () ;
 int pq_sendbyte (TYPE_1__*,char) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static void
send_message_to_frontend(ErrorData *edata)
{
 StringInfoData msgbuf;


 pq_beginmessage(&msgbuf, (edata->elevel < ERROR) ? 'N' : 'E');

 if (PG_PROTOCOL_MAJOR(FrontendProtocol) >= 3)
 {

  const char *sev;
  char tbuf[12];
  int ssval;
  int i;

  sev = error_severity(edata->elevel);
  pq_sendbyte(&msgbuf, PG_DIAG_SEVERITY);
  err_sendstring(&msgbuf, _(sev));
  pq_sendbyte(&msgbuf, PG_DIAG_SEVERITY_NONLOCALIZED);
  err_sendstring(&msgbuf, sev);


  ssval = edata->sqlerrcode;
  for (i = 0; i < 5; i++)
  {
   tbuf[i] = PGUNSIXBIT(ssval);
   ssval >>= 6;
  }
  tbuf[i] = '\0';

  pq_sendbyte(&msgbuf, PG_DIAG_SQLSTATE);
  err_sendstring(&msgbuf, tbuf);


  pq_sendbyte(&msgbuf, PG_DIAG_MESSAGE_PRIMARY);
  if (edata->message)
   err_sendstring(&msgbuf, edata->message);
  else
   err_sendstring(&msgbuf, _("missing error text"));

  if (edata->detail)
  {
   pq_sendbyte(&msgbuf, PG_DIAG_MESSAGE_DETAIL);
   err_sendstring(&msgbuf, edata->detail);
  }



  if (edata->hint)
  {
   pq_sendbyte(&msgbuf, PG_DIAG_MESSAGE_HINT);
   err_sendstring(&msgbuf, edata->hint);
  }

  if (edata->context)
  {
   pq_sendbyte(&msgbuf, PG_DIAG_CONTEXT);
   err_sendstring(&msgbuf, edata->context);
  }

  if (edata->schema_name)
  {
   pq_sendbyte(&msgbuf, PG_DIAG_SCHEMA_NAME);
   err_sendstring(&msgbuf, edata->schema_name);
  }

  if (edata->table_name)
  {
   pq_sendbyte(&msgbuf, PG_DIAG_TABLE_NAME);
   err_sendstring(&msgbuf, edata->table_name);
  }

  if (edata->column_name)
  {
   pq_sendbyte(&msgbuf, PG_DIAG_COLUMN_NAME);
   err_sendstring(&msgbuf, edata->column_name);
  }

  if (edata->datatype_name)
  {
   pq_sendbyte(&msgbuf, PG_DIAG_DATATYPE_NAME);
   err_sendstring(&msgbuf, edata->datatype_name);
  }

  if (edata->constraint_name)
  {
   pq_sendbyte(&msgbuf, PG_DIAG_CONSTRAINT_NAME);
   err_sendstring(&msgbuf, edata->constraint_name);
  }

  if (edata->cursorpos > 0)
  {
   snprintf(tbuf, sizeof(tbuf), "%d", edata->cursorpos);
   pq_sendbyte(&msgbuf, PG_DIAG_STATEMENT_POSITION);
   err_sendstring(&msgbuf, tbuf);
  }

  if (edata->internalpos > 0)
  {
   snprintf(tbuf, sizeof(tbuf), "%d", edata->internalpos);
   pq_sendbyte(&msgbuf, PG_DIAG_INTERNAL_POSITION);
   err_sendstring(&msgbuf, tbuf);
  }

  if (edata->internalquery)
  {
   pq_sendbyte(&msgbuf, PG_DIAG_INTERNAL_QUERY);
   err_sendstring(&msgbuf, edata->internalquery);
  }

  if (edata->filename)
  {
   pq_sendbyte(&msgbuf, PG_DIAG_SOURCE_FILE);
   err_sendstring(&msgbuf, edata->filename);
  }

  if (edata->lineno > 0)
  {
   snprintf(tbuf, sizeof(tbuf), "%d", edata->lineno);
   pq_sendbyte(&msgbuf, PG_DIAG_SOURCE_LINE);
   err_sendstring(&msgbuf, tbuf);
  }

  if (edata->funcname)
  {
   pq_sendbyte(&msgbuf, PG_DIAG_SOURCE_FUNCTION);
   err_sendstring(&msgbuf, edata->funcname);
  }

  pq_sendbyte(&msgbuf, '\0');
 }
 else
 {

  StringInfoData buf;

  initStringInfo(&buf);

  appendStringInfo(&buf, "%s:  ", _(error_severity(edata->elevel)));

  if (edata->show_funcname && edata->funcname)
   appendStringInfo(&buf, "%s: ", edata->funcname);

  if (edata->message)
   appendStringInfoString(&buf, edata->message);
  else
   appendStringInfoString(&buf, _("missing error text"));

  if (edata->cursorpos > 0)
   appendStringInfo(&buf, _(" at character %d"),
        edata->cursorpos);
  else if (edata->internalpos > 0)
   appendStringInfo(&buf, _(" at character %d"),
        edata->internalpos);

  appendStringInfoChar(&buf, '\n');

  err_sendstring(&msgbuf, buf.data);

  pfree(buf.data);
 }

 pq_endmessage(&msgbuf);
 pq_flush();
}
