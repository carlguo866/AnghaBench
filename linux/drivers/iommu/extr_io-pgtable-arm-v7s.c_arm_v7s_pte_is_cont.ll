; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_io-pgtable-arm-v7s.c_arm_v7s_pte_is_cont.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_io-pgtable-arm-v7s.c_arm_v7s_pte_is_cont.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ARM_V7S_CONT_SECTION = common dso_local global i32 0, align 4
@ARM_V7S_PTE_TYPE_PAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @arm_v7s_pte_is_cont to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_v7s_pte_is_cont(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %17

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @ARM_V7S_PTE_IS_TABLE(i32 %9, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %8
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @ARM_V7S_CONT_SECTION, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %3, align 4
  br label %29

17:                                               ; preds = %8, %2
  %18 = load i32, i32* %5, align 4
  %19 = icmp eq i32 %18, 2
  br i1 %19, label %20, label %27

20:                                               ; preds = %17
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @ARM_V7S_PTE_TYPE_PAGE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %3, align 4
  br label %29

27:                                               ; preds = %17
  br label %28

28:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %28, %20, %13
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @ARM_V7S_PTE_IS_TABLE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
