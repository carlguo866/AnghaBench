; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslutils.c_UtDoConstant.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslutils.c_UtDoConstant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"While creating 64-bit constant: %s\0A\00", align 1
@ASL_ERROR = common dso_local global i32 0, align 4
@ASL_MSG_SYNTAX = common dso_local global i32 0, align 4
@AslGbl_CurrentLineNumber = common dso_local global i32 0, align 4
@AslGbl_LogicalLineNumber = common dso_local global i32 0, align 4
@AslGbl_CurrentLineOffset = common dso_local global i32 0, align 4
@AslGbl_CurrentColumn = common dso_local global i32 0, align 4
@AslGbl_Files = common dso_local global %struct.TYPE_2__* null, align 8
@ASL_FILE_INPUT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @UtDoConstant(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [64 x i8], align 16
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = call i32 @AcpiUtStrtoul64(i8* %6, i32* %4)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i64 @ACPI_FAILURE(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %29

11:                                               ; preds = %1
  %12 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %13 = load i32, i32* %3, align 4
  %14 = call i8* @AcpiFormatException(i32 %13)
  %15 = call i32 @sprintf(i8* %12, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %14)
  %16 = load i32, i32* @ASL_ERROR, align 4
  %17 = load i32, i32* @ASL_MSG_SYNTAX, align 4
  %18 = load i32, i32* @AslGbl_CurrentLineNumber, align 4
  %19 = load i32, i32* @AslGbl_LogicalLineNumber, align 4
  %20 = load i32, i32* @AslGbl_CurrentLineOffset, align 4
  %21 = load i32, i32* @AslGbl_CurrentColumn, align 4
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @AslGbl_Files, align 8
  %23 = load i64, i64* @ASL_FILE_INPUT, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %28 = call i32 @AslCommonError(i32 %16, i32 %17, i32 %18, i32 %19, i32 %20, i32 %21, i32 %26, i8* %27)
  br label %29

29:                                               ; preds = %11, %1
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i32 @AcpiUtStrtoul64(i8*, i32*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i8* @AcpiFormatException(i32) #1

declare dso_local i32 @AslCommonError(i32, i32, i32, i32, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
