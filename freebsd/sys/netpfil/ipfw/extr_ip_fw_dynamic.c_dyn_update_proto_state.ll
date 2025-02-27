; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_dynamic.c_dyn_update_proto_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_dynamic.c_dyn_update_proto_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dyn_data = type { i64 }
%struct.ipfw_flow_id = type { i32 }

@time_uptime = common dso_local global i64 0, align 8
@V_dyn_udp_lifetime = common dso_local global i64 0, align 8
@V_dyn_short_lifetime = common dso_local global i64 0, align 8
@MATCH_FORWARD = common dso_local global i32 0, align 4
@fwd = common dso_local global i32 0, align 4
@rev = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dyn_data*, %struct.ipfw_flow_id*, i8*, i32, i32)* @dyn_update_proto_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dyn_update_proto_state(%struct.dyn_data* %0, %struct.ipfw_flow_id* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.dyn_data*, align 8
  %7 = alloca %struct.ipfw_flow_id*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.dyn_data* %0, %struct.dyn_data** %6, align 8
  store %struct.ipfw_flow_id* %1, %struct.ipfw_flow_id** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %7, align 8
  %13 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %25 [
    i32 129, label %15
    i32 128, label %15
    i32 130, label %19
  ]

15:                                               ; preds = %5, %5
  %16 = load i64, i64* @time_uptime, align 8
  %17 = load i64, i64* @V_dyn_udp_lifetime, align 8
  %18 = add nsw i64 %16, %17
  store i64 %18, i64* %11, align 8
  br label %29

19:                                               ; preds = %5
  %20 = load %struct.dyn_data*, %struct.dyn_data** %6, align 8
  %21 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %7, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = load i32, i32* %10, align 4
  %24 = call i64 @dyn_update_tcp_state(%struct.dyn_data* %20, %struct.ipfw_flow_id* %21, i8* %22, i32 %23)
  store i64 %24, i64* %11, align 8
  br label %29

25:                                               ; preds = %5
  %26 = load i64, i64* @time_uptime, align 8
  %27 = load i64, i64* @V_dyn_short_lifetime, align 8
  %28 = add nsw i64 %26, %27
  store i64 %28, i64* %11, align 8
  br label %29

29:                                               ; preds = %25, %19, %15
  %30 = load %struct.dyn_data*, %struct.dyn_data** %6, align 8
  %31 = getelementptr inbounds %struct.dyn_data, %struct.dyn_data* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %11, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %29
  %36 = load %struct.dyn_data*, %struct.dyn_data** %6, align 8
  %37 = getelementptr inbounds %struct.dyn_data, %struct.dyn_data* %36, i32 0, i32 0
  %38 = load i64, i64* %11, align 8
  %39 = call i32 @ck_pr_store_32(i64* %37, i64 %38)
  br label %40

40:                                               ; preds = %35, %29
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @MATCH_FORWARD, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = load %struct.dyn_data*, %struct.dyn_data** %6, align 8
  %46 = load i32, i32* @fwd, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @DYN_COUNTER_INC(%struct.dyn_data* %45, i32 %46, i32 %47)
  br label %54

49:                                               ; preds = %40
  %50 = load %struct.dyn_data*, %struct.dyn_data** %6, align 8
  %51 = load i32, i32* @rev, align 4
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @DYN_COUNTER_INC(%struct.dyn_data* %50, i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %49, %44
  ret void
}

declare dso_local i64 @dyn_update_tcp_state(%struct.dyn_data*, %struct.ipfw_flow_id*, i8*, i32) #1

declare dso_local i32 @ck_pr_store_32(i64*, i64) #1

declare dso_local i32 @DYN_COUNTER_INC(%struct.dyn_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
