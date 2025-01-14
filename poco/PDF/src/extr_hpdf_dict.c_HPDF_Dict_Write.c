
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_32__ TYPE_7__ ;
typedef struct TYPE_31__ TYPE_6__ ;
typedef struct TYPE_30__ TYPE_5__ ;
typedef struct TYPE_29__ TYPE_4__ ;
typedef struct TYPE_28__ TYPE_3__ ;
typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_1__ ;
typedef struct TYPE_25__ TYPE_18__ ;


struct TYPE_26__ {int obj_class; } ;
struct TYPE_32__ {scalar_t__ (* before_write_fn ) (TYPE_7__*) ;int filter; scalar_t__ (* write_fn ) (TYPE_7__*,TYPE_3__*) ;scalar_t__ (* after_write_fn ) (TYPE_7__*) ;scalar_t__ stream; int error; TYPE_18__* list; int * filterParams; int mmgr; TYPE_1__ header; } ;
struct TYPE_31__ {scalar_t__ value; int key; } ;
struct TYPE_27__ {int obj_id; } ;
struct TYPE_30__ {TYPE_2__ header; } ;
struct TYPE_29__ {int obj_id; } ;
struct TYPE_28__ {scalar_t__ size; } ;
struct TYPE_25__ {scalar_t__ count; } ;
typedef scalar_t__ HPDF_UINT32 ;
typedef scalar_t__ HPDF_UINT ;
typedef TYPE_3__* HPDF_Stream ;
typedef scalar_t__ HPDF_STATUS ;
typedef TYPE_4__ HPDF_Obj_Header ;
typedef TYPE_5__* HPDF_Number ;
typedef int * HPDF_Encrypt ;
typedef TYPE_6__* HPDF_DictElement ;
typedef TYPE_7__* HPDF_Dict ;
typedef scalar_t__ HPDF_Array ;


 int HPDF_Array_AddName (scalar_t__,char*) ;
 int HPDF_Array_Clear (scalar_t__) ;
 scalar_t__ HPDF_Array_New (int ) ;
 int HPDF_DICT_ITEM_UNEXPECTED_TYPE ;
 int HPDF_DICT_STREAM_LENGTH_NOT_FOUND ;
 scalar_t__ HPDF_Dict_Add (TYPE_7__*,char*,scalar_t__) ;
 int HPDF_Dict_Add_FilterParams (TYPE_7__*,int *) ;
 scalar_t__ HPDF_Dict_GetItem (TYPE_7__*,char*,int ) ;
 int HPDF_Dict_RemoveElement (TYPE_7__*,char*) ;
 int HPDF_Encrypt_Reset (int *) ;
 scalar_t__ HPDF_Error_GetCode (int ) ;
 int HPDF_INVALID_OBJECT ;
 int HPDF_List_ItemAt (TYPE_18__*,scalar_t__) ;
 int HPDF_Number_SetValue (TYPE_5__*,scalar_t__) ;
 int HPDF_OCLASS_ARRAY ;
 int HPDF_OCLASS_DICT ;
 int HPDF_OCLASS_NUMBER ;
 scalar_t__ HPDF_OK ;
 int HPDF_OSUBCLASS_ENCRYPT ;
 int HPDF_OTYPE_HIDDEN ;
 int HPDF_OTYPE_INDIRECT ;
 scalar_t__ HPDF_Obj_Write (scalar_t__,TYPE_3__*,int *) ;
 int HPDF_PTRACE (char*) ;
 int HPDF_STREAM_FILTER_CCITT_DECODE ;
 int HPDF_STREAM_FILTER_DCT_DECODE ;
 int HPDF_STREAM_FILTER_FLATE_DECODE ;
 int HPDF_STREAM_FILTER_NONE ;
 scalar_t__ HPDF_SetError (int ,int ,int ) ;
 scalar_t__ HPDF_Stream_WriteChar (TYPE_3__*,char) ;
 scalar_t__ HPDF_Stream_WriteEscapeName (TYPE_3__*,int ) ;
 scalar_t__ HPDF_Stream_WriteStr (TYPE_3__*,char*) ;
 scalar_t__ HPDF_Stream_WriteToStream (scalar_t__,TYPE_3__*,int,int *) ;
 scalar_t__ stub1 (TYPE_7__*) ;
 scalar_t__ stub2 (TYPE_7__*,TYPE_3__*) ;
 scalar_t__ stub3 (TYPE_7__*) ;

