; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_cq.c_cqe_sw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_cq.c_cqe_sw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_cqe = type { i32 }

@MTHCA_CQ_ENTRY_OWNER_HW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mthca_cqe* (%struct.mthca_cqe*)* @cqe_sw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mthca_cqe* @cqe_sw(%struct.mthca_cqe* %0) #0 {
  %2 = alloca %struct.mthca_cqe*, align 8
  store %struct.mthca_cqe* %0, %struct.mthca_cqe** %2, align 8
  %3 = load i32, i32* @MTHCA_CQ_ENTRY_OWNER_HW, align 4
  %4 = load %struct.mthca_cqe*, %struct.mthca_cqe** %2, align 8
  %5 = getelementptr inbounds %struct.mthca_cqe, %struct.mthca_cqe* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = and i32 %3, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %12

10:                                               ; preds = %1
  %11 = load %struct.mthca_cqe*, %struct.mthca_cqe** %2, align 8
  br label %12

12:                                               ; preds = %10, %9
  %13 = phi %struct.mthca_cqe* [ null, %9 ], [ %11, %10 ]
  ret %struct.mthca_cqe* %13
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
