; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/tms320/c55x_plus/extr_hashtable.c_get_hashfunc_09.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/tms320/c55x_plus/extr_hashtable.c_get_hashfunc_09.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_hashfunc_09(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = and i32 %7, -1073741824
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = and i32 %9, -1073741824
  %11 = icmp ule i32 %10, -2147483648
  br i1 %11, label %12, label %27

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = and i32 %13, -1073741824
  %15 = icmp eq i32 %14, -2147483648
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i32 91, i32* %3, align 4
  br label %33

17:                                               ; preds = %12
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  store i32 89, i32* %3, align 4
  br label %33

21:                                               ; preds = %17
  %22 = load i32, i32* %6, align 4
  %23 = icmp eq i32 %22, 1073741824
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 90, i32* %3, align 4
  br label %33

25:                                               ; preds = %21
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %3, align 4
  br label %33

27:                                               ; preds = %2
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, -1073741824
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i32, i32* %4, align 4
  store i32 %31, i32* %3, align 4
  br label %33

32:                                               ; preds = %27
  store i32 92, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %30, %25, %24, %20, %16
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
