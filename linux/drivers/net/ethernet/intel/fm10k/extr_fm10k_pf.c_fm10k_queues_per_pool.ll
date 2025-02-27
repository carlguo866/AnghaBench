; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_pf.c_fm10k_queues_per_pool.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_pf.c_fm10k_queues_per_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@FM10K_MAX_QUEUES_POOL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fm10k_queues_per_pool(%struct.fm10k_hw* %0) #0 {
  %2 = alloca %struct.fm10k_hw*, align 8
  %3 = alloca i32, align 4
  store %struct.fm10k_hw* %0, %struct.fm10k_hw** %2, align 8
  %4 = load %struct.fm10k_hw*, %struct.fm10k_hw** %2, align 8
  %5 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp sgt i32 %8, 32
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %25

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = icmp sgt i32 %12, 16
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  br label %23

15:                                               ; preds = %11
  %16 = load i32, i32* %3, align 4
  %17 = icmp sgt i32 %16, 8
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  br label %21

19:                                               ; preds = %15
  %20 = load i32, i32* @FM10K_MAX_QUEUES_POOL, align 4
  br label %21

21:                                               ; preds = %19, %18
  %22 = phi i32 [ 8, %18 ], [ %20, %19 ]
  br label %23

23:                                               ; preds = %21, %14
  %24 = phi i32 [ 4, %14 ], [ %22, %21 ]
  br label %25

25:                                               ; preds = %23, %10
  %26 = phi i32 [ 2, %10 ], [ %24, %23 ]
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
