; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/mtkswitch/extr_mtkswitch.c_mtkswitch_ifpforport.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/mtkswitch/extr_mtkswitch.c_mtkswitch_ifpforport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.mtkswitch_softc = type { %struct.ifnet** }

@MTKSWITCH_MAX_PHYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ifnet* (%struct.mtkswitch_softc*, i32)* @mtkswitch_ifpforport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ifnet* @mtkswitch_ifpforport(%struct.mtkswitch_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.ifnet*, align 8
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
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @MTKSWITCH_MAX_PHYS, align 4
  %14 = icmp sge i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %11, %2
  store %struct.ifnet* null, %struct.ifnet** %3, align 8
  br label %24

16:                                               ; preds = %11
  %17 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %4, align 8
  %18 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %17, i32 0, i32 0
  %19 = load %struct.ifnet**, %struct.ifnet*** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.ifnet*, %struct.ifnet** %19, i64 %21
  %23 = load %struct.ifnet*, %struct.ifnet** %22, align 8
  store %struct.ifnet* %23, %struct.ifnet** %3, align 8
  br label %24

24:                                               ; preds = %16, %15
  %25 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  ret %struct.ifnet* %25
}

declare dso_local i32 @mtkswitch_phyforport(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
