; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_minisocks.c_tcp_ecn_openreq_child.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_minisocks.c_tcp_ecn_openreq_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_sock = type { i32 }
%struct.request_sock = type { i32 }
%struct.TYPE_2__ = type { i64 }

@TCP_ECN_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcp_sock*, %struct.request_sock*)* @tcp_ecn_openreq_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_ecn_openreq_child(%struct.tcp_sock* %0, %struct.request_sock* %1) #0 {
  %3 = alloca %struct.tcp_sock*, align 8
  %4 = alloca %struct.request_sock*, align 8
  store %struct.tcp_sock* %0, %struct.tcp_sock** %3, align 8
  store %struct.request_sock* %1, %struct.request_sock** %4, align 8
  %5 = load %struct.request_sock*, %struct.request_sock** %4, align 8
  %6 = call %struct.TYPE_2__* @inet_rsk(%struct.request_sock* %5)
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @TCP_ECN_OK, align 4
  br label %13

12:                                               ; preds = %2
  br label %13

13:                                               ; preds = %12, %10
  %14 = phi i32 [ %11, %10 ], [ 0, %12 ]
  %15 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %16 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  ret void
}

declare dso_local %struct.TYPE_2__* @inet_rsk(%struct.request_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
