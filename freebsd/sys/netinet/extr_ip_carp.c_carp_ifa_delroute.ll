; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_ip_carp.c_carp_ifa_delroute.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_ip_carp.c_carp_ifa_delroute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifaddr = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@LLE_STATIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifaddr*)* @carp_ifa_delroute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @carp_ifa_delroute(%struct.ifaddr* %0) #0 {
  %2 = alloca %struct.ifaddr*, align 8
  store %struct.ifaddr* %0, %struct.ifaddr** %2, align 8
  %3 = load %struct.ifaddr*, %struct.ifaddr** %2, align 8
  %4 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %3, i32 0, i32 0
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %8 [
  ]

8:                                                ; preds = %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
