; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb3/extr_cxio_wr.h_cxio_next_sw_cqe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb3/extr_cxio_wr.h_cxio_next_sw_cqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t3_cqe = type { i32 }
%struct.t3_cq = type { i32, i32, %struct.t3_cqe*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.t3_cqe* (%struct.t3_cq*)* @cxio_next_sw_cqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.t3_cqe* @cxio_next_sw_cqe(%struct.t3_cq* %0) #0 {
  %2 = alloca %struct.t3_cqe*, align 8
  %3 = alloca %struct.t3_cq*, align 8
  %4 = alloca %struct.t3_cqe*, align 8
  store %struct.t3_cq* %0, %struct.t3_cq** %3, align 8
  %5 = load %struct.t3_cq*, %struct.t3_cq** %3, align 8
  %6 = getelementptr inbounds %struct.t3_cq, %struct.t3_cq* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.t3_cq*, %struct.t3_cq** %3, align 8
  %9 = getelementptr inbounds %struct.t3_cq, %struct.t3_cq* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @Q_EMPTY(i32 %7, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %27, label %13

13:                                               ; preds = %1
  %14 = load %struct.t3_cq*, %struct.t3_cq** %3, align 8
  %15 = getelementptr inbounds %struct.t3_cq, %struct.t3_cq* %14, i32 0, i32 2
  %16 = load %struct.t3_cqe*, %struct.t3_cqe** %15, align 8
  %17 = load %struct.t3_cq*, %struct.t3_cq** %3, align 8
  %18 = getelementptr inbounds %struct.t3_cq, %struct.t3_cq* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.t3_cq*, %struct.t3_cq** %3, align 8
  %21 = getelementptr inbounds %struct.t3_cq, %struct.t3_cq* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @Q_PTR2IDX(i32 %19, i32 %22)
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.t3_cqe, %struct.t3_cqe* %16, i64 %24
  store %struct.t3_cqe* %25, %struct.t3_cqe** %4, align 8
  %26 = load %struct.t3_cqe*, %struct.t3_cqe** %4, align 8
  store %struct.t3_cqe* %26, %struct.t3_cqe** %2, align 8
  br label %28

27:                                               ; preds = %1
  store %struct.t3_cqe* null, %struct.t3_cqe** %2, align 8
  br label %28

28:                                               ; preds = %27, %13
  %29 = load %struct.t3_cqe*, %struct.t3_cqe** %2, align 8
  ret %struct.t3_cqe* %29
}

declare dso_local i32 @Q_EMPTY(i32, i32) #1

declare dso_local i32 @Q_PTR2IDX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
