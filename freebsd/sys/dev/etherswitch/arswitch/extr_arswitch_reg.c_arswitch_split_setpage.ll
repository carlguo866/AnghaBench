; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/arswitch/extr_arswitch_reg.c_arswitch_split_setpage.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/arswitch/extr_arswitch_reg.c_arswitch_split_setpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arswitch_softc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32*, i32*)* @arswitch_split_setpage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arswitch_split_setpage(i32 %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.arswitch_softc*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.arswitch_softc* @device_get_softc(i32 %11)
  store %struct.arswitch_softc* %12, %struct.arswitch_softc** %9, align 8
  %13 = load i32, i32* %6, align 4
  %14 = ashr i32 %13, 9
  %15 = and i32 %14, 511
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %6, align 4
  %17 = ashr i32 %16, 6
  %18 = and i32 %17, 7
  %19 = load i32*, i32** %7, align 8
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* %6, align 4
  %21 = ashr i32 %20, 1
  %22 = and i32 %21, 31
  %23 = load i32*, i32** %8, align 8
  store i32 %22, i32* %23, align 4
  %24 = load %struct.arswitch_softc*, %struct.arswitch_softc** %9, align 8
  %25 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @device_get_parent(i32 %30)
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @MDIO_WRITEREG(i32 %31, i32 24, i32 0, i32 %32)
  %34 = call i32 @DELAY(i32 2000)
  %35 = load i32, i32* %10, align 4
  %36 = load %struct.arswitch_softc*, %struct.arswitch_softc** %9, align 8
  %37 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  br label %38

38:                                               ; preds = %29, %4
  ret void
}

declare dso_local %struct.arswitch_softc* @device_get_softc(i32) #1

declare dso_local i32 @MDIO_WRITEREG(i32, i32, i32, i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
