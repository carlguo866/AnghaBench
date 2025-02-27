; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_e82545.c_e82545_itr_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_e82545.c_e82545_itr_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e82545_softc = type { i32, i32, i32, i32, i32*, i32 }

@.str = private unnamed_addr constant [32 x i8] c"itr callback: lintr assert %x\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*)* @e82545_itr_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e82545_itr_callback(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.e82545_softc*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.e82545_softc*
  store %struct.e82545_softc* %10, %struct.e82545_softc** %8, align 8
  %11 = load %struct.e82545_softc*, %struct.e82545_softc** %8, align 8
  %12 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %11, i32 0, i32 3
  %13 = call i32 @pthread_mutex_lock(i32* %12)
  %14 = load %struct.e82545_softc*, %struct.e82545_softc** %8, align 8
  %15 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.e82545_softc*, %struct.e82545_softc** %8, align 8
  %18 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %16, %19
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %3
  %24 = load %struct.e82545_softc*, %struct.e82545_softc** %8, align 8
  %25 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %37, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @DPRINTF(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load %struct.e82545_softc*, %struct.e82545_softc** %8, align 8
  %32 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %31, i32 0, i32 2
  store i32 1, i32* %32, align 8
  %33 = load %struct.e82545_softc*, %struct.e82545_softc** %8, align 8
  %34 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @pci_lintr_assert(i32 %35)
  br label %44

37:                                               ; preds = %23, %3
  %38 = load %struct.e82545_softc*, %struct.e82545_softc** %8, align 8
  %39 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %38, i32 0, i32 4
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @mevent_delete(i32* %40)
  %42 = load %struct.e82545_softc*, %struct.e82545_softc** %8, align 8
  %43 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %42, i32 0, i32 4
  store i32* null, i32** %43, align 8
  br label %44

44:                                               ; preds = %37, %28
  %45 = load %struct.e82545_softc*, %struct.e82545_softc** %8, align 8
  %46 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %45, i32 0, i32 3
  %47 = call i32 @pthread_mutex_unlock(i32* %46)
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @DPRINTF(i8*, i32) #1

declare dso_local i32 @pci_lintr_assert(i32) #1

declare dso_local i32 @mevent_delete(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
