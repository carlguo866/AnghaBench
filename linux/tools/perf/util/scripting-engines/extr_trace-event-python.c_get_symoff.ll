; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/scripting-engines/extr_trace-event-python.c_get_symoff.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/scripting-engines/extr_trace-event-python.c_get_symoff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i32* }
%struct.addr_location = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"[unknown]\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%s+0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.symbol*, %struct.addr_location*, i32, i8*, i32)* @get_symoff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_symoff(%struct.symbol* %0, %struct.addr_location* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.symbol*, align 8
  %8 = alloca %struct.addr_location*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.symbol* %0, %struct.symbol** %7, align 8
  store %struct.addr_location* %1, %struct.addr_location** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load %struct.symbol*, %struct.symbol** %7, align 8
  %14 = icmp ne %struct.symbol* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %5
  %16 = load %struct.symbol*, %struct.symbol** %7, align 8
  %17 = getelementptr inbounds %struct.symbol, %struct.symbol* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %15, %5
  %23 = load i8*, i8** %10, align 8
  %24 = load i32, i32* %11, align 4
  %25 = call i32 (i8*, i32, i8*, i8*, ...) @scnprintf(i8* %23, i32 %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i32 %25, i32* %6, align 4
  br label %49

26:                                               ; preds = %15
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %26
  %30 = load i8*, i8** %10, align 8
  %31 = load i32, i32* %11, align 4
  %32 = load %struct.symbol*, %struct.symbol** %7, align 8
  %33 = getelementptr inbounds %struct.symbol, %struct.symbol* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = bitcast i32* %34 to i8*
  %36 = call i32 (i8*, i32, i8*, i8*, ...) @scnprintf(i8* %30, i32 %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %35)
  store i32 %36, i32* %6, align 4
  br label %49

37:                                               ; preds = %26
  %38 = load %struct.symbol*, %struct.symbol** %7, align 8
  %39 = load %struct.addr_location*, %struct.addr_location** %8, align 8
  %40 = call i64 @get_offset(%struct.symbol* %38, %struct.addr_location* %39)
  store i64 %40, i64* %12, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = load i32, i32* %11, align 4
  %43 = load %struct.symbol*, %struct.symbol** %7, align 8
  %44 = getelementptr inbounds %struct.symbol, %struct.symbol* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = bitcast i32* %45 to i8*
  %47 = load i64, i64* %12, align 8
  %48 = call i32 (i8*, i32, i8*, i8*, ...) @scnprintf(i8* %41, i32 %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %46, i64 %47)
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %37, %29, %22
  %50 = load i32, i32* %6, align 4
  ret i32 %50
}

declare dso_local i32 @scnprintf(i8*, i32, i8*, i8*, ...) #1

declare dso_local i64 @get_offset(%struct.symbol*, %struct.addr_location*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
