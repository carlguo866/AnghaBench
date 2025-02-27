; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/netxen/extr_netxen_nic_main.c_netxen_napi_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/netxen/extr_netxen_nic_main.c_netxen_napi_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netxen_adapter = type { i32, %struct.netxen_recv_context }
%struct.netxen_recv_context = type { %struct.nx_host_sds_ring* }
%struct.nx_host_sds_ring = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netxen_adapter*)* @netxen_napi_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netxen_napi_enable(%struct.netxen_adapter* %0) #0 {
  %2 = alloca %struct.netxen_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.nx_host_sds_ring*, align 8
  %5 = alloca %struct.netxen_recv_context*, align 8
  store %struct.netxen_adapter* %0, %struct.netxen_adapter** %2, align 8
  %6 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %6, i32 0, i32 1
  store %struct.netxen_recv_context* %7, %struct.netxen_recv_context** %5, align 8
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %26, %1
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %29

14:                                               ; preds = %8
  %15 = load %struct.netxen_recv_context*, %struct.netxen_recv_context** %5, align 8
  %16 = getelementptr inbounds %struct.netxen_recv_context, %struct.netxen_recv_context* %15, i32 0, i32 0
  %17 = load %struct.nx_host_sds_ring*, %struct.nx_host_sds_ring** %16, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.nx_host_sds_ring, %struct.nx_host_sds_ring* %17, i64 %19
  store %struct.nx_host_sds_ring* %20, %struct.nx_host_sds_ring** %4, align 8
  %21 = load %struct.nx_host_sds_ring*, %struct.nx_host_sds_ring** %4, align 8
  %22 = getelementptr inbounds %struct.nx_host_sds_ring, %struct.nx_host_sds_ring* %21, i32 0, i32 0
  %23 = call i32 @napi_enable(i32* %22)
  %24 = load %struct.nx_host_sds_ring*, %struct.nx_host_sds_ring** %4, align 8
  %25 = call i32 @netxen_nic_enable_int(%struct.nx_host_sds_ring* %24)
  br label %26

26:                                               ; preds = %14
  %27 = load i32, i32* %3, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %3, align 4
  br label %8

29:                                               ; preds = %8
  ret void
}

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @netxen_nic_enable_int(%struct.nx_host_sds_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
