; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_proto_tcp.c_tcp_state_idx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_proto_tcp.c_tcp_state_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcphdr = type { i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcphdr*)* @tcp_state_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_state_idx(%struct.tcphdr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tcphdr*, align 8
  store %struct.tcphdr* %0, %struct.tcphdr** %3, align 8
  %4 = load %struct.tcphdr*, %struct.tcphdr** %3, align 8
  %5 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %4, i32 0, i32 3
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 3, i32* %2, align 4
  br label %28

9:                                                ; preds = %1
  %10 = load %struct.tcphdr*, %struct.tcphdr** %3, align 8
  %11 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %28

15:                                               ; preds = %9
  %16 = load %struct.tcphdr*, %struct.tcphdr** %3, align 8
  %17 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 1, i32* %2, align 4
  br label %28

21:                                               ; preds = %15
  %22 = load %struct.tcphdr*, %struct.tcphdr** %3, align 8
  %23 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 2, i32* %2, align 4
  br label %28

27:                                               ; preds = %21
  store i32 -1, i32* %2, align 4
  br label %28

28:                                               ; preds = %27, %26, %20, %14, %8
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
