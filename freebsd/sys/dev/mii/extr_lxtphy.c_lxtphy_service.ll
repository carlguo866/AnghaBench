; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_lxtphy.c_lxtphy_service.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_lxtphy.c_lxtphy_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_softc = type { i32 }
%struct.mii_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ifmedia_entry* }
%struct.ifmedia_entry = type { i32 }

@IFM_100_FX = common dso_local global i32 0, align 4
@EJUSTRETURN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_softc*, %struct.mii_data*, i32)* @lxtphy_service to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lxtphy_service(%struct.mii_softc* %0, %struct.mii_data* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mii_softc*, align 8
  %6 = alloca %struct.mii_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ifmedia_entry*, align 8
  store %struct.mii_softc* %0, %struct.mii_softc** %5, align 8
  store %struct.mii_data* %1, %struct.mii_data** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.mii_data*, %struct.mii_data** %6, align 8
  %10 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %11, align 8
  store %struct.ifmedia_entry* %12, %struct.ifmedia_entry** %8, align 8
  %13 = load i32, i32* %7, align 4
  switch i32 %13, label %38 [
    i32 129, label %14
    i32 130, label %15
    i32 128, label %31
  ]

14:                                               ; preds = %3
  br label %38

15:                                               ; preds = %3
  %16 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %8, align 8
  %17 = getelementptr inbounds %struct.ifmedia_entry, %struct.ifmedia_entry* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @IFM_SUBTYPE(i32 %18)
  %20 = load i32, i32* @IFM_100_FX, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %15
  %23 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %24 = call i32 @lxtphy_set_fx(%struct.mii_softc* %23)
  br label %28

25:                                               ; preds = %15
  %26 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %27 = call i32 @lxtphy_set_tp(%struct.mii_softc* %26)
  br label %28

28:                                               ; preds = %25, %22
  %29 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %30 = call i32 @mii_phy_setmedia(%struct.mii_softc* %29)
  br label %38

31:                                               ; preds = %3
  %32 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %33 = call i32 @mii_phy_tick(%struct.mii_softc* %32)
  %34 = load i32, i32* @EJUSTRETURN, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %44

37:                                               ; preds = %31
  br label %38

38:                                               ; preds = %3, %37, %28, %14
  %39 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %40 = call i32 @PHY_STATUS(%struct.mii_softc* %39)
  %41 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @mii_phy_update(%struct.mii_softc* %41, i32 %42)
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %38, %36
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @IFM_SUBTYPE(i32) #1

declare dso_local i32 @lxtphy_set_fx(%struct.mii_softc*) #1

declare dso_local i32 @lxtphy_set_tp(%struct.mii_softc*) #1

declare dso_local i32 @mii_phy_setmedia(%struct.mii_softc*) #1

declare dso_local i32 @mii_phy_tick(%struct.mii_softc*) #1

declare dso_local i32 @PHY_STATUS(%struct.mii_softc*) #1

declare dso_local i32 @mii_phy_update(%struct.mii_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
