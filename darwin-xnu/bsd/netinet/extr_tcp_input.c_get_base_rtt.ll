; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_input.c_get_base_rtt.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_input.c_get_base_rtt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.rtentry* }
%struct.rtentry = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_base_rtt(%struct.tcpcb* %0) #0 {
  %2 = alloca %struct.tcpcb*, align 8
  %3 = alloca %struct.rtentry*, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %2, align 8
  %4 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %5 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %4, i32 0, i32 0
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load %struct.rtentry*, %struct.rtentry** %8, align 8
  store %struct.rtentry* %9, %struct.rtentry** %3, align 8
  %10 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %11 = icmp eq %struct.rtentry* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %17

13:                                               ; preds = %1
  %14 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %15 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  br label %17

17:                                               ; preds = %13, %12
  %18 = phi i32 [ 0, %12 ], [ %16, %13 ]
  ret i32 %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
