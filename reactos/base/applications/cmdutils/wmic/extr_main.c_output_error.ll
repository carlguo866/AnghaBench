; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/cmdutils/wmic/extr_main.c_output_error.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/cmdutils/wmic/extr_main.c_output_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@output_error.fmtW = internal constant [3 x i8] c"%s\00", align 1
@STD_ERROR_HANDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @output_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @output_error(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [8192 x i8], align 16
  store i32 %0, i32* %2, align 4
  %4 = call i32 @GetModuleHandleW(i32* null)
  %5 = load i32, i32* %2, align 4
  %6 = getelementptr inbounds [8192 x i8], [8192 x i8]* %3, i64 0, i64 0
  %7 = getelementptr inbounds [8192 x i8], [8192 x i8]* %3, i64 0, i64 0
  %8 = call i32 @ARRAY_SIZE(i8* %7)
  %9 = call i32 @LoadStringW(i32 %4, i32 %5, i8* %6, i32 %8)
  %10 = load i32, i32* @STD_ERROR_HANDLE, align 4
  %11 = call i32 @GetStdHandle(i32 %10)
  %12 = getelementptr inbounds [8192 x i8], [8192 x i8]* %3, i64 0, i64 0
  %13 = call i32 @output_string(i32 %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @output_error.fmtW, i64 0, i64 0), i8* %12)
  ret i32 %13
}

declare dso_local i32 @LoadStringW(i32, i32, i8*, i32) #1

declare dso_local i32 @GetModuleHandleW(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i8*) #1

declare dso_local i32 @output_string(i32, i8*, i8*) #1

declare dso_local i32 @GetStdHandle(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
