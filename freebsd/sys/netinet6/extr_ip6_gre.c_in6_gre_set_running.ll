; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_ip6_gre.c_in6_gre_set_running.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_ip6_gre.c_in6_gre_set_running.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gre_softc = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gre_softc*)* @in6_gre_set_running to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @in6_gre_set_running(%struct.gre_softc* %0) #0 {
  %2 = alloca %struct.gre_softc*, align 8
  store %struct.gre_softc* %0, %struct.gre_softc** %2, align 8
  %3 = load %struct.gre_softc*, %struct.gre_softc** %2, align 8
  %4 = getelementptr inbounds %struct.gre_softc, %struct.gre_softc* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = call i64 @in6_localip(i32* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %10 = load %struct.gre_softc*, %struct.gre_softc** %2, align 8
  %11 = call %struct.TYPE_4__* @GRE2IFP(%struct.gre_softc* %10)
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = or i32 %13, %9
  store i32 %14, i32* %12, align 4
  br label %23

15:                                               ; preds = %1
  %16 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %17 = xor i32 %16, -1
  %18 = load %struct.gre_softc*, %struct.gre_softc** %2, align 8
  %19 = call %struct.TYPE_4__* @GRE2IFP(%struct.gre_softc* %18)
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, %17
  store i32 %22, i32* %20, align 4
  br label %23

23:                                               ; preds = %15, %8
  ret void
}

declare dso_local i64 @in6_localip(i32*) #1

declare dso_local %struct.TYPE_4__* @GRE2IFP(%struct.gre_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
