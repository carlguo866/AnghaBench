
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_13__ ;


struct TYPE_15__ {TYPE_4__* v_dict; } ;
struct TYPE_16__ {TYPE_1__ vval; int v_type; } ;
typedef TYPE_2__ typval_T ;
struct TYPE_14__ {scalar_t__ v_lock; } ;
struct TYPE_17__ {int di_key; TYPE_13__ di_tv; } ;
typedef TYPE_3__ dictitem_T ;
struct TYPE_18__ {int dv_refcount; } ;
typedef TYPE_4__ dict_T ;
typedef scalar_t__ char_u ;
typedef int PyObject ;


 scalar_t__ FAIL ;
 scalar_t__ NUL ;
 int PyErr_NoMemory () ;
 int * PyIter_Next (int *) ;
 int * PyMapping_Keys (int *) ;
 int * PyObject_GetItem (int *,int *) ;
 int * PyObject_GetIter (int *) ;
 int Py_DECREF (int *) ;
 int Py_XDECREF (int *) ;
 int RAISE_KEY_ADD_FAIL (int ) ;
 int RAISE_NO_EMPTY_KEYS ;
 scalar_t__* StringToChars (int *,int **) ;
 int VAR_DICT ;
 int _ConvertFromPyObject (int *,TYPE_13__*,int *) ;
 scalar_t__ dict_add (TYPE_4__*,TYPE_3__*) ;
 int dict_unref (TYPE_4__*) ;
 TYPE_3__* dictitem_alloc (scalar_t__*) ;
 int dictitem_free (TYPE_3__*) ;
 TYPE_4__* py_dict_alloc () ;
 int vim_free (TYPE_3__*) ;

__attribute__((used)) static int
pymap_to_tv(PyObject *obj, typval_T *tv, PyObject *lookup_dict)
{
    dict_T *dict;
    char_u *key;
    dictitem_T *di;
    PyObject *list;
    PyObject *iterator;
    PyObject *keyObject;
    PyObject *valObject;

    if (!(dict = py_dict_alloc()))
 return -1;

    tv->v_type = VAR_DICT;
    tv->vval.v_dict = dict;

    if (!(list = PyMapping_Keys(obj)))
    {
 dict_unref(dict);
 return -1;
    }

    if (!(iterator = PyObject_GetIter(list)))
    {
 dict_unref(dict);
 Py_DECREF(list);
 return -1;
    }
    Py_DECREF(list);

    while ((keyObject = PyIter_Next(iterator)))
    {
 PyObject *todecref;

 if (!(key = StringToChars(keyObject, &todecref)))
 {
     Py_DECREF(keyObject);
     Py_DECREF(iterator);
     dict_unref(dict);
     return -1;
 }

 if (*key == NUL)
 {
     Py_DECREF(keyObject);
     Py_DECREF(iterator);
     Py_XDECREF(todecref);
     dict_unref(dict);
     RAISE_NO_EMPTY_KEYS;
     return -1;
 }

 if (!(valObject = PyObject_GetItem(obj, keyObject)))
 {
     Py_DECREF(keyObject);
     Py_DECREF(iterator);
     Py_XDECREF(todecref);
     dict_unref(dict);
     return -1;
 }

 di = dictitem_alloc(key);

 Py_DECREF(keyObject);
 Py_XDECREF(todecref);

 if (di == ((void*)0))
 {
     Py_DECREF(iterator);
     Py_DECREF(valObject);
     dict_unref(dict);
     PyErr_NoMemory();
     return -1;
 }
 di->di_tv.v_lock = 0;

 if (_ConvertFromPyObject(valObject, &di->di_tv, lookup_dict) == -1)
 {
     Py_DECREF(iterator);
     Py_DECREF(valObject);
     vim_free(di);
     dict_unref(dict);
     return -1;
 }

 Py_DECREF(valObject);

 if (dict_add(dict, di) == FAIL)
 {
     RAISE_KEY_ADD_FAIL(di->di_key);
     Py_DECREF(iterator);
     dictitem_free(di);
     dict_unref(dict);
     return -1;
 }
    }
    Py_DECREF(iterator);
    --dict->dv_refcount;
    return 0;
}
