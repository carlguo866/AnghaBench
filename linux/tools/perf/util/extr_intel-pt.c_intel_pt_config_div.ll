; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_intel-pt.c_intel_pt_config_div.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_intel-pt.c_intel_pt_config_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"intel-pt.cache-divisor\00", align 1
@INT_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @intel_pt_config_div to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_pt_config_div(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to i32*
  store i32* %10, i32** %7, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %28, label %14

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8
  %16 = call i64 @strtol(i8* %15, i32* null, i32 0)
  store i64 %16, i64* %8, align 8
  %17 = load i64, i64* %8, align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %14
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* @INT_MAX, align 8
  %22 = icmp sle i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i64, i64* %8, align 8
  %25 = trunc i64 %24 to i32
  %26 = load i32*, i32** %7, align 8
  store i32 %25, i32* %26, align 4
  br label %27

27:                                               ; preds = %23, %19, %14
  br label %28

28:                                               ; preds = %27, %3
  ret i32 0
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @strtol(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
