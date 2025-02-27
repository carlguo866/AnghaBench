; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_epair.c_epair_transmit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_epair.c_epair_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.mbuf = type { i32 }
%struct.epair_dpcpu = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, %struct.mbuf*)* @epair_transmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @epair_transmit(%struct.ifnet* %0, %struct.mbuf* %1) #0 {
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca %struct.epair_dpcpu*, align 8
  %6 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  store %struct.mbuf* %1, %struct.mbuf** %4, align 8
  %7 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %8 = call i32 @cpuid_from_ifp(%struct.ifnet* %7)
  %9 = load %struct.epair_dpcpu*, %struct.epair_dpcpu** %5, align 8
  %10 = call %struct.epair_dpcpu* @DPCPU_ID_PTR(i32 %8, %struct.epair_dpcpu* %9)
  store %struct.epair_dpcpu* %10, %struct.epair_dpcpu** %5, align 8
  %11 = load %struct.epair_dpcpu*, %struct.epair_dpcpu** %5, align 8
  %12 = call i32 @EPAIR_LOCK(%struct.epair_dpcpu* %11)
  %13 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %14 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %15 = call i32 @epair_transmit_locked(%struct.ifnet* %13, %struct.mbuf* %14)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.epair_dpcpu*, %struct.epair_dpcpu** %5, align 8
  %17 = call i32 @EPAIR_UNLOCK(%struct.epair_dpcpu* %16)
  %18 = load i32, i32* %6, align 4
  ret i32 %18
}

declare dso_local %struct.epair_dpcpu* @DPCPU_ID_PTR(i32, %struct.epair_dpcpu*) #1

declare dso_local i32 @cpuid_from_ifp(%struct.ifnet*) #1

declare dso_local i32 @EPAIR_LOCK(%struct.epair_dpcpu*) #1

declare dso_local i32 @epair_transmit_locked(%struct.ifnet*, %struct.mbuf*) #1

declare dso_local i32 @EPAIR_UNLOCK(%struct.epair_dpcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
