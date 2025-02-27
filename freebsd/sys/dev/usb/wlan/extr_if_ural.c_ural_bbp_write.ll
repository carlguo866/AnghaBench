; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_ural.c_ural_bbp_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_ural.c_ural_bbp_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ural_softc = type { i32 }

@RAL_PHY_CSR8 = common dso_local global i32 0, align 4
@RAL_BBP_BUSY = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"could not write to BBP\0A\00", align 1
@RAL_PHY_CSR7 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ural_softc*, i32, i32)* @ural_bbp_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ural_bbp_write(%struct.ural_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ural_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ural_softc* %0, %struct.ural_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %28, %3
  %10 = load i32, i32* %8, align 4
  %11 = icmp slt i32 %10, 100
  br i1 %11, label %12, label %31

12:                                               ; preds = %9
  %13 = load %struct.ural_softc*, %struct.ural_softc** %4, align 8
  %14 = load i32, i32* @RAL_PHY_CSR8, align 4
  %15 = call i32 @ural_read(%struct.ural_softc* %13, i32 %14)
  %16 = load i32, i32* @RAL_BBP_BUSY, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %12
  br label %31

20:                                               ; preds = %12
  %21 = load %struct.ural_softc*, %struct.ural_softc** %4, align 8
  %22 = load i32, i32* @hz, align 4
  %23 = sdiv i32 %22, 100
  %24 = call i64 @ural_pause(%struct.ural_softc* %21, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %31

27:                                               ; preds = %20
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %8, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %8, align 4
  br label %9

31:                                               ; preds = %26, %19, %9
  %32 = load i32, i32* %8, align 4
  %33 = icmp eq i32 %32, 100
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load %struct.ural_softc*, %struct.ural_softc** %4, align 8
  %36 = getelementptr inbounds %struct.ural_softc, %struct.ural_softc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @device_printf(i32 %37, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %48

39:                                               ; preds = %31
  %40 = load i32, i32* %5, align 4
  %41 = shl i32 %40, 8
  %42 = load i32, i32* %6, align 4
  %43 = or i32 %41, %42
  store i32 %43, i32* %7, align 4
  %44 = load %struct.ural_softc*, %struct.ural_softc** %4, align 8
  %45 = load i32, i32* @RAL_PHY_CSR7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @ural_write(%struct.ural_softc* %44, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %39, %34
  ret void
}

declare dso_local i32 @ural_read(%struct.ural_softc*, i32) #1

declare dso_local i64 @ural_pause(%struct.ural_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @ural_write(%struct.ural_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
