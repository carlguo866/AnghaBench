; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwi/extr_if_iwi.c_iwi_cvtrate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwi/extr_if_iwi.c_iwi_cvtrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @iwi_cvtrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwi_cvtrate(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %17 [
    i32 139, label %5
    i32 137, label %6
    i32 136, label %7
    i32 138, label %8
    i32 129, label %9
    i32 128, label %10
    i32 135, label %11
    i32 134, label %12
    i32 133, label %13
    i32 132, label %14
    i32 131, label %15
    i32 130, label %16
  ]

5:                                                ; preds = %1
  store i32 2, i32* %2, align 4
  br label %18

6:                                                ; preds = %1
  store i32 4, i32* %2, align 4
  br label %18

7:                                                ; preds = %1
  store i32 11, i32* %2, align 4
  br label %18

8:                                                ; preds = %1
  store i32 22, i32* %2, align 4
  br label %18

9:                                                ; preds = %1
  store i32 12, i32* %2, align 4
  br label %18

10:                                               ; preds = %1
  store i32 18, i32* %2, align 4
  br label %18

11:                                               ; preds = %1
  store i32 24, i32* %2, align 4
  br label %18

12:                                               ; preds = %1
  store i32 36, i32* %2, align 4
  br label %18

13:                                               ; preds = %1
  store i32 48, i32* %2, align 4
  br label %18

14:                                               ; preds = %1
  store i32 72, i32* %2, align 4
  br label %18

15:                                               ; preds = %1
  store i32 96, i32* %2, align 4
  br label %18

16:                                               ; preds = %1
  store i32 108, i32* %2, align 4
  br label %18

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %18

18:                                               ; preds = %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
