; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_alter.c_ALTER_modify.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_alter.c_ALTER_modify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tagMSIVIEW = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"%p %d %p\0A\00", align 1
@ERROR_FUNCTION_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tagMSIVIEW*, i32, i32*, i32)* @ALTER_modify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ALTER_modify(%struct.tagMSIVIEW* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.tagMSIVIEW*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.tagMSIVIEW* %0, %struct.tagMSIVIEW** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.tagMSIVIEW*, %struct.tagMSIVIEW** %5, align 8
  %11 = bitcast %struct.tagMSIVIEW* %10 to i32*
  store i32* %11, i32** %9, align 8
  %12 = load i32*, i32** %9, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32*, i32** %7, align 8
  %15 = call i32 @TRACE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* %12, i32 %13, i32* %14)
  %16 = load i32, i32* @ERROR_FUNCTION_FAILED, align 4
  ret i32 %16
}

declare dso_local i32 @TRACE(i8*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
