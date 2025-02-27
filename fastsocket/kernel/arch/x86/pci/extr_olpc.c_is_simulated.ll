; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/pci/extr_olpc.c_is_simulated.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/pci/extr_olpc.c_is_simulated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NB_SLOT = common dso_local global i64 0, align 8
@SB_SLOT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @is_simulated to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_simulated(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %2
  %8 = load i32, i32* %4, align 4
  %9 = call i64 @PCI_SLOT(i32 %8)
  %10 = load i64, i64* @NB_SLOT, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %17, label %12

12:                                               ; preds = %7
  %13 = load i32, i32* %4, align 4
  %14 = call i64 @PCI_SLOT(i32 %13)
  %15 = load i64, i64* @SB_SLOT, align 8
  %16 = icmp eq i64 %14, %15
  br label %17

17:                                               ; preds = %12, %7
  %18 = phi i1 [ true, %7 ], [ %16, %12 ]
  br label %19

19:                                               ; preds = %17, %2
  %20 = phi i1 [ false, %2 ], [ %18, %17 ]
  %21 = zext i1 %20 to i32
  ret i32 %21
}

declare dso_local i64 @PCI_SLOT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
