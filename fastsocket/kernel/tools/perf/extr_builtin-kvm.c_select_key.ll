; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-kvm.c_select_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-kvm.c_select_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }
%struct.perf_kvm_stat = type { i32, i32 }

@keys = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"Unknown compare key:%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_kvm_stat*)* @select_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @select_key(%struct.perf_kvm_stat* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_kvm_stat*, align 8
  %4 = alloca i32, align 4
  store %struct.perf_kvm_stat* %0, %struct.perf_kvm_stat** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %35, %1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @keys, align 8
  %7 = load i32, i32* %4, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i64 %8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %38

13:                                               ; preds = %5
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @keys, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.perf_kvm_stat*, %struct.perf_kvm_stat** %3, align 8
  %21 = getelementptr inbounds %struct.perf_kvm_stat, %struct.perf_kvm_stat* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @strcmp(i64 %19, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %13
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @keys, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.perf_kvm_stat*, %struct.perf_kvm_stat** %3, align 8
  %33 = getelementptr inbounds %struct.perf_kvm_stat, %struct.perf_kvm_stat* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  store i32 1, i32* %2, align 4
  br label %43

34:                                               ; preds = %13
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %4, align 4
  br label %5

38:                                               ; preds = %5
  %39 = load %struct.perf_kvm_stat*, %struct.perf_kvm_stat** %3, align 8
  %40 = getelementptr inbounds %struct.perf_kvm_stat, %struct.perf_kvm_stat* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %41)
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %38, %25
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @strcmp(i64, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
