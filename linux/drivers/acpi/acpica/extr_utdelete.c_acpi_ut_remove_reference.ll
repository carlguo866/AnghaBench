; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_utdelete.c_acpi_ut_remove_reference.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_utdelete.c_acpi_ut_remove_reference.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ut_remove_reference = common dso_local global i32 0, align 4
@ACPI_DESC_TYPE_NAMED = common dso_local global i64 0, align 8
@ACPI_DB_ALLOCATIONS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"%s: Obj %p Current Refs=%X [To Be Decremented]\0A\00", align 1
@ACPI_GET_FUNCTION_NAME = common dso_local global i32 0, align 4
@REF_DECREMENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_ut_remove_reference(%union.acpi_operand_object* %0) #0 {
  %2 = alloca %union.acpi_operand_object*, align 8
  store %union.acpi_operand_object* %0, %union.acpi_operand_object** %2, align 8
  %3 = load i32, i32* @ut_remove_reference, align 4
  %4 = call i32 @ACPI_FUNCTION_NAME(i32 %3)
  %5 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %6 = icmp ne %union.acpi_operand_object* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %9 = call i64 @ACPI_GET_DESCRIPTOR_TYPE(%union.acpi_operand_object* %8)
  %10 = load i64, i64* @ACPI_DESC_TYPE_NAMED, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %7, %1
  br label %30

13:                                               ; preds = %7
  %14 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %15 = call i32 @acpi_ut_valid_internal_object(%union.acpi_operand_object* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  br label %30

18:                                               ; preds = %13
  %19 = load i32, i32* @ACPI_DB_ALLOCATIONS, align 4
  %20 = load i32, i32* @ACPI_GET_FUNCTION_NAME, align 4
  %21 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %22 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %23 = bitcast %union.acpi_operand_object* %22 to %struct.TYPE_2__*
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ACPI_DEBUG_PRINT_RAW(i32 %25)
  %27 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %28 = load i32, i32* @REF_DECREMENT, align 4
  %29 = call i32 @acpi_ut_update_object_reference(%union.acpi_operand_object* %27, i32 %28)
  br label %30

30:                                               ; preds = %18, %17, %12
  ret void
}

declare dso_local i32 @ACPI_FUNCTION_NAME(i32) #1

declare dso_local i64 @ACPI_GET_DESCRIPTOR_TYPE(%union.acpi_operand_object*) #1

declare dso_local i32 @acpi_ut_valid_internal_object(%union.acpi_operand_object*) #1

declare dso_local i32 @ACPI_DEBUG_PRINT_RAW(i32) #1

declare dso_local i32 @acpi_ut_update_object_reference(%union.acpi_operand_object*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
