
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int robj ;
struct TYPE_7__ {int * argv; } ;
typedef TYPE_1__ client ;
struct TYPE_8__ {int czero; } ;


 int OBJ_SET ;
 int addReplyLongLong (TYPE_1__*,int ) ;
 scalar_t__ checkType (TYPE_1__*,int *,int ) ;
 int * lookupKeyReadOrReply (TYPE_1__*,int ,int ) ;
 int setTypeSize (int *) ;
 TYPE_2__ shared ;

void scardCommand(client *c) {
    robj *o;

    if ((o = lookupKeyReadOrReply(c,c->argv[1],shared.czero)) == ((void*)0) ||
        checkType(c,o,OBJ_SET)) return;

    addReplyLongLong(c,setTypeSize(o));
}
