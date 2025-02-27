; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_utobject.c_acpi_ut_create_string_object.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_utobject.c_acpi_ut_create_string_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i64 }

@ut_create_string_object = common dso_local global i32 0, align 4
@ACPI_TYPE_STRING = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Could not allocate size %X\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %union.acpi_operand_object* @acpi_ut_create_string_object(i64 %0) #0 {
  %2 = alloca %union.acpi_operand_object*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %union.acpi_operand_object*, align 8
  %5 = alloca i8*, align 8
  store i64 %0, i64* %3, align 8
  %6 = load i32, i32* @ut_create_string_object, align 4
  %7 = load i64, i64* %3, align 8
  %8 = call i32 @ACPI_FUNCTION_TRACE_U32(i32 %6, i64 %7)
  %9 = load i32, i32* @ACPI_TYPE_STRING, align 4
  %10 = call %union.acpi_operand_object* @acpi_ut_create_internal_object(i32 %9)
  store %union.acpi_operand_object* %10, %union.acpi_operand_object** %4, align 8
  %11 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %12 = icmp ne %union.acpi_operand_object* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = call i32 @return_PTR(%union.acpi_operand_object* null)
  br label %15

15:                                               ; preds = %13, %1
  %16 = load i64, i64* %3, align 8
  %17 = add nsw i64 %16, 1
  %18 = call i8* @ACPI_ALLOCATE_ZEROED(i64 %17)
  store i8* %18, i8** %5, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %29, label %21

21:                                               ; preds = %15
  %22 = load i32, i32* @AE_INFO, align 4
  %23 = load i64, i64* %3, align 8
  %24 = trunc i64 %23 to i32
  %25 = call i32 @ACPI_ERROR(i32 %24)
  %26 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %27 = call i32 @acpi_ut_remove_reference(%union.acpi_operand_object* %26)
  %28 = call i32 @return_PTR(%union.acpi_operand_object* null)
  br label %29

29:                                               ; preds = %21, %15
  %30 = load i8*, i8** %5, align 8
  %31 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %32 = bitcast %union.acpi_operand_object* %31 to %struct.TYPE_2__*
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i8* %30, i8** %33, align 8
  %34 = load i64, i64* %3, align 8
  %35 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %36 = bitcast %union.acpi_operand_object* %35 to %struct.TYPE_2__*
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  store i64 %34, i64* %37, align 8
  %38 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %39 = call i32 @return_PTR(%union.acpi_operand_object* %38)
  %40 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  ret %union.acpi_operand_object* %40
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_U32(i32, i64) #1

declare dso_local %union.acpi_operand_object* @acpi_ut_create_internal_object(i32) #1

declare dso_local i32 @return_PTR(%union.acpi_operand_object*) #1

declare dso_local i8* @ACPI_ALLOCATE_ZEROED(i64) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @acpi_ut_remove_reference(%union.acpi_operand_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
