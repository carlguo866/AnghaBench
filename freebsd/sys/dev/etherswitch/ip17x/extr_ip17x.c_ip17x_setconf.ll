; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/ip17x/extr_ip17x.c_ip17x_setconf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/ip17x/extr_ip17x.c_ip17x_setconf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.ip17x_softc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.ip17x_softc.0*, i32)* }
%struct.ip17x_softc.0 = type opaque

@ETHERSWITCH_CONF_VLAN_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_5__*)* @ip17x_setconf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip17x_setconf(i32 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.ip17x_softc*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.ip17x_softc* @device_get_softc(i32 %6)
  store %struct.ip17x_softc* %7, %struct.ip17x_softc** %5, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @ETHERSWITCH_CONF_VLAN_MODE, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %2
  %15 = load %struct.ip17x_softc*, %struct.ip17x_softc** %5, align 8
  %16 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32 (%struct.ip17x_softc.0*, i32)*, i32 (%struct.ip17x_softc.0*, i32)** %17, align 8
  %19 = load %struct.ip17x_softc*, %struct.ip17x_softc** %5, align 8
  %20 = bitcast %struct.ip17x_softc* %19 to %struct.ip17x_softc.0*
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 %18(%struct.ip17x_softc.0* %20, i32 %23)
  br label %25

25:                                               ; preds = %14, %2
  ret i32 0
}

declare dso_local %struct.ip17x_softc* @device_get_softc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
