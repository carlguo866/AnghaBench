; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/chipc/extr_chipc.c_chipc_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/chipc/extr_chipc.c_chipc_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chipc_softc = type { i32 }

@BHND_SERVICE_ANY = common dso_local global i32 0, align 4
@RF_ALLOCATED = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @chipc_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chipc_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.chipc_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.chipc_softc* @device_get_softc(i32 %6)
  store %struct.chipc_softc* %7, %struct.chipc_softc** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @bus_generic_detach(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %2, align 4
  br label %39

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @device_delete_children(i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %2, align 4
  br label %39

19:                                               ; preds = %13
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @BHND_SERVICE_ANY, align 4
  %22 = call i32 @bhnd_deregister_provider(i32 %20, i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %5, align 4
  store i32 %25, i32* %2, align 4
  br label %39

26:                                               ; preds = %19
  %27 = load %struct.chipc_softc*, %struct.chipc_softc** %4, align 8
  %28 = load %struct.chipc_softc*, %struct.chipc_softc** %4, align 8
  %29 = getelementptr inbounds %struct.chipc_softc, %struct.chipc_softc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @RF_ALLOCATED, align 4
  %32 = load i32, i32* @RF_ACTIVE, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @chipc_release_region(%struct.chipc_softc* %27, i32 %30, i32 %33)
  %35 = load %struct.chipc_softc*, %struct.chipc_softc** %4, align 8
  %36 = call i32 @chipc_free_rman(%struct.chipc_softc* %35)
  %37 = load %struct.chipc_softc*, %struct.chipc_softc** %4, align 8
  %38 = call i32 @CHIPC_LOCK_DESTROY(%struct.chipc_softc* %37)
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %26, %24, %17, %11
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local %struct.chipc_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_generic_detach(i32) #1

declare dso_local i32 @device_delete_children(i32) #1

declare dso_local i32 @bhnd_deregister_provider(i32, i32) #1

declare dso_local i32 @chipc_release_region(%struct.chipc_softc*, i32, i32) #1

declare dso_local i32 @chipc_free_rman(%struct.chipc_softc*) #1

declare dso_local i32 @CHIPC_LOCK_DESTROY(%struct.chipc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
