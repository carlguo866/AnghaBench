
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;


 int PyArg_ParseTuple (int *,char*,int*,int*) ;
 int PyErr_SetString (int ,int ) ;
 int PyExc_IOError ;
 int Py_RETURN_NONE ;
 int bd_sync (int,int,unsigned long,unsigned long) ;
 int strerror (int) ;

__attribute__((used)) static PyObject *
busdma_sync(PyObject *self, PyObject *args)
{
 int error, mdid, op;

 if (!PyArg_ParseTuple(args, "ii", &mdid, &op))
  return (((void*)0));
 error = bd_sync(mdid, op, 0UL, ~0UL);
 if (error) {
  PyErr_SetString(PyExc_IOError, strerror(error));
  return (((void*)0));
 }
 Py_RETURN_NONE;
}
