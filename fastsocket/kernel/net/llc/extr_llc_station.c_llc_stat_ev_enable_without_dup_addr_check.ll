; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/llc/extr_llc_station.c_llc_stat_ev_enable_without_dup_addr_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/llc/extr_llc_station.c_llc_stat_ev_enable_without_dup_addr_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.llc_station_state_ev = type { i64, i64 }

@LLC_STATION_EV_TYPE_SIMPLE = common dso_local global i64 0, align 8
@LLC_STATION_EV_ENABLE_WITHOUT_DUP_ADDR_CHECK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @llc_stat_ev_enable_without_dup_addr_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @llc_stat_ev_enable_without_dup_addr_check(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.llc_station_state_ev*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %4 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %5 = call %struct.llc_station_state_ev* @llc_station_ev(%struct.sk_buff* %4)
  store %struct.llc_station_state_ev* %5, %struct.llc_station_state_ev** %3, align 8
  %6 = load %struct.llc_station_state_ev*, %struct.llc_station_state_ev** %3, align 8
  %7 = getelementptr inbounds %struct.llc_station_state_ev, %struct.llc_station_state_ev* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @LLC_STATION_EV_TYPE_SIMPLE, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.llc_station_state_ev*, %struct.llc_station_state_ev** %3, align 8
  %13 = getelementptr inbounds %struct.llc_station_state_ev, %struct.llc_station_state_ev* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @LLC_STATION_EV_ENABLE_WITHOUT_DUP_ADDR_CHECK, align 8
  %16 = icmp eq i64 %14, %15
  br label %17

17:                                               ; preds = %11, %1
  %18 = phi i1 [ false, %1 ], [ %16, %11 ]
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 0, i32 1
  ret i32 %20
}

declare dso_local %struct.llc_station_state_ev* @llc_station_ev(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
