; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/common/extr_dmtables.c_AdDisplayTables.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/common/extr_dmtables.c_AdDisplayTables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@AcpiGbl_ParseOpRoot = common dso_local global i32 0, align 4
@AE_NOT_EXIST = common dso_local global i32 0, align 4
@AcpiGbl_DmOpt_Listing = common dso_local global i64 0, align 8
@ACPI_UINT32_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"\0A\0ATable Header:\0A\00", align 1
@DB_BYTE_DISPLAY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Table Body (Length 0x%X)\0A\00", align 1
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AdDisplayTables(i8* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  %6 = load i32, i32* @AcpiGbl_ParseOpRoot, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* @AE_NOT_EXIST, align 4
  store i32 %9, i32* %3, align 4
  br label %46

10:                                               ; preds = %2
  %11 = load i64, i64* @AcpiGbl_DmOpt_Listing, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %10
  %14 = load i8*, i8** %4, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %16 = call i32 @AdCreateTableHeader(i8* %14, %struct.TYPE_4__* %15)
  br label %17

17:                                               ; preds = %13, %10
  %18 = load i32, i32* @AcpiGbl_ParseOpRoot, align 4
  %19 = load i32, i32* @ACPI_UINT32_MAX, align 4
  %20 = call i32 @AcpiDmDisassemble(i32* null, i32 %18, i32 %19)
  %21 = call i32 (...) @MpEmitMappingInfo()
  %22 = load i64, i64* @AcpiGbl_DmOpt_Listing, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %44

24:                                               ; preds = %17
  %25 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %27 = bitcast %struct.TYPE_4__* %26 to i32*
  %28 = load i32, i32* @DB_BYTE_DISPLAY, align 4
  %29 = load i32, i32* @ACPI_UINT32_MAX, align 4
  %30 = call i32 @AcpiUtDebugDumpBuffer(i32* %27, i32 4, i32 %28, i32 %29)
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %36 = bitcast %struct.TYPE_4__* %35 to i32*
  %37 = getelementptr inbounds i32, i32* %36, i64 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @DB_BYTE_DISPLAY, align 4
  %42 = load i32, i32* @ACPI_UINT32_MAX, align 4
  %43 = call i32 @AcpiUtDebugDumpBuffer(i32* %37, i32 %40, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %24, %17
  %45 = load i32, i32* @AE_OK, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %44, %8
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @AdCreateTableHeader(i8*, %struct.TYPE_4__*) #1

declare dso_local i32 @AcpiDmDisassemble(i32*, i32, i32) #1

declare dso_local i32 @MpEmitMappingInfo(...) #1

declare dso_local i32 @AcpiOsPrintf(i8*, ...) #1

declare dso_local i32 @AcpiUtDebugDumpBuffer(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
