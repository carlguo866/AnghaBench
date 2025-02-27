; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_nsrepair.c_acpi_ns_remove_null_elements.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_nsrepair.c_acpi_ns_remove_null_elements.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_evaluate_info = type { i32 }
%union.acpi_operand_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, %union.acpi_operand_object** }

@ns_remove_null_elements = common dso_local global i32 0, align 4
@ACPI_DB_REPAIR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"%s: Found and removed %u NULL elements\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_ns_remove_null_elements(%struct.acpi_evaluate_info* %0, i32 %1, %union.acpi_operand_object* %2) #0 {
  %4 = alloca %struct.acpi_evaluate_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.acpi_operand_object*, align 8
  %7 = alloca %union.acpi_operand_object**, align 8
  %8 = alloca %union.acpi_operand_object**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.acpi_evaluate_info* %0, %struct.acpi_evaluate_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store %union.acpi_operand_object* %2, %union.acpi_operand_object** %6, align 8
  %12 = load i32, i32* @ns_remove_null_elements, align 4
  %13 = call i32 @ACPI_FUNCTION_NAME(i32 %12)
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %16 [
    i32 136, label %15
    i32 135, label %15
    i32 134, label %15
    i32 130, label %15
    i32 133, label %15
    i32 131, label %15
    i32 129, label %15
    i32 132, label %15
    i32 128, label %17
    i32 138, label %17
    i32 137, label %17
  ]

15:                                               ; preds = %3, %3, %3, %3, %3, %3, %3, %3
  br label %18

16:                                               ; preds = %3
  br label %17

17:                                               ; preds = %3, %3, %3, %16
  br label %71

18:                                               ; preds = %15
  %19 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %20 = bitcast %union.acpi_operand_object* %19 to %struct.TYPE_2__*
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %9, align 8
  %23 = load i64, i64* %9, align 8
  store i64 %23, i64* %10, align 8
  %24 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %25 = bitcast %union.acpi_operand_object* %24 to %struct.TYPE_2__*
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %26, align 8
  store %union.acpi_operand_object** %27, %union.acpi_operand_object*** %7, align 8
  %28 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %7, align 8
  store %union.acpi_operand_object** %28, %union.acpi_operand_object*** %8, align 8
  store i64 0, i64* %11, align 8
  br label %29

29:                                               ; preds = %49, %18
  %30 = load i64, i64* %11, align 8
  %31 = load i64, i64* %9, align 8
  %32 = icmp slt i64 %30, %31
  br i1 %32, label %33, label %52

33:                                               ; preds = %29
  %34 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %7, align 8
  %35 = load %union.acpi_operand_object*, %union.acpi_operand_object** %34, align 8
  %36 = icmp ne %union.acpi_operand_object* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = load i64, i64* %10, align 8
  %39 = add nsw i64 %38, -1
  store i64 %39, i64* %10, align 8
  br label %46

40:                                               ; preds = %33
  %41 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %7, align 8
  %42 = load %union.acpi_operand_object*, %union.acpi_operand_object** %41, align 8
  %43 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %8, align 8
  store %union.acpi_operand_object* %42, %union.acpi_operand_object** %43, align 8
  %44 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %8, align 8
  %45 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %44, i32 1
  store %union.acpi_operand_object** %45, %union.acpi_operand_object*** %8, align 8
  br label %46

46:                                               ; preds = %40, %37
  %47 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %7, align 8
  %48 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %47, i32 1
  store %union.acpi_operand_object** %48, %union.acpi_operand_object*** %7, align 8
  br label %49

49:                                               ; preds = %46
  %50 = load i64, i64* %11, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %11, align 8
  br label %29

52:                                               ; preds = %29
  %53 = load i64, i64* %10, align 8
  %54 = load i64, i64* %9, align 8
  %55 = icmp slt i64 %53, %54
  br i1 %55, label %56, label %71

56:                                               ; preds = %52
  %57 = load i32, i32* @ACPI_DB_REPAIR, align 4
  %58 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %4, align 8
  %59 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i64, i64* %9, align 8
  %62 = load i64, i64* %10, align 8
  %63 = sub nsw i64 %61, %62
  %64 = trunc i64 %63 to i32
  %65 = call i32 @ACPI_DEBUG_PRINT(i32 %64)
  %66 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %8, align 8
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %66, align 8
  %67 = load i64, i64* %10, align 8
  %68 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %69 = bitcast %union.acpi_operand_object* %68 to %struct.TYPE_2__*
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  store i64 %67, i64* %70, align 8
  br label %71

71:                                               ; preds = %17, %56, %52
  ret void
}

declare dso_local i32 @ACPI_FUNCTION_NAME(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
