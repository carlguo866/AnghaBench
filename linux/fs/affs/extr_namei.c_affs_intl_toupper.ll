; ModuleID = '/home/carl/AnghaBench/linux/fs/affs/extr_namei.c_affs_intl_toupper.c'
source_filename = "/home/carl/AnghaBench/linux/fs/affs/extr_namei.c_affs_intl_toupper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @affs_intl_toupper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @affs_intl_toupper(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp sge i32 %3, 97
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4
  %7 = icmp sle i32 %6, 122
  br i1 %7, label %17, label %8

8:                                                ; preds = %5, %1
  %9 = load i32, i32* %2, align 4
  %10 = icmp sge i32 %9, 224
  br i1 %10, label %11, label %20

11:                                               ; preds = %8
  %12 = load i32, i32* %2, align 4
  %13 = icmp sle i32 %12, 254
  br i1 %13, label %14, label %20

14:                                               ; preds = %11
  %15 = load i32, i32* %2, align 4
  %16 = icmp ne i32 %15, 247
  br i1 %16, label %17, label %20

17:                                               ; preds = %14, %5
  %18 = load i32, i32* %2, align 4
  %19 = sub nsw i32 %18, 32
  br label %22

20:                                               ; preds = %14, %11, %8
  %21 = load i32, i32* %2, align 4
  br label %22

22:                                               ; preds = %20, %17
  %23 = phi i32 [ %19, %17 ], [ %21, %20 ]
  ret i32 %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
