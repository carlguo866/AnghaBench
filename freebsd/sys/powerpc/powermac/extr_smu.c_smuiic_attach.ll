; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_smu.c_smuiic_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_smu.c_smuiic_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smuiic_softc = type { i32, i64, i32 }

@.str = private unnamed_addr constant [7 x i8] c"smuiic\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"iicbus\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @smuiic_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smuiic_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smuiic_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.smuiic_softc* @device_get_softc(i32 %4)
  store %struct.smuiic_softc* %5, %struct.smuiic_softc** %3, align 8
  %6 = load %struct.smuiic_softc*, %struct.smuiic_softc** %3, align 8
  %7 = getelementptr inbounds %struct.smuiic_softc, %struct.smuiic_softc* %6, i32 0, i32 2
  %8 = load i32, i32* @MTX_DEF, align 4
  %9 = call i32 @mtx_init(i32* %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* null, i32 %8)
  %10 = load %struct.smuiic_softc*, %struct.smuiic_softc** %3, align 8
  %11 = getelementptr inbounds %struct.smuiic_softc, %struct.smuiic_softc* %10, i32 0, i32 1
  store i64 0, i64* %11, align 8
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @ofw_bus_get_node(i32 %12)
  %14 = load %struct.smuiic_softc*, %struct.smuiic_softc** %3, align 8
  %15 = getelementptr inbounds %struct.smuiic_softc, %struct.smuiic_softc* %14, i32 0, i32 0
  %16 = call i32 @OF_getprop(i32 %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* %15, i32 4)
  %17 = load i32, i32* %2, align 4
  %18 = call i32 @device_add_child(i32 %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 -1)
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @bus_generic_attach(i32 %19)
  ret i32 %20
}

declare dso_local %struct.smuiic_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @OF_getprop(i32, i8*, i32*, i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32 @device_add_child(i32, i8*, i32) #1

declare dso_local i32 @bus_generic_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
