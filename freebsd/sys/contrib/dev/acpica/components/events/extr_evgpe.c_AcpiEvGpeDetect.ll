; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/events/extr_evgpe.c_AcpiEvGpeDetect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/events/extr_evgpe.c_AcpiEvGpeDetect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, %struct.TYPE_7__*, i32*, %struct.TYPE_6__*, i32* }
%struct.TYPE_6__ = type { i32, i32, i32 }

@ACPI_INTERRUPT_NOT_HANDLED = common dso_local global i64 0, align 8
@EvGpeDetect = common dso_local global i32 0, align 4
@AcpiGbl_GpeLock = common dso_local global i32 0, align 4
@ACPI_DB_INTERRUPTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [78 x i8] c"Ignore disabled registers for GPE %02X-%02X: RunEnable=%02X, WakeEnable=%02X\0A\00", align 1
@ACPI_GPE_REGISTER_WIDTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @AcpiEvGpeDetect(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %13 = load i64, i64* @ACPI_INTERRUPT_NOT_HANDLED, align 8
  store i64 %13, i64* %9, align 8
  %14 = load i32, i32* @EvGpeDetect, align 4
  %15 = call i32 @ACPI_FUNCTION_NAME(i32 %14)
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %17 = icmp ne %struct.TYPE_5__* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %1
  %19 = load i64, i64* %9, align 8
  store i64 %19, i64* %2, align 8
  br label %122

20:                                               ; preds = %1
  %21 = load i32, i32* @AcpiGbl_GpeLock, align 4
  %22 = call i32 @AcpiOsAcquireLock(i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  store %struct.TYPE_7__* %25, %struct.TYPE_7__** %4, align 8
  br label %26

26:                                               ; preds = %113, %20
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %28 = icmp ne %struct.TYPE_7__* %27, null
  br i1 %28, label %29, label %117

29:                                               ; preds = %26
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 4
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %5, align 8
  store i64 0, i64* %11, align 8
  br label %33

33:                                               ; preds = %110, %29
  %34 = load i64, i64* %11, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ult i64 %34, %37
  br i1 %38, label %39, label %113

39:                                               ; preds = %33
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 3
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = load i64, i64* %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i64 %43
  store %struct.TYPE_6__* %44, %struct.TYPE_6__** %6, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %47, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %71, label %53

53:                                               ; preds = %39
  %54 = load i32, i32* @ACPI_DB_INTERRUPTS, align 4
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @ACPI_GPE_REGISTER_WIDTH, align 4
  %62 = sub nsw i32 %61, 1
  %63 = add nsw i32 %60, %62
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @ACPI_DEBUG_PRINT(i32 %69)
  br label %110

71:                                               ; preds = %39
  store i64 0, i64* %12, align 8
  br label %72

72:                                               ; preds = %106, %71
  %73 = load i64, i64* %12, align 8
  %74 = load i32, i32* @ACPI_GPE_REGISTER_WIDTH, align 4
  %75 = sext i32 %74 to i64
  %76 = icmp ult i64 %73, %75
  br i1 %76, label %77, label %109

77:                                               ; preds = %72
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = load i64, i64* %11, align 8
  %82 = trunc i64 %81 to i32
  %83 = load i32, i32* @ACPI_GPE_REGISTER_WIDTH, align 4
  %84 = mul nsw i32 %82, %83
  %85 = sext i32 %84 to i64
  %86 = load i64, i64* %12, align 8
  %87 = add i64 %85, %86
  %88 = getelementptr inbounds i32, i32* %80, i64 %87
  store i32* %88, i32** %7, align 8
  %89 = load i64, i64* %12, align 8
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = sext i32 %92 to i64
  %94 = add i64 %89, %93
  store i64 %94, i64* %8, align 8
  %95 = load i32, i32* @AcpiGbl_GpeLock, align 4
  %96 = load i32, i32* %10, align 4
  %97 = call i32 @AcpiOsReleaseLock(i32 %95, i32 %96)
  %98 = load i32*, i32** %5, align 8
  %99 = load i32*, i32** %7, align 8
  %100 = load i64, i64* %8, align 8
  %101 = call i64 @AcpiEvDetectGpe(i32* %98, i32* %99, i64 %100)
  %102 = load i64, i64* %9, align 8
  %103 = or i64 %102, %101
  store i64 %103, i64* %9, align 8
  %104 = load i32, i32* @AcpiGbl_GpeLock, align 4
  %105 = call i32 @AcpiOsAcquireLock(i32 %104)
  store i32 %105, i32* %10, align 4
  br label %106

106:                                              ; preds = %77
  %107 = load i64, i64* %12, align 8
  %108 = add i64 %107, 1
  store i64 %108, i64* %12, align 8
  br label %72

109:                                              ; preds = %72
  br label %110

110:                                              ; preds = %109, %53
  %111 = load i64, i64* %11, align 8
  %112 = add i64 %111, 1
  store i64 %112, i64* %11, align 8
  br label %33

113:                                              ; preds = %33
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %115, align 8
  store %struct.TYPE_7__* %116, %struct.TYPE_7__** %4, align 8
  br label %26

117:                                              ; preds = %26
  %118 = load i32, i32* @AcpiGbl_GpeLock, align 4
  %119 = load i32, i32* %10, align 4
  %120 = call i32 @AcpiOsReleaseLock(i32 %118, i32 %119)
  %121 = load i64, i64* %9, align 8
  store i64 %121, i64* %2, align 8
  br label %122

122:                                              ; preds = %117, %18
  %123 = load i64, i64* %2, align 8
  ret i64 %123
}

declare dso_local i32 @ACPI_FUNCTION_NAME(i32) #1

declare dso_local i32 @AcpiOsAcquireLock(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @AcpiOsReleaseLock(i32, i32) #1

declare dso_local i64 @AcpiEvDetectGpe(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
