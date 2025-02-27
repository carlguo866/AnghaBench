; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_slb.c_preload_hit.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_slb.c_preload_hit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread_info = type { i8, i8, i64* }

@SLB_PRELOAD_NR = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread_info*, i64)* @preload_hit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @preload_hit(%struct.thread_info* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  store %struct.thread_info* %0, %struct.thread_info** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8 0, i8* %6, align 1
  br label %8

8:                                                ; preds = %39, %2
  %9 = load i8, i8* %6, align 1
  %10 = zext i8 %9 to i32
  %11 = load %struct.thread_info*, %struct.thread_info** %4, align 8
  %12 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %11, i32 0, i32 0
  %13 = load i8, i8* %12, align 8
  %14 = zext i8 %13 to i32
  %15 = icmp slt i32 %10, %14
  br i1 %15, label %16, label %42

16:                                               ; preds = %8
  %17 = load %struct.thread_info*, %struct.thread_info** %4, align 8
  %18 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %17, i32 0, i32 1
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = load i8, i8* %6, align 1
  %22 = zext i8 %21 to i32
  %23 = add nsw i32 %20, %22
  %24 = load i8, i8* @SLB_PRELOAD_NR, align 1
  %25 = zext i8 %24 to i32
  %26 = srem i32 %23, %25
  %27 = trunc i32 %26 to i8
  store i8 %27, i8* %7, align 1
  %28 = load i64, i64* %5, align 8
  %29 = load %struct.thread_info*, %struct.thread_info** %4, align 8
  %30 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %29, i32 0, i32 2
  %31 = load i64*, i64** %30, align 8
  %32 = load i8, i8* %7, align 1
  %33 = zext i8 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %28, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %16
  store i32 1, i32* %3, align 4
  br label %43

38:                                               ; preds = %16
  br label %39

39:                                               ; preds = %38
  %40 = load i8, i8* %6, align 1
  %41 = add i8 %40, 1
  store i8 %41, i8* %6, align 1
  br label %8

42:                                               ; preds = %8
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %37
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
