; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/tms320/c55x_plus/extr_hashtable.c_get_hashfunc_54.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/tms320/c55x_plus/extr_hashtable.c_get_hashfunc_54.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_hashfunc_54(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = and i32 %7, 33280
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp sle i32 %9, 32768
  br i1 %10, label %11, label %26

11:                                               ; preds = %2
  %12 = load i32, i32* %6, align 4
  %13 = icmp eq i32 %12, 32768
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i32 316, i32* %3, align 4
  br label %32

15:                                               ; preds = %11
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %16, 33280
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  store i32 410, i32* %3, align 4
  br label %32

20:                                               ; preds = %15
  %21 = load i32, i32* %6, align 4
  %22 = icmp eq i32 %21, 512
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 531, i32* %3, align 4
  br label %32

24:                                               ; preds = %20
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %3, align 4
  br label %32

26:                                               ; preds = %2
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 33280
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %3, align 4
  br label %32

31:                                               ; preds = %26
  store i32 315, i32* %3, align 4
  br label %32

32:                                               ; preds = %31, %29, %24, %23, %19, %14
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
