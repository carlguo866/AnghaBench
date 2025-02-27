
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int Flags; } ;
struct TYPE_8__ {TYPE_3__* Arg; } ;
struct TYPE_9__ {scalar_t__ AmlOpcode; scalar_t__ Node; int DisasmFlags; TYPE_3__* Next; TYPE_1__ Value; } ;
struct TYPE_10__ {TYPE_2__ Common; } ;
typedef scalar_t__ BOOLEAN ;
typedef TYPE_3__ ACPI_PARSE_OBJECT ;
typedef TYPE_4__ ACPI_OPCODE_INFO ;


 int ACPI_PARSEOP_IGNORE ;
 int AML_HAS_ARGS ;
 TYPE_4__* AcpiPsGetOpcodeInfo (scalar_t__) ;
 scalar_t__ FALSE ;
 scalar_t__ TRUE ;

__attribute__((used)) static BOOLEAN
AcpiDmIsTargetAnOperand (
    ACPI_PARSE_OBJECT *Target,
    ACPI_PARSE_OBJECT *Operand,
    BOOLEAN TopLevel)
{
    const ACPI_OPCODE_INFO *OpInfo;
    BOOLEAN Same;






    if (Target->Common.AmlOpcode != Operand->Common.AmlOpcode)
    {
        return (FALSE);
    }



    if (Target->Common.Node != Operand->Common.Node)
    {
        return (FALSE);
    }



    OpInfo = AcpiPsGetOpcodeInfo (Operand->Common.AmlOpcode);
    if (OpInfo->Flags & AML_HAS_ARGS)
    {
        Same = AcpiDmIsTargetAnOperand (Target->Common.Value.Arg,
            Operand->Common.Value.Arg, FALSE);
        if (!Same)
        {
            return (FALSE);
        }
    }



    if ((!TopLevel) &&
         Target->Common.Next)
    {
        Same = AcpiDmIsTargetAnOperand (Target->Common.Next,
            Operand->Common.Next, FALSE);
        if (!Same)
        {
            return (FALSE);
        }
    }



    if (TopLevel)
    {
        Operand->Common.DisasmFlags |= ACPI_PARSEOP_IGNORE;
    }
    return (TRUE);
}
