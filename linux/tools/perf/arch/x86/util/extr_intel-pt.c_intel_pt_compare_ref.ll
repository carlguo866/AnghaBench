; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/arch/x86/util/extr_intel-pt.c_intel_pt_compare_ref.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/arch/x86/util/extr_intel-pt.c_intel_pt_compare_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i64, i64, i8*, i64)* @intel_pt_compare_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_pt_compare_ref(i8* %0, i64 %1, i64 %2, i64 %3, i8* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i8* %0, i8** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  %15 = load i64, i64* %9, align 8
  %16 = load i64, i64* %10, align 8
  %17 = add i64 %15, %16
  store i64 %17, i64* %14, align 8
  %18 = load i64, i64* %14, align 8
  %19 = load i64, i64* %11, align 8
  %20 = icmp ugt i64 %18, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %6
  %22 = load i64, i64* %13, align 8
  %23 = load i64, i64* %9, align 8
  %24 = icmp ugt i64 %22, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %21
  %26 = load i64, i64* %13, align 8
  %27 = load i64, i64* %14, align 8
  %28 = load i64, i64* %11, align 8
  %29 = sub i64 %27, %28
  %30 = icmp ult i64 %26, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25, %21
  store i32 1, i32* %7, align 4
  br label %50

32:                                               ; preds = %25
  br label %43

33:                                               ; preds = %6
  %34 = load i64, i64* %13, align 8
  %35 = load i64, i64* %9, align 8
  %36 = icmp ugt i64 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load i64, i64* %13, align 8
  %39 = load i64, i64* %14, align 8
  %40 = icmp ult i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i32 1, i32* %7, align 4
  br label %50

42:                                               ; preds = %37, %33
  br label %43

43:                                               ; preds = %42, %32
  %44 = load i8*, i8** %8, align 8
  %45 = load i64, i64* %10, align 8
  %46 = load i8*, i8** %12, align 8
  %47 = load i64, i64* %9, align 8
  %48 = load i64, i64* %11, align 8
  %49 = call i32 @intel_pt_compare_buffers(i8* %44, i64 %45, i8* %46, i64 %47, i64 %48)
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %43, %41, %31
  %51 = load i32, i32* %7, align 4
  ret i32 %51
}

declare dso_local i32 @intel_pt_compare_buffers(i8*, i64, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
