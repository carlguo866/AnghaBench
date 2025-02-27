; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/mm/extr_tsb.c_flush_tsb_kernel_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/mm/extr_tsb.c_flush_tsb_kernel_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tsb = type { i64 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@KERNEL_TSB_NENTRIES = common dso_local global i32 0, align 4
@swapper_tsb = common dso_local global %struct.tsb* null, align 8
@TSB_TAG_INVALID_BIT = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flush_tsb_kernel_range(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.tsb*, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i64, i64* %3, align 8
  store i64 %8, i64* %5, align 8
  br label %9

9:                                                ; preds = %33, %2
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* %4, align 8
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %13, label %37

13:                                               ; preds = %9
  %14 = load i64, i64* %5, align 8
  %15 = load i32, i32* @PAGE_SHIFT, align 4
  %16 = load i32, i32* @KERNEL_TSB_NENTRIES, align 4
  %17 = call i64 @tsb_hash(i64 %14, i32 %15, i32 %16)
  store i64 %17, i64* %6, align 8
  %18 = load %struct.tsb*, %struct.tsb** @swapper_tsb, align 8
  %19 = load i64, i64* %6, align 8
  %20 = getelementptr inbounds %struct.tsb, %struct.tsb* %18, i64 %19
  store %struct.tsb* %20, %struct.tsb** %7, align 8
  %21 = load %struct.tsb*, %struct.tsb** %7, align 8
  %22 = getelementptr inbounds %struct.tsb, %struct.tsb* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %5, align 8
  %25 = call i64 @tag_compare(i64 %23, i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %13
  %28 = load i64, i64* @TSB_TAG_INVALID_BIT, align 8
  %29 = shl i64 1, %28
  %30 = load %struct.tsb*, %struct.tsb** %7, align 8
  %31 = getelementptr inbounds %struct.tsb, %struct.tsb* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  br label %32

32:                                               ; preds = %27, %13
  br label %33

33:                                               ; preds = %32
  %34 = load i64, i64* @PAGE_SIZE, align 8
  %35 = load i64, i64* %5, align 8
  %36 = add i64 %35, %34
  store i64 %36, i64* %5, align 8
  br label %9

37:                                               ; preds = %9
  ret void
}

declare dso_local i64 @tsb_hash(i64, i32, i32) #1

declare dso_local i64 @tag_compare(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
