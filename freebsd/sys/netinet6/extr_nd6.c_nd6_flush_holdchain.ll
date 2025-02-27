; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_nd6.c_nd6_flush_holdchain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_nd6.c_nd6_flush_holdchain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.mbuf = type { %struct.mbuf* }
%struct.sockaddr_in6 = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nd6_flush_holdchain(%struct.ifnet* %0, %struct.mbuf* %1, %struct.sockaddr_in6* %2) #0 {
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.sockaddr_in6*, align 8
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca %struct.mbuf*, align 8
  %9 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store %struct.mbuf* %1, %struct.mbuf** %5, align 8
  store %struct.sockaddr_in6* %2, %struct.sockaddr_in6** %6, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  store %struct.mbuf* %10, %struct.mbuf** %8, align 8
  br label %11

11:                                               ; preds = %14, %3
  %12 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %13 = icmp ne %struct.mbuf* %12, null
  br i1 %13, label %14, label %24

14:                                               ; preds = %11
  %15 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  store %struct.mbuf* %15, %struct.mbuf** %7, align 8
  %16 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %17 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %16, i32 0, i32 0
  %18 = load %struct.mbuf*, %struct.mbuf** %17, align 8
  store %struct.mbuf* %18, %struct.mbuf** %8, align 8
  %19 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %20 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %21 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %22 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %6, align 8
  %23 = call i32 @nd6_output_ifp(%struct.ifnet* %19, %struct.ifnet* %20, %struct.mbuf* %21, %struct.sockaddr_in6* %22, i32* null)
  store i32 %23, i32* %9, align 4
  br label %11

24:                                               ; preds = %11
  %25 = load i32, i32* %9, align 4
  ret i32 %25
}

declare dso_local i32 @nd6_output_ifp(%struct.ifnet*, %struct.ifnet*, %struct.mbuf*, %struct.sockaddr_in6*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
