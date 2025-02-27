; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/rtl8366/extr_rtl8366rb.c_rtl8366rb_ifmedia_upd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/rtl8366/extr_rtl8366rb.c_rtl8366rb_ifmedia_upd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i64, %struct.rtl8366rb_softc* }
%struct.rtl8366rb_softc = type { i32* }
%struct.mii_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*)* @rtl8366rb_ifmedia_upd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8366rb_ifmedia_upd(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  %3 = alloca %struct.rtl8366rb_softc*, align 8
  %4 = alloca %struct.mii_data*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  %5 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %6 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %5, i32 0, i32 1
  %7 = load %struct.rtl8366rb_softc*, %struct.rtl8366rb_softc** %6, align 8
  store %struct.rtl8366rb_softc* %7, %struct.rtl8366rb_softc** %3, align 8
  %8 = load %struct.rtl8366rb_softc*, %struct.rtl8366rb_softc** %3, align 8
  %9 = getelementptr inbounds %struct.rtl8366rb_softc, %struct.rtl8366rb_softc* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %12 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds i32, i32* %10, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.mii_data* @device_get_softc(i32 %15)
  store %struct.mii_data* %16, %struct.mii_data** %4, align 8
  %17 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %18 = call i32 @mii_mediachg(%struct.mii_data* %17)
  ret i32 0
}

declare dso_local %struct.mii_data* @device_get_softc(i32) #1

declare dso_local i32 @mii_mediachg(%struct.mii_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
