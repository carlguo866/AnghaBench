; ModuleID = '/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb_size_varlen64.c'
source_filename = "/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb_size_varlen64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stb_size_varlen64(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp slt i32 %4, 128
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %40

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = icmp slt i32 %8, 16384
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  store i32 2, i32* %2, align 4
  br label %40

11:                                               ; preds = %7
  %12 = load i32, i32* %3, align 4
  %13 = icmp slt i32 %12, 2097152
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i32 3, i32* %2, align 4
  br label %40

15:                                               ; preds = %11
  %16 = load i32, i32* %3, align 4
  %17 = icmp slt i32 %16, 268435456
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i32 4, i32* %2, align 4
  br label %40

19:                                               ; preds = %15
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @STB_IMM_UINT64(i32 0)
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i32 5, i32* %2, align 4
  br label %40

24:                                               ; preds = %19
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @STB_IMM_UINT64(i32 0)
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i32 6, i32* %2, align 4
  br label %40

29:                                               ; preds = %24
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @STB_IMM_UINT64(i32 0)
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i32 7, i32* %2, align 4
  br label %40

34:                                               ; preds = %29
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @STB_IMM_UINT64(i32 0)
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store i32 8, i32* %2, align 4
  br label %40

39:                                               ; preds = %34
  store i32 9, i32* %2, align 4
  br label %40

40:                                               ; preds = %39, %38, %33, %28, %23, %18, %14, %10, %6
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @STB_IMM_UINT64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
