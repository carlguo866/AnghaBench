; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/pdh/extr_pdh.c_test_PdhSetCounterScaleFactor.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/pdh/extr_pdh.c_test_PdhSetCounterScaleFactor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"PdhOpenQueryA failed 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"\\System\\System Up Time\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"PdhAddCounterA failed 0x%08x\0A\00", align 1
@PDH_INVALID_HANDLE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [40 x i8] c"PdhSetCounterScaleFactor failed 0x%08x\0A\00", align 1
@PDH_INVALID_ARGUMENT = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [29 x i8] c"PdhCloseQuery failed 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_PdhSetCounterScaleFactor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_PdhSetCounterScaleFactor() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = call i64 @PdhOpenQueryA(i32* null, i32 0, i32* %2)
  store i64 %4, i64* %1, align 8
  %5 = load i64, i64* %1, align 8
  %6 = load i64, i64* @ERROR_SUCCESS, align 8
  %7 = icmp eq i64 %5, %6
  %8 = zext i1 %7 to i32
  %9 = load i64, i64* %1, align 8
  %10 = call i32 @ok(i32 %8, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %9)
  %11 = load i32, i32* %2, align 4
  %12 = call i64 @PdhAddCounterA(i32 %11, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 0, i32** %3)
  store i64 %12, i64* %1, align 8
  %13 = load i64, i64* %1, align 8
  %14 = load i64, i64* @ERROR_SUCCESS, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = load i64, i64* %1, align 8
  %18 = call i32 @ok(i32 %16, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i64 %17)
  %19 = call i64 @PdhSetCounterScaleFactor(i32* null, i32 8)
  store i64 %19, i64* %1, align 8
  %20 = load i64, i64* %1, align 8
  %21 = load i64, i64* @PDH_INVALID_HANDLE, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = load i64, i64* %1, align 8
  %25 = call i32 @ok(i32 %23, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i64 %24)
  %26 = call i64 @PdhSetCounterScaleFactor(i32* null, i32 1)
  store i64 %26, i64* %1, align 8
  %27 = load i64, i64* %1, align 8
  %28 = load i64, i64* @PDH_INVALID_HANDLE, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = load i64, i64* %1, align 8
  %32 = call i32 @ok(i32 %30, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i64 %31)
  %33 = load i32*, i32** %3, align 8
  %34 = call i64 @PdhSetCounterScaleFactor(i32* %33, i32 8)
  store i64 %34, i64* %1, align 8
  %35 = load i64, i64* %1, align 8
  %36 = load i64, i64* @PDH_INVALID_ARGUMENT, align 8
  %37 = icmp eq i64 %35, %36
  %38 = zext i1 %37 to i32
  %39 = load i64, i64* %1, align 8
  %40 = call i32 @ok(i32 %38, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i64 %39)
  %41 = load i32*, i32** %3, align 8
  %42 = call i64 @PdhSetCounterScaleFactor(i32* %41, i32 -8)
  store i64 %42, i64* %1, align 8
  %43 = load i64, i64* %1, align 8
  %44 = load i64, i64* @PDH_INVALID_ARGUMENT, align 8
  %45 = icmp eq i64 %43, %44
  %46 = zext i1 %45 to i32
  %47 = load i64, i64* %1, align 8
  %48 = call i32 @ok(i32 %46, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i64 %47)
  %49 = load i32*, i32** %3, align 8
  %50 = call i64 @PdhSetCounterScaleFactor(i32* %49, i32 7)
  store i64 %50, i64* %1, align 8
  %51 = load i64, i64* %1, align 8
  %52 = load i64, i64* @ERROR_SUCCESS, align 8
  %53 = icmp eq i64 %51, %52
  %54 = zext i1 %53 to i32
  %55 = load i64, i64* %1, align 8
  %56 = call i32 @ok(i32 %54, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i64 %55)
  %57 = load i32*, i32** %3, align 8
  %58 = call i64 @PdhSetCounterScaleFactor(i32* %57, i32 0)
  store i64 %58, i64* %1, align 8
  %59 = load i64, i64* %1, align 8
  %60 = load i64, i64* @ERROR_SUCCESS, align 8
  %61 = icmp eq i64 %59, %60
  %62 = zext i1 %61 to i32
  %63 = load i64, i64* %1, align 8
  %64 = call i32 @ok(i32 %62, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i64 %63)
  %65 = load i32, i32* %2, align 4
  %66 = call i64 @PdhCloseQuery(i32 %65)
  store i64 %66, i64* %1, align 8
  %67 = load i64, i64* %1, align 8
  %68 = load i64, i64* @ERROR_SUCCESS, align 8
  %69 = icmp eq i64 %67, %68
  %70 = zext i1 %69 to i32
  %71 = load i64, i64* %1, align 8
  %72 = call i32 @ok(i32 %70, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i64 %71)
  ret void
}

declare dso_local i64 @PdhOpenQueryA(i32*, i32, i32*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @PdhAddCounterA(i32, i8*, i32, i32**) #1

declare dso_local i64 @PdhSetCounterScaleFactor(i32*, i32) #1

declare dso_local i64 @PdhCloseQuery(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
