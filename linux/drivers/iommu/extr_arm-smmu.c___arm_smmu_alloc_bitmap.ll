; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu.c___arm_smmu_alloc_bitmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu.c___arm_smmu_alloc_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i32, i32)* @__arm_smmu_alloc_bitmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__arm_smmu_alloc_bitmap(i64* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64* %0, i64** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  br label %9

9:                                                ; preds = %21, %3
  %10 = load i64*, i64** %5, align 8
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @find_next_zero_bit(i64* %10, i32 %11, i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %9
  %18 = load i32, i32* @ENOSPC, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %28

20:                                               ; preds = %9
  br label %21

21:                                               ; preds = %20
  %22 = load i32, i32* %8, align 4
  %23 = load i64*, i64** %5, align 8
  %24 = call i64 @test_and_set_bit(i32 %22, i64* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %9, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %26, %17
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local i32 @find_next_zero_bit(i64*, i32, i32) #1

declare dso_local i64 @test_and_set_bit(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
