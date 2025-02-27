; ModuleID = '/home/carl/AnghaBench/linux/net/llc/extr_llc_c_ev.c_llc_conn_ev_rst_req.c'
source_filename = "/home/carl/AnghaBench/linux/net/llc/extr_llc_c_ev.c_llc_conn_ev_rst_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.llc_conn_state_ev = type { i64, i64 }

@LLC_RESET_PRIM = common dso_local global i64 0, align 8
@LLC_PRIM_TYPE_REQ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @llc_conn_ev_rst_req(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.llc_conn_state_ev*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %7 = call %struct.llc_conn_state_ev* @llc_conn_ev(%struct.sk_buff* %6)
  store %struct.llc_conn_state_ev* %7, %struct.llc_conn_state_ev** %5, align 8
  %8 = load %struct.llc_conn_state_ev*, %struct.llc_conn_state_ev** %5, align 8
  %9 = getelementptr inbounds %struct.llc_conn_state_ev, %struct.llc_conn_state_ev* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @LLC_RESET_PRIM, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.llc_conn_state_ev*, %struct.llc_conn_state_ev** %5, align 8
  %15 = getelementptr inbounds %struct.llc_conn_state_ev, %struct.llc_conn_state_ev* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @LLC_PRIM_TYPE_REQ, align 8
  %18 = icmp eq i64 %16, %17
  br label %19

19:                                               ; preds = %13, %2
  %20 = phi i1 [ false, %2 ], [ %18, %13 ]
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 0, i32 1
  ret i32 %22
}

declare dso_local %struct.llc_conn_state_ev* @llc_conn_ev(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
