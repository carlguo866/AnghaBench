
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ type; } ;
struct TYPE_8__ {int nitem; TYPE_7__** items; } ;
struct TYPE_9__ {TYPE_1__ query; } ;
struct TYPE_11__ {int pos; TYPE_2__ data; } ;
struct TYPE_10__ {int operandexists; int npos; int * pos; scalar_t__ reverseinsert; } ;
typedef TYPE_3__ QueryRepresentationOperand ;
typedef int QueryRepresentation ;
typedef TYPE_4__ DocRepresentation ;


 int MAXQROPOS ;
 scalar_t__ QI_VAL ;
 TYPE_3__* QR_GET_OPERAND_DATA (int *,TYPE_7__*) ;
 scalar_t__ WEP_GETPOS (int ) ;

__attribute__((used)) static void
fillQueryRepresentationData(QueryRepresentation *qr, DocRepresentation *entry)
{
 int i;
 int lastPos;
 QueryRepresentationOperand *opData;

 for (i = 0; i < entry->data.query.nitem; i++)
 {
  if (entry->data.query.items[i]->type != QI_VAL)
   continue;

  opData = QR_GET_OPERAND_DATA(qr, entry->data.query.items[i]);

  opData->operandexists = 1;

  if (opData->npos == 0)
  {
   lastPos = (opData->reverseinsert) ? (MAXQROPOS - 1) : 0;
   opData->pos[lastPos] = entry->pos;
   opData->npos++;
   continue;
  }

  lastPos = opData->reverseinsert ?
   (MAXQROPOS - opData->npos) :
   (opData->npos - 1);

  if (WEP_GETPOS(opData->pos[lastPos]) != WEP_GETPOS(entry->pos))
  {
   lastPos = opData->reverseinsert ?
    (MAXQROPOS - 1 - opData->npos) :
    (opData->npos);

   opData->pos[lastPos] = entry->pos;
   opData->npos++;
  }
 }
}
