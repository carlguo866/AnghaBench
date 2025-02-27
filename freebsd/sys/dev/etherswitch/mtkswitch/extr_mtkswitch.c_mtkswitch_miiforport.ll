; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/mtkswitch/extr_mtkswitch.c_mtkswitch_miiforport.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/mtkswitch/extr_mtkswitch.c_mtkswitch_miiforport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_data = type { i32 }
%struct.mtkswitch_softc = type { i32** }

@MTKSWITCH_MAX_PHYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mii_data* (%struct.mtkswitch_softc*, i32)* @mtkswitch_miiforport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mii_data* @mtkswitch_miiforport(%struct.mtkswitch_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.mii_data*, align 8
  %4 = alloca %struct.mtkswitch_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mtkswitch_softc* %0, %struct.mtkswitch_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call i32 @mtkswitch_phyforport(i32 %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %24, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @MTKSWITCH_MAX_PHYS, align 4
  %14 = icmp sge i32 %12, %13
  br i1 %14, label %24, label %15

15:                                               ; preds = %11
  %16 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %4, align 8
  %17 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %16, i32 0, i32 0
  %18 = load i32**, i32*** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32*, i32** %18, i64 %20
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %15, %11, %2
  store %struct.mii_data* null, %struct.mii_data** %3, align 8
  br label %34

25:                                               ; preds = %15
  %26 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %4, align 8
  %27 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %26, i32 0, i32 0
  %28 = load i32**, i32*** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32*, i32** %28, i64 %30
  %32 = load i32*, i32** %31, align 8
  %33 = call %struct.mii_data* @device_get_softc(i32* %32)
  store %struct.mii_data* %33, %struct.mii_data** %3, align 8
  br label %34

34:                                               ; preds = %25, %24
  %35 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  ret %struct.mii_data* %35
}

declare dso_local i32 @mtkswitch_phyforport(i32) #1

declare dso_local %struct.mii_data* @device_get_softc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
