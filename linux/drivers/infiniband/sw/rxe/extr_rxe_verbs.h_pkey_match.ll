; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_verbs.h_pkey_match.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_verbs.h_pkey_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @pkey_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkey_match(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = and i32 %5, 32767
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %24

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4
  %10 = and i32 %9, 32767
  %11 = load i32, i32* %4, align 4
  %12 = and i32 %11, 32767
  %13 = icmp eq i32 %10, %12
  br i1 %13, label %14, label %24

14:                                               ; preds = %8
  %15 = load i32, i32* %3, align 4
  %16 = and i32 %15, 32768
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* %4, align 4
  %20 = and i32 %19, 32768
  %21 = icmp ne i32 %20, 0
  br label %22

22:                                               ; preds = %18, %14
  %23 = phi i1 [ true, %14 ], [ %21, %18 ]
  br label %24

24:                                               ; preds = %22, %8, %2
  %25 = phi i1 [ false, %8 ], [ false, %2 ], [ %23, %22 ]
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 1, i32 0
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
