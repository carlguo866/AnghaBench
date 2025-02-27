; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_cmn.h_bnx2x_clear_sge_mask_next_elems.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_cmn.h_bnx2x_clear_sge_mask_next_elems.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x_fastpath = type { i32 }

@NUM_RX_SGE_PAGES = common dso_local global i32 0, align 4
@RX_SGE_CNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x_fastpath*)* @bnx2x_clear_sge_mask_next_elems to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_clear_sge_mask_next_elems(%struct.bnx2x_fastpath* %0) #0 {
  %2 = alloca %struct.bnx2x_fastpath*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bnx2x_fastpath* %0, %struct.bnx2x_fastpath** %2, align 8
  store i32 1, i32* %3, align 4
  br label %6

6:                                                ; preds = %30, %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @NUM_RX_SGE_PAGES, align 4
  %9 = icmp sle i32 %7, %8
  br i1 %9, label %10, label %33

10:                                               ; preds = %6
  %11 = load i32, i32* @RX_SGE_CNT, align 4
  %12 = load i32, i32* %3, align 4
  %13 = mul nsw i32 %11, %12
  %14 = sub nsw i32 %13, 1
  store i32 %14, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %26, %10
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %16, 2
  br i1 %17, label %18, label %29

18:                                               ; preds = %15
  %19 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %2, align 8
  %20 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @BIT_VEC64_CLEAR_BIT(i32 %21, i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %18
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %4, align 4
  br label %15

29:                                               ; preds = %15
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %3, align 4
  br label %6

33:                                               ; preds = %6
  ret void
}

declare dso_local i32 @BIT_VEC64_CLEAR_BIT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
