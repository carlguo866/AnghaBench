; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_string.c_kull_m_string_copy_len.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_string.c_kull_m_string_copy_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@LPTR = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kull_m_string_copy_len(i64* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i64* %0, i64** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i32, i32* @FALSE, align 4
  store i32 %8, i32* %7, align 4
  %9 = load i64, i64* %5, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %34

11:                                               ; preds = %3
  %12 = load i64*, i64** %4, align 8
  %13 = icmp ne i64* %12, null
  br i1 %13, label %14, label %34

14:                                               ; preds = %11
  %15 = load i64, i64* %6, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %34

17:                                               ; preds = %14
  %18 = load i64, i64* %6, align 8
  %19 = add i64 %18, 1
  %20 = mul i64 %19, 4
  store i64 %20, i64* %6, align 8
  %21 = load i32, i32* @LPTR, align 4
  %22 = load i64, i64* %6, align 8
  %23 = call i64 @LocalAlloc(i32 %21, i64 %22)
  %24 = load i64*, i64** %4, align 8
  store i64 %23, i64* %24, align 8
  %25 = icmp ne i64 %23, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %17
  %27 = load i64*, i64** %4, align 8
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* %6, align 8
  %31 = call i32 @RtlCopyMemory(i64 %28, i64 %29, i64 %30)
  %32 = load i32, i32* @TRUE, align 4
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %26, %17
  br label %34

34:                                               ; preds = %33, %14, %11, %3
  %35 = load i32, i32* %7, align 4
  ret i32 %35
}

declare dso_local i64 @LocalAlloc(i32, i64) #1

declare dso_local i32 @RtlCopyMemory(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
