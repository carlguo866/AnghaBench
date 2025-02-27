
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef size_t cmsUInt32Number ;
struct TYPE_10__ {TYPE_3__* InterpParams; } ;
typedef TYPE_2__ cmsToneCurve ;
struct TYPE_9__ {void* Lerp16; } ;
struct TYPE_11__ {TYPE_1__ Interpolation; } ;
typedef TYPE_3__ cmsInterpParams ;
typedef int cmsContext ;
typedef void* _cmsInterpFn16 ;
struct TYPE_12__ {size_t nInputs; size_t nOutputs; TYPE_3__** ParamsCurveOut16; void** EvalCurveOut16; void* EvalCLUT; TYPE_3__ const* CLUTparams; TYPE_3__** ParamsCurveIn16; void** EvalCurveIn16; } ;
typedef TYPE_4__ Prelin16Data ;


 void* Eval16nop1D ;
 scalar_t__ _cmsCalloc (int ,size_t,int) ;
 scalar_t__ _cmsMallocZero (int ,int) ;

__attribute__((used)) static
Prelin16Data* PrelinOpt16alloc(cmsContext ContextID,
                               const cmsInterpParams* ColorMap,
                               cmsUInt32Number nInputs, cmsToneCurve** In,
                               cmsUInt32Number nOutputs, cmsToneCurve** Out )
{
    cmsUInt32Number i;
    Prelin16Data* p16 = (Prelin16Data*)_cmsMallocZero(ContextID, sizeof(Prelin16Data));
    if (p16 == ((void*)0)) return ((void*)0);

    p16 ->nInputs = nInputs;
    p16 ->nOutputs = nOutputs;


    for (i=0; i < nInputs; i++) {

        if (In == ((void*)0)) {
            p16 -> ParamsCurveIn16[i] = ((void*)0);
            p16 -> EvalCurveIn16[i] = Eval16nop1D;

        }
        else {
            p16 -> ParamsCurveIn16[i] = In[i] ->InterpParams;
            p16 -> EvalCurveIn16[i] = p16 ->ParamsCurveIn16[i]->Interpolation.Lerp16;
        }
    }

    p16 ->CLUTparams = ColorMap;
    p16 ->EvalCLUT = ColorMap ->Interpolation.Lerp16;


    p16 -> EvalCurveOut16 = (_cmsInterpFn16*) _cmsCalloc(ContextID, nOutputs, sizeof(_cmsInterpFn16));
    p16 -> ParamsCurveOut16 = (cmsInterpParams**) _cmsCalloc(ContextID, nOutputs, sizeof(cmsInterpParams* ));

    for (i=0; i < nOutputs; i++) {

        if (Out == ((void*)0)) {
            p16 ->ParamsCurveOut16[i] = ((void*)0);
            p16 -> EvalCurveOut16[i] = Eval16nop1D;
        }
        else {

            p16 ->ParamsCurveOut16[i] = Out[i] ->InterpParams;
            p16 -> EvalCurveOut16[i] = p16 ->ParamsCurveOut16[i]->Interpolation.Lerp16;
        }
    }

    return p16;
}
