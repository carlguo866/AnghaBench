; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/infineon/extr_adm6996fc.c_adm6996fc_getconf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/infineon/extr_adm6996fc.c_adm6996fc_getconf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.adm6996fc_softc = type { i32 }

@ETHERSWITCH_CONF_VLAN_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_3__*)* @adm6996fc_getconf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adm6996fc_getconf(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.adm6996fc_softc*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.adm6996fc_softc* @device_get_softc(i32 %6)
  store %struct.adm6996fc_softc* %7, %struct.adm6996fc_softc** %5, align 8
  %8 = load i32, i32* @ETHERSWITCH_CONF_VLAN_MODE, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  store i32 %8, i32* %10, align 4
  %11 = load %struct.adm6996fc_softc*, %struct.adm6996fc_softc** %5, align 8
  %12 = getelementptr inbounds %struct.adm6996fc_softc, %struct.adm6996fc_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  ret i32 0
}

declare dso_local %struct.adm6996fc_softc* @device_get_softc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
