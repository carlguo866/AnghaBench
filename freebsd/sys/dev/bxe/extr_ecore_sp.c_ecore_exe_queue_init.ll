; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_exe_queue_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_exe_queue_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }
%struct.ecore_exe_queue_obj = type { i32, i32, i32, i32, i32, i32, %union.ecore_qable_obj*, i32, i32, i32 }
%union.ecore_qable_obj = type { i32 }

@.str = private unnamed_addr constant [55 x i8] c"Setup the execution queue with the chunk length of %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*, %struct.ecore_exe_queue_obj*, i32, %union.ecore_qable_obj*, i32, i32, i32, i32, i32)* @ecore_exe_queue_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_exe_queue_init(%struct.bxe_softc* %0, %struct.ecore_exe_queue_obj* %1, i32 %2, %union.ecore_qable_obj* %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.bxe_softc*, align 8
  %11 = alloca %struct.ecore_exe_queue_obj*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %union.ecore_qable_obj*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %10, align 8
  store %struct.ecore_exe_queue_obj* %1, %struct.ecore_exe_queue_obj** %11, align 8
  store i32 %2, i32* %12, align 4
  store %union.ecore_qable_obj* %3, %union.ecore_qable_obj** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %19 = load %struct.ecore_exe_queue_obj*, %struct.ecore_exe_queue_obj** %11, align 8
  %20 = call i32 @ECORE_MEMSET(%struct.ecore_exe_queue_obj* %19, i32 0, i32 48)
  %21 = load %struct.ecore_exe_queue_obj*, %struct.ecore_exe_queue_obj** %11, align 8
  %22 = getelementptr inbounds %struct.ecore_exe_queue_obj, %struct.ecore_exe_queue_obj* %21, i32 0, i32 9
  %23 = call i32 @ECORE_LIST_INIT(i32* %22)
  %24 = load %struct.ecore_exe_queue_obj*, %struct.ecore_exe_queue_obj** %11, align 8
  %25 = getelementptr inbounds %struct.ecore_exe_queue_obj, %struct.ecore_exe_queue_obj* %24, i32 0, i32 8
  %26 = call i32 @ECORE_LIST_INIT(i32* %25)
  %27 = load %struct.ecore_exe_queue_obj*, %struct.ecore_exe_queue_obj** %11, align 8
  %28 = getelementptr inbounds %struct.ecore_exe_queue_obj, %struct.ecore_exe_queue_obj* %27, i32 0, i32 7
  %29 = load %struct.bxe_softc*, %struct.bxe_softc** %10, align 8
  %30 = call i32 @ECORE_SPIN_LOCK_INIT(i32* %28, %struct.bxe_softc* %29)
  %31 = load i32, i32* %12, align 4
  %32 = load %struct.ecore_exe_queue_obj*, %struct.ecore_exe_queue_obj** %11, align 8
  %33 = getelementptr inbounds %struct.ecore_exe_queue_obj, %struct.ecore_exe_queue_obj* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %union.ecore_qable_obj*, %union.ecore_qable_obj** %13, align 8
  %35 = load %struct.ecore_exe_queue_obj*, %struct.ecore_exe_queue_obj** %11, align 8
  %36 = getelementptr inbounds %struct.ecore_exe_queue_obj, %struct.ecore_exe_queue_obj* %35, i32 0, i32 6
  store %union.ecore_qable_obj* %34, %union.ecore_qable_obj** %36, align 8
  %37 = load i32, i32* %14, align 4
  %38 = load %struct.ecore_exe_queue_obj*, %struct.ecore_exe_queue_obj** %11, align 8
  %39 = getelementptr inbounds %struct.ecore_exe_queue_obj, %struct.ecore_exe_queue_obj* %38, i32 0, i32 5
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* %15, align 4
  %41 = load %struct.ecore_exe_queue_obj*, %struct.ecore_exe_queue_obj** %11, align 8
  %42 = getelementptr inbounds %struct.ecore_exe_queue_obj, %struct.ecore_exe_queue_obj* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* %16, align 4
  %44 = load %struct.ecore_exe_queue_obj*, %struct.ecore_exe_queue_obj** %11, align 8
  %45 = getelementptr inbounds %struct.ecore_exe_queue_obj, %struct.ecore_exe_queue_obj* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* %17, align 4
  %47 = load %struct.ecore_exe_queue_obj*, %struct.ecore_exe_queue_obj** %11, align 8
  %48 = getelementptr inbounds %struct.ecore_exe_queue_obj, %struct.ecore_exe_queue_obj* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* %18, align 4
  %50 = load %struct.ecore_exe_queue_obj*, %struct.ecore_exe_queue_obj** %11, align 8
  %51 = getelementptr inbounds %struct.ecore_exe_queue_obj, %struct.ecore_exe_queue_obj* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.bxe_softc*, %struct.bxe_softc** %10, align 8
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @ECORE_MSG(%struct.bxe_softc* %52, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %53)
  ret void
}

declare dso_local i32 @ECORE_MEMSET(%struct.ecore_exe_queue_obj*, i32, i32) #1

declare dso_local i32 @ECORE_LIST_INIT(i32*) #1

declare dso_local i32 @ECORE_SPIN_LOCK_INIT(i32*, %struct.bxe_softc*) #1

declare dso_local i32 @ECORE_MSG(%struct.bxe_softc*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
