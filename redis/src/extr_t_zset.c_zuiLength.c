
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ type; scalar_t__ encoding; TYPE_2__* subject; } ;
typedef TYPE_3__ zsetopsrc ;
struct TYPE_13__ {TYPE_1__* zsl; } ;
typedef TYPE_4__ zset ;
typedef TYPE_4__ dict ;
struct TYPE_11__ {TYPE_4__* ptr; } ;
struct TYPE_10__ {unsigned long length; } ;


 scalar_t__ OBJ_ENCODING_HT ;
 scalar_t__ OBJ_ENCODING_INTSET ;
 scalar_t__ OBJ_ENCODING_SKIPLIST ;
 scalar_t__ OBJ_ENCODING_ZIPLIST ;
 scalar_t__ OBJ_SET ;
 scalar_t__ OBJ_ZSET ;
 unsigned long dictSize (TYPE_4__*) ;
 unsigned long intsetLen (TYPE_4__*) ;
 int serverPanic (char*) ;
 unsigned long zzlLength (TYPE_4__*) ;

unsigned long zuiLength(zsetopsrc *op) {
    if (op->subject == ((void*)0))
        return 0;

    if (op->type == OBJ_SET) {
        if (op->encoding == OBJ_ENCODING_INTSET) {
            return intsetLen(op->subject->ptr);
        } else if (op->encoding == OBJ_ENCODING_HT) {
            dict *ht = op->subject->ptr;
            return dictSize(ht);
        } else {
            serverPanic("Unknown set encoding");
        }
    } else if (op->type == OBJ_ZSET) {
        if (op->encoding == OBJ_ENCODING_ZIPLIST) {
            return zzlLength(op->subject->ptr);
        } else if (op->encoding == OBJ_ENCODING_SKIPLIST) {
            zset *zs = op->subject->ptr;
            return zs->zsl->length;
        } else {
            serverPanic("Unknown sorted set encoding");
        }
    } else {
        serverPanic("Unsupported type");
    }
}
