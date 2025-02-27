; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_conn.c_ip_vs_conn_put.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_conn.c_ip_vs_conn_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_conn = type { i32, i32, i32 }

@IP_VS_CONN_F_ONE_PACKET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ip_vs_conn_put(%struct.ip_vs_conn* %0) #0 {
  %2 = alloca %struct.ip_vs_conn*, align 8
  store %struct.ip_vs_conn* %0, %struct.ip_vs_conn** %2, align 8
  %3 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %2, align 8
  %4 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @IP_VS_CONN_F_ONE_PACKET, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %23

9:                                                ; preds = %1
  %10 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %2, align 8
  %11 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %10, i32 0, i32 2
  %12 = call i32 @refcount_read(i32* %11)
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %23

14:                                               ; preds = %9
  %15 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %2, align 8
  %16 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %15, i32 0, i32 1
  %17 = call i32 @timer_pending(i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %2, align 8
  %21 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %20, i32 0, i32 1
  %22 = call i32 @ip_vs_conn_expire(i32* %21)
  br label %26

23:                                               ; preds = %14, %9, %1
  %24 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %2, align 8
  %25 = call i32 @__ip_vs_conn_put_timer(%struct.ip_vs_conn* %24)
  br label %26

26:                                               ; preds = %23, %19
  ret void
}

declare dso_local i32 @refcount_read(i32*) #1

declare dso_local i32 @timer_pending(i32*) #1

declare dso_local i32 @ip_vs_conn_expire(i32*) #1

declare dso_local i32 @__ip_vs_conn_put_timer(%struct.ip_vs_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