HPDF_STATUS
HPDF_Dict_Write (HPDF_Dict dict,
                  HPDF_Stream stream,
                  HPDF_Encrypt e)
{
    HPDF_UINT i;
    HPDF_STATUS ret;

    ret = HPDF_Stream_WriteStr (stream, "<<\012");
    if (ret != HPDF_OK)
        return ret;

    if (dict->before_write_fn) {
        if ((ret = dict->before_write_fn (dict)) != HPDF_OK)
            return ret;
    }


    if (dict->header.obj_class == (HPDF_OCLASS_DICT | HPDF_OSUBCLASS_ENCRYPT))
        e = ((void*)0);

    if (dict->stream) {

        if (dict->filter == HPDF_STREAM_FILTER_NONE)
            HPDF_Dict_RemoveElement (dict, "Filter");
        else {
            HPDF_Array array = HPDF_Dict_GetItem (dict, "Filter",
                        HPDF_OCLASS_ARRAY);

            if (!array) {
                array = HPDF_Array_New (dict->mmgr);
                if (!array)
                    return HPDF_Error_GetCode (dict->error);

                ret = HPDF_Dict_Add (dict, "Filter", array);
                if (ret != HPDF_OK)
                    return ret;
            }

            HPDF_Array_Clear (array);


            if (dict->filter & HPDF_STREAM_FILTER_FLATE_DECODE)
                HPDF_Array_AddName (array, "FlateDecode");


            if (dict->filter & HPDF_STREAM_FILTER_DCT_DECODE)
                HPDF_Array_AddName (array, "DCTDecode");

            if(dict->filter & HPDF_STREAM_FILTER_CCITT_DECODE)
                HPDF_Array_AddName (array, "CCITTFaxDecode");

            if(dict->filterParams!=((void*)0))
            {
                HPDF_Dict_Add_FilterParams(dict, dict->filterParams);
            }
        }
    }

    for (i = 0; i < dict->list->count; i++) {
        HPDF_DictElement element =
                (HPDF_DictElement)HPDF_List_ItemAt (dict->list, i);
        HPDF_Obj_Header *header = (HPDF_Obj_Header *)(element->value);

        if (!element->value)
            return HPDF_SetError (dict->error, HPDF_INVALID_OBJECT, 0);

        if (header->obj_id & HPDF_OTYPE_HIDDEN) {
            HPDF_PTRACE((" HPDF_Dict_Write obj=%p skipped obj_id=0x%08X\n",
                    element->value, (HPDF_UINT)header->obj_id));
        } else {
            ret = HPDF_Stream_WriteEscapeName (stream, element->key);
            if (ret != HPDF_OK)
                return ret;

            ret = HPDF_Stream_WriteChar (stream, ' ');
            if (ret != HPDF_OK)
                return ret;

            ret = HPDF_Obj_Write (element->value, stream, e);
            if (ret != HPDF_OK)
                return ret;

            ret = HPDF_Stream_WriteStr (stream, "\012");
            if (ret != HPDF_OK)
                return ret;
        }
    }

    if (dict->write_fn) {
        if ((ret = dict->write_fn (dict, stream)) != HPDF_OK)
            return ret;
    }

    if ((ret = HPDF_Stream_WriteStr (stream, ">>")) != HPDF_OK)
        return ret;

    if (dict->stream) {
        HPDF_UINT32 strptr;
        HPDF_Number length;


        length = (HPDF_Number)HPDF_Dict_GetItem (dict, "Length",
                HPDF_OCLASS_NUMBER);
        if (!length)
            return HPDF_SetError (dict->error,
                    HPDF_DICT_STREAM_LENGTH_NOT_FOUND, 0);


        if (!(length->header.obj_id & HPDF_OTYPE_INDIRECT)) {
            return HPDF_SetError (dict->error, HPDF_DICT_ITEM_UNEXPECTED_TYPE,
                    0);
        }

        if ((ret = HPDF_Stream_WriteStr (stream, "\012stream\015\012"))
                != HPDF_OK)
            return ret;

        strptr = stream->size;

        if (e)
            HPDF_Encrypt_Reset (e);

        if ((ret = HPDF_Stream_WriteToStream (dict->stream, stream,
                        dict->filter, e)) != HPDF_OK)
            return ret;

        HPDF_Number_SetValue (length, stream->size - strptr);

        ret = HPDF_Stream_WriteStr (stream, "\012endstream");
    }


    if (dict->after_write_fn) {
        if ((ret = dict->after_write_fn (dict)) != HPDF_OK)
            return ret;
    }

    return ret;
}
