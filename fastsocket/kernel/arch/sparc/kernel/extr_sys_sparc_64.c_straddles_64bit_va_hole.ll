; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_sys_sparc_64.c_straddles_64bit_va_hole.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_sys_sparc_64.c_straddles_64bit_va_hole.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VA_EXCLUDE_START = common dso_local global i64 0, align 8
@VA_EXCLUDE_END = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64)* @straddles_64bit_va_hole to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @straddles_64bit_va_hole(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* @VA_EXCLUDE_START, align 8
  store i64 %8, i64* %6, align 8
  %9 = load i64, i64* @VA_EXCLUDE_END, align 8
  store i64 %9, i64* %7, align 8
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* %6, align 8
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* %6, align 8
  %16 = icmp ult i64 %14, %15
  br label %17

17:                                               ; preds = %13, %2
  %18 = phi i1 [ false, %2 ], [ %16, %13 ]
  %19 = zext i1 %18 to i32
  %20 = call i64 @likely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %38

23:                                               ; preds = %17
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* %7, align 8
  %26 = icmp uge i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* %7, align 8
  %30 = icmp uge i64 %28, %29
  br label %31

31:                                               ; preds = %27, %23
  %32 = phi i1 [ false, %23 ], [ %30, %27 ]
  %33 = zext i1 %32 to i32
  %34 = call i64 @likely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %38

37:                                               ; preds = %31
  store i32 1, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %36, %22
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
