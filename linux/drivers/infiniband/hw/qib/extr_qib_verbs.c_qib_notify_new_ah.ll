; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_verbs.c_qib_notify_new_ah.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_verbs.c_qib_notify_new_ah.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.rdma_ah_attr = type { i32 }
%struct.rvt_ah = type { i32, i32, i32 }
%struct.qib_ibport = type { i32* }
%struct.qib_pportdata = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_device*, %struct.rdma_ah_attr*, %struct.rvt_ah*)* @qib_notify_new_ah to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qib_notify_new_ah(%struct.ib_device* %0, %struct.rdma_ah_attr* %1, %struct.rvt_ah* %2) #0 {
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca %struct.rdma_ah_attr*, align 8
  %6 = alloca %struct.rvt_ah*, align 8
  %7 = alloca %struct.qib_ibport*, align 8
  %8 = alloca %struct.qib_pportdata*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %4, align 8
  store %struct.rdma_ah_attr* %1, %struct.rdma_ah_attr** %5, align 8
  store %struct.rvt_ah* %2, %struct.rvt_ah** %6, align 8
  %9 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %10 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %5, align 8
  %11 = call i32 @rdma_ah_get_port_num(%struct.rdma_ah_attr* %10)
  %12 = call %struct.qib_ibport* @to_iport(%struct.ib_device* %9, i32 %11)
  store %struct.qib_ibport* %12, %struct.qib_ibport** %7, align 8
  %13 = load %struct.qib_ibport*, %struct.qib_ibport** %7, align 8
  %14 = call %struct.qib_pportdata* @ppd_from_ibp(%struct.qib_ibport* %13)
  store %struct.qib_pportdata* %14, %struct.qib_pportdata** %8, align 8
  %15 = load %struct.qib_ibport*, %struct.qib_ibport** %7, align 8
  %16 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load %struct.rvt_ah*, %struct.rvt_ah** %6, align 8
  %19 = getelementptr inbounds %struct.rvt_ah, %struct.rvt_ah* %18, i32 0, i32 1
  %20 = call i64 @rdma_ah_get_sl(i32* %19)
  %21 = getelementptr inbounds i32, i32* %17, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.rvt_ah*, %struct.rvt_ah** %6, align 8
  %24 = getelementptr inbounds %struct.rvt_ah, %struct.rvt_ah* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = load %struct.qib_pportdata*, %struct.qib_pportdata** %8, align 8
  %26 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ilog2(i32 %27)
  %29 = load %struct.rvt_ah*, %struct.rvt_ah** %6, align 8
  %30 = getelementptr inbounds %struct.rvt_ah, %struct.rvt_ah* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  ret void
}

declare dso_local %struct.qib_ibport* @to_iport(%struct.ib_device*, i32) #1

declare dso_local i32 @rdma_ah_get_port_num(%struct.rdma_ah_attr*) #1

declare dso_local %struct.qib_pportdata* @ppd_from_ibp(%struct.qib_ibport*) #1

declare dso_local i64 @rdma_ah_get_sl(i32*) #1

declare dso_local i32 @ilog2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
