; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp_subr.c_mptcp_conn_properties.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp_subr.c_mptcp_conn_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mptcb = type { i32, i32, i32, i32 }

@MPTCP_STD_VERSION_0 = common dso_local global i32 0, align 4
@mptcp_dss_csum = common dso_local global i64 0, align 8
@MPTCPF_CHECKSUM = common dso_local global i32 0, align 4
@MPT_GC_TICKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mptcb*)* @mptcp_conn_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mptcp_conn_properties(%struct.mptcb* %0) #0 {
  %2 = alloca %struct.mptcb*, align 8
  store %struct.mptcb* %0, %struct.mptcb** %2, align 8
  %3 = load i32, i32* @MPTCP_STD_VERSION_0, align 4
  %4 = load %struct.mptcb*, %struct.mptcb** %2, align 8
  %5 = getelementptr inbounds %struct.mptcb, %struct.mptcb* %4, i32 0, i32 3
  store i32 %3, i32* %5, align 4
  %6 = load i64, i64* @mptcp_dss_csum, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load i32, i32* @MPTCPF_CHECKSUM, align 4
  %10 = load %struct.mptcb*, %struct.mptcb** %2, align 8
  %11 = getelementptr inbounds %struct.mptcb, %struct.mptcb* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = or i32 %12, %9
  store i32 %13, i32* %11, align 4
  br label %14

14:                                               ; preds = %8, %1
  %15 = load %struct.mptcb*, %struct.mptcb** %2, align 8
  %16 = call i32 @mptcp_sbspace(%struct.mptcb* %15)
  %17 = load %struct.mptcb*, %struct.mptcb** %2, align 8
  %18 = getelementptr inbounds %struct.mptcb, %struct.mptcb* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @MPT_GC_TICKS, align 4
  %20 = load %struct.mptcb*, %struct.mptcb** %2, align 8
  %21 = getelementptr inbounds %struct.mptcb, %struct.mptcb* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  ret void
}

declare dso_local i32 @mptcp_sbspace(%struct.mptcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
