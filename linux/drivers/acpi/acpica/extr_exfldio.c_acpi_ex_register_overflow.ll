; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_exfldio.c_acpi_ex_register_overflow.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_exfldio.c_acpi_ex_register_overflow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ACPI_INTEGER_BIT_SIZE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Index value 0x%8.8X%8.8X overflows field width 0x%X\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.acpi_operand_object*, i32)* @acpi_ex_register_overflow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_ex_register_overflow(%union.acpi_operand_object* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %union.acpi_operand_object*, align 8
  %5 = alloca i32, align 4
  store %union.acpi_operand_object* %0, %union.acpi_operand_object** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %7 = bitcast %union.acpi_operand_object* %6 to %struct.TYPE_2__*
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @ACPI_INTEGER_BIT_SIZE, align 4
  %11 = icmp sge i32 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @FALSE, align 4
  store i32 %13, i32* %3, align 4
  br label %34

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %17 = bitcast %union.acpi_operand_object* %16 to %struct.TYPE_2__*
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = shl i32 1, %19
  %21 = icmp sge i32 %15, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %14
  %23 = load i32, i32* @AE_INFO, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @ACPI_FORMAT_UINT64(i32 %24)
  %26 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %27 = bitcast %union.acpi_operand_object* %26 to %struct.TYPE_2__*
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ACPI_ERROR(i32 %29)
  %31 = load i32, i32* @TRUE, align 4
  store i32 %31, i32* %3, align 4
  br label %34

32:                                               ; preds = %14
  %33 = load i32, i32* @FALSE, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %32, %22, %12
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @ACPI_FORMAT_UINT64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
