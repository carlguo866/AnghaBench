; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma.h_is_cqe_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma.h_is_cqe_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_cq = type { i32 }
%struct.ocrdma_cqe = type { i32 }

@OCRDMA_CQE_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocrdma_cq*, %struct.ocrdma_cqe*)* @is_cqe_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_cqe_valid(%struct.ocrdma_cq* %0, %struct.ocrdma_cqe* %1) #0 {
  %3 = alloca %struct.ocrdma_cq*, align 8
  %4 = alloca %struct.ocrdma_cqe*, align 8
  %5 = alloca i32, align 4
  store %struct.ocrdma_cq* %0, %struct.ocrdma_cq** %3, align 8
  store %struct.ocrdma_cqe* %1, %struct.ocrdma_cqe** %4, align 8
  %6 = load %struct.ocrdma_cqe*, %struct.ocrdma_cqe** %4, align 8
  %7 = getelementptr inbounds %struct.ocrdma_cqe, %struct.ocrdma_cqe* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @le32_to_cpu(i32 %8)
  %10 = load i32, i32* @OCRDMA_CQE_VALID, align 4
  %11 = and i32 %9, %10
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %3, align 8
  %14 = getelementptr inbounds %struct.ocrdma_cq, %struct.ocrdma_cq* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %12, %15
  %17 = zext i1 %16 to i32
  ret i32 %17
}

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
