; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_comp.c_reset_retry_counters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_comp.c_reset_retry_counters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_qp = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rxe_qp*)* @reset_retry_counters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset_retry_counters(%struct.rxe_qp* %0) #0 {
  %2 = alloca %struct.rxe_qp*, align 8
  store %struct.rxe_qp* %0, %struct.rxe_qp** %2, align 8
  %3 = load %struct.rxe_qp*, %struct.rxe_qp** %2, align 8
  %4 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.rxe_qp*, %struct.rxe_qp** %2, align 8
  %8 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 2
  store i32 %6, i32* %9, align 4
  %10 = load %struct.rxe_qp*, %struct.rxe_qp** %2, align 8
  %11 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.rxe_qp*, %struct.rxe_qp** %2, align 8
  %15 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  store i32 %13, i32* %16, align 8
  %17 = load %struct.rxe_qp*, %struct.rxe_qp** %2, align 8
  %18 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store i64 0, i64* %19, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
