; ModuleID = '/home/carl/AnghaBench/freebsd/sys/tests/callout_test/extr_callout_test.c_co_saydone.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/tests/callout_test/extr_callout_test.c_co_saydone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.callout_run = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [48 x i8] c"The callout test is now complete for thread %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"number_callouts:%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"Callouts that bailed (Not PENDING or ACTIVE cleared):%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Callouts that completed:%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"Drain calls:%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Zero returns:%d non-zero:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @co_saydone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @co_saydone(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.callout_run*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.callout_run*
  store %struct.callout_run* %5, %struct.callout_run** %3, align 8
  %6 = load %struct.callout_run*, %struct.callout_run** %3, align 8
  %7 = getelementptr inbounds %struct.callout_run, %struct.callout_run* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.callout_run*, %struct.callout_run** %3, align 8
  %11 = getelementptr inbounds %struct.callout_run, %struct.callout_run* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %12)
  %14 = load %struct.callout_run*, %struct.callout_run** %3, align 8
  %15 = getelementptr inbounds %struct.callout_run, %struct.callout_run* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i32 %16)
  %18 = load %struct.callout_run*, %struct.callout_run** %3, align 8
  %19 = getelementptr inbounds %struct.callout_run, %struct.callout_run* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %20)
  %22 = load %struct.callout_run*, %struct.callout_run** %3, align 8
  %23 = getelementptr inbounds %struct.callout_run, %struct.callout_run* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %24)
  %26 = load %struct.callout_run*, %struct.callout_run** %3, align 8
  %27 = getelementptr inbounds %struct.callout_run, %struct.callout_run* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.callout_run*, %struct.callout_run** %3, align 8
  %30 = getelementptr inbounds %struct.callout_run, %struct.callout_run* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %28, i32 %31)
  ret void
}

declare dso_local i32 @printf(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
