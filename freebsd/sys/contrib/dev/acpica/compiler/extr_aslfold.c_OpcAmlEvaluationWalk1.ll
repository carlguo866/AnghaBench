; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslfold.c_OpcAmlEvaluationWalk1.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslfold.c_OpcAmlEvaluationWalk1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_13__* }

@ASL_PARSE_OUTPUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"%s Constant interpretation failed (1) - %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i32, i8*)* @OpcAmlEvaluationWalk1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @OpcAmlEvaluationWalk1(%struct.TYPE_13__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %11, %struct.TYPE_12__** %7, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 2
  store %struct.TYPE_13__* %12, %struct.TYPE_13__** %14, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @AcpiPsGetOpcodeInfo(i32 %24)
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %3
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  store i64 %37, i64* %41, align 8
  br label %42

42:                                               ; preds = %33, %3
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %44 = call i32 @AcpiDsExecBeginOp(%struct.TYPE_12__* %43, %struct.TYPE_13__** %9)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i64 @ACPI_FAILURE(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %42
  %49 = load i32, i32* @ASL_PARSE_OUTPUT, align 4
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @AcpiFormatException(i32 %54)
  %56 = call i32 @DbgPrint(i32 %49, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %55)
  br label %57

57:                                               ; preds = %48, %42
  %58 = load i32, i32* %8, align 4
  ret i32 %58
}

declare dso_local i32 @AcpiPsGetOpcodeInfo(i32) #1

declare dso_local i32 @AcpiDsExecBeginOp(%struct.TYPE_12__*, %struct.TYPE_13__**) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @DbgPrint(i32, i8*, i32, i32) #1

declare dso_local i32 @AcpiFormatException(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
