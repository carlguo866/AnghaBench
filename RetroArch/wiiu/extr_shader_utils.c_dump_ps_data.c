
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_13__ {int size; int uniformBlockCount; int uniformVarCount; int initialValueCount; int loopVarCount; int samplerVarCount; TYPE_5__* samplerVars; TYPE_4__* loopVars; TYPE_3__* initialValues; TYPE_2__* uniformVars; TYPE_1__* uniformBlocks; int mode; } ;
struct TYPE_12__ {int type; int location; int name; } ;
struct TYPE_11__ {int offset; int value; } ;
struct TYPE_10__ {int offset; int * value; } ;
struct TYPE_9__ {int offset; int type; int count; int block; int name; } ;
struct TYPE_8__ {int offset; int size; int name; } ;
typedef TYPE_6__ GX2PixelShader ;


 int DEBUG_FLOAT (int ) ;
 int DEBUG_INT (int) ;
 int DEBUG_STR (int ) ;
 int DEBUG_VAR (int ) ;

void dump_ps_data(GX2PixelShader* ps)
{
   DEBUG_INT(ps->size);
   DEBUG_VAR(ps->mode);
   DEBUG_INT(ps->uniformBlockCount);
   for(int i = 0; i < ps->uniformBlockCount; i++)
   {
      DEBUG_STR(ps->uniformBlocks[i].name);
      DEBUG_INT(ps->uniformBlocks[i].offset);
      DEBUG_INT(ps->uniformBlocks[i].size);
   }
   DEBUG_INT(ps->uniformVarCount);
   for(int i = 0; i < ps->uniformVarCount; i++)
   {
      DEBUG_STR(ps->uniformVars[i].name);
      DEBUG_INT(ps->uniformVars[i].offset);
      DEBUG_INT(ps->uniformVars[i].type);
      DEBUG_INT(ps->uniformVars[i].count);
      DEBUG_INT(ps->uniformVars[i].block);
   }
   DEBUG_INT(ps->initialValueCount);
   for(int i = 0; i < ps->initialValueCount; i++)
   {
      DEBUG_INT(ps->initialValues[i].offset);
      DEBUG_FLOAT(ps->initialValues[i].value[0]);
      DEBUG_FLOAT(ps->initialValues[i].value[1]);
      DEBUG_FLOAT(ps->initialValues[i].value[2]);
      DEBUG_FLOAT(ps->initialValues[i].value[3]);
   }
   DEBUG_INT(ps->loopVarCount);
   for(int i = 0; i < ps->loopVarCount; i++)
   {
      DEBUG_INT(ps->loopVars[i].offset);
      DEBUG_VAR(ps->loopVars[i].value);
   }
   DEBUG_INT(ps->samplerVarCount);
   for(int i = 0; i < ps->samplerVarCount; i++)
   {
      DEBUG_STR(ps->samplerVars[i].name);
      DEBUG_INT(ps->samplerVars[i].type);
      DEBUG_INT(ps->samplerVars[i].location);
   }

}
