; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_update_err_cqe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_update_err_cqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_wc = type { i32, i32*, i64 }
%struct.ocrdma_cqe = type { i32 }
%struct.ocrdma_qp = type { i32 }

@IB_QPS_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_wc*, %struct.ocrdma_cqe*, %struct.ocrdma_qp*, i32)* @ocrdma_update_err_cqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocrdma_update_err_cqe(%struct.ib_wc* %0, %struct.ocrdma_cqe* %1, %struct.ocrdma_qp* %2, i32 %3) #0 {
  %5 = alloca %struct.ib_wc*, align 8
  %6 = alloca %struct.ocrdma_cqe*, align 8
  %7 = alloca %struct.ocrdma_qp*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ib_wc* %0, %struct.ib_wc** %5, align 8
  store %struct.ocrdma_cqe* %1, %struct.ocrdma_cqe** %6, align 8
  store %struct.ocrdma_qp* %2, %struct.ocrdma_qp** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.ib_wc*, %struct.ib_wc** %5, align 8
  %11 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %10, i32 0, i32 2
  store i64 0, i64* %11, align 8
  %12 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %7, align 8
  %13 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %12, i32 0, i32 0
  %14 = load %struct.ib_wc*, %struct.ib_wc** %5, align 8
  %15 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %14, i32 0, i32 1
  store i32* %13, i32** %15, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @ocrdma_to_ibwc_err(i32 %16)
  %18 = load %struct.ib_wc*, %struct.ib_wc** %5, align 8
  %19 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %7, align 8
  %21 = call i32 @ocrdma_flush_qp(%struct.ocrdma_qp* %20)
  %22 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %7, align 8
  %23 = load i32, i32* @IB_QPS_ERR, align 4
  %24 = call i32 @ocrdma_qp_state_machine(%struct.ocrdma_qp* %22, i32 %23, i32* null)
  %25 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %7, align 8
  %26 = call i32 @is_hw_rq_empty(%struct.ocrdma_qp* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %4
  %29 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %7, align 8
  %30 = call i32 @is_hw_sq_empty(%struct.ocrdma_qp* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %28, %4
  store i32 1, i32* %9, align 4
  %33 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %7, align 8
  %34 = load %struct.ocrdma_cqe*, %struct.ocrdma_cqe** %6, align 8
  %35 = call i32 @ocrdma_set_cqe_status_flushed(%struct.ocrdma_qp* %33, %struct.ocrdma_cqe* %34)
  br label %36

36:                                               ; preds = %32, %28
  %37 = load i32, i32* %9, align 4
  ret i32 %37
}

declare dso_local i32 @ocrdma_to_ibwc_err(i32) #1

declare dso_local i32 @ocrdma_flush_qp(%struct.ocrdma_qp*) #1

declare dso_local i32 @ocrdma_qp_state_machine(%struct.ocrdma_qp*, i32, i32*) #1

declare dso_local i32 @is_hw_rq_empty(%struct.ocrdma_qp*) #1

declare dso_local i32 @is_hw_sq_empty(%struct.ocrdma_qp*) #1

declare dso_local i32 @ocrdma_set_cqe_status_flushed(%struct.ocrdma_qp*, %struct.ocrdma_cqe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
