; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_sync.c_in_persistence.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_sync.c_in_persistence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_conn = type { i32, %struct.ip_vs_conn* }

@IP_VS_CONN_F_TEMPLATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_vs_conn*)* @in_persistence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @in_persistence(%struct.ip_vs_conn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ip_vs_conn*, align 8
  store %struct.ip_vs_conn* %0, %struct.ip_vs_conn** %3, align 8
  %4 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %5 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %4, i32 0, i32 1
  %6 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %5, align 8
  store %struct.ip_vs_conn* %6, %struct.ip_vs_conn** %3, align 8
  br label %7

7:                                                ; preds = %19, %1
  %8 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %9 = icmp ne %struct.ip_vs_conn* %8, null
  br i1 %9, label %10, label %23

10:                                               ; preds = %7
  %11 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %12 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @IP_VS_CONN_F_TEMPLATE, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  store i32 1, i32* %2, align 4
  br label %24

18:                                               ; preds = %10
  br label %19

19:                                               ; preds = %18
  %20 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %21 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %20, i32 0, i32 1
  %22 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %21, align 8
  store %struct.ip_vs_conn* %22, %struct.ip_vs_conn** %3, align 8
  br label %7

23:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %23, %17
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
