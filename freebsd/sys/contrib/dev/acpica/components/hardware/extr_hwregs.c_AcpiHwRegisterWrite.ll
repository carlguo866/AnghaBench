; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/hardware/extr_hwregs.c_AcpiHwRegisterWrite.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/hardware/extr_hwregs.c_AcpiHwRegisterWrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@HwRegisterWrite = common dso_local global i32 0, align 4
@ACPI_PM1_STATUS_PRESERVED_BITS = common dso_local global i32 0, align 4
@AcpiGbl_XPm1aStatus = common dso_local global i32 0, align 4
@AcpiGbl_XPm1bStatus = common dso_local global i32 0, align 4
@AcpiGbl_XPm1aEnable = common dso_local global i32 0, align 4
@AcpiGbl_XPm1bEnable = common dso_local global i32 0, align 4
@AcpiGbl_FADT = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@ACPI_PM1_CONTROL_PRESERVED_BITS = common dso_local global i32 0, align 4
@ACPI_PM2_CONTROL_PRESERVED_BITS = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Unknown Register ID: 0x%X\00", align 1
@AE_BAD_PARAMETER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AcpiHwRegisterWrite(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @HwRegisterWrite, align 4
  %10 = call i32 @ACPI_FUNCTION_TRACE(i32 %9)
  %11 = load i32, i32* %4, align 4
  switch i32 %11, label %56 [
    i32 131, label %12
    i32 132, label %19
    i32 133, label %22
    i32 130, label %35
    i32 129, label %49
    i32 128, label %52
  ]

12:                                               ; preds = %2
  %13 = load i32, i32* @ACPI_PM1_STATUS_PRESERVED_BITS, align 4
  %14 = xor i32 %13, -1
  %15 = load i32, i32* %5, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @AcpiHwWriteMultiple(i32 %17, i32* @AcpiGbl_XPm1aStatus, i32* @AcpiGbl_XPm1bStatus)
  store i32 %18, i32* %6, align 4
  br label %61

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @AcpiHwWriteMultiple(i32 %20, i32* @AcpiGbl_XPm1aEnable, i32* @AcpiGbl_XPm1bEnable)
  store i32 %21, i32* %6, align 4
  br label %61

22:                                               ; preds = %2
  %23 = call i32 @AcpiHwReadMultiple(i32* %7, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @AcpiGbl_FADT, i32 0, i32 4), i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @AcpiGbl_FADT, i32 0, i32 3))
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @ACPI_FAILURE(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %62

28:                                               ; preds = %22
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @ACPI_PM1_CONTROL_PRESERVED_BITS, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @ACPI_INSERT_BITS(i32 %29, i32 %30, i32 %31)
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @AcpiHwWriteMultiple(i32 %33, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @AcpiGbl_FADT, i32 0, i32 4), i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @AcpiGbl_FADT, i32 0, i32 3))
  store i32 %34, i32* %6, align 4
  br label %61

35:                                               ; preds = %2
  %36 = call i32 @AcpiHwRead(i32* %8, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @AcpiGbl_FADT, i32 0, i32 2))
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @ACPI_FAILURE(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %62

41:                                               ; preds = %35
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @ACPI_PM2_CONTROL_PRESERVED_BITS, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @ACPI_INSERT_BITS(i32 %43, i32 %44, i32 %45)
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @AcpiHwWrite(i32 %47, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @AcpiGbl_FADT, i32 0, i32 2))
  store i32 %48, i32* %6, align 4
  br label %61

49:                                               ; preds = %2
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @AcpiHwWrite(i32 %50, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @AcpiGbl_FADT, i32 0, i32 1))
  store i32 %51, i32* %6, align 4
  br label %61

52:                                               ; preds = %2
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @AcpiGbl_FADT, i32 0, i32 0), align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @AcpiHwWritePort(i32 %53, i32 %54, i32 8)
  store i32 %55, i32* %6, align 4
  br label %61

56:                                               ; preds = %2
  %57 = load i32, i32* @AE_INFO, align 4
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @ACPI_ERROR(i32 %58)
  %60 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %56, %52, %49, %41, %28, %19, %12
  br label %62

62:                                               ; preds = %61, %40, %27
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @return_ACPI_STATUS(i32 %63)
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @AcpiHwWriteMultiple(i32, i32*, i32*) #1

declare dso_local i32 @AcpiHwReadMultiple(i32*, i32*, i32*) #1

declare dso_local i32 @ACPI_FAILURE(i32) #1

declare dso_local i32 @ACPI_INSERT_BITS(i32, i32, i32) #1

declare dso_local i32 @AcpiHwRead(i32*, i32*) #1

declare dso_local i32 @AcpiHwWrite(i32, i32*) #1

declare dso_local i32 @AcpiHwWritePort(i32, i32, i32) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
