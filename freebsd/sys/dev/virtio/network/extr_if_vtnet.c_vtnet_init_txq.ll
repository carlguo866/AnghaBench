; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/network/extr_if_vtnet.c_vtnet_init_txq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/network/extr_if_vtnet.c_vtnet_init_txq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtnet_softc = type { i32, i32, %struct.vtnet_txq* }
%struct.vtnet_txq = type { i32, i32*, i32, i32, i32, i32*, i32, i32*, %struct.vtnet_softc* }

@.str = private unnamed_addr constant [8 x i8] c"%s-tx%d\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VTNET_DEFAULT_BUFRING_SIZE = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@vtnet_txq_tq_deferred = common dso_local global i32 0, align 4
@vtnet_txq_tq_intr = common dso_local global i32 0, align 4
@taskqueue_thread_enqueue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vtnet_softc*, i32)* @vtnet_init_txq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtnet_init_txq(%struct.vtnet_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vtnet_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vtnet_txq*, align 8
  store %struct.vtnet_softc* %0, %struct.vtnet_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.vtnet_softc*, %struct.vtnet_softc** %4, align 8
  %8 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %7, i32 0, i32 2
  %9 = load %struct.vtnet_txq*, %struct.vtnet_txq** %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.vtnet_txq, %struct.vtnet_txq* %9, i64 %11
  store %struct.vtnet_txq* %12, %struct.vtnet_txq** %6, align 8
  %13 = load %struct.vtnet_txq*, %struct.vtnet_txq** %6, align 8
  %14 = getelementptr inbounds %struct.vtnet_txq, %struct.vtnet_txq* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.vtnet_softc*, %struct.vtnet_softc** %4, align 8
  %17 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i8* @device_get_nameunit(i32 %18)
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @snprintf(i32 %15, i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %19, i32 %20)
  %22 = load %struct.vtnet_txq*, %struct.vtnet_txq** %6, align 8
  %23 = getelementptr inbounds %struct.vtnet_txq, %struct.vtnet_txq* %22, i32 0, i32 6
  %24 = load %struct.vtnet_txq*, %struct.vtnet_txq** %6, align 8
  %25 = getelementptr inbounds %struct.vtnet_txq, %struct.vtnet_txq* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @MTX_DEF, align 4
  %28 = call i32 @mtx_init(i32* %23, i32 %26, i32* null, i32 %27)
  %29 = load %struct.vtnet_softc*, %struct.vtnet_softc** %4, align 8
  %30 = load %struct.vtnet_txq*, %struct.vtnet_txq** %6, align 8
  %31 = getelementptr inbounds %struct.vtnet_txq, %struct.vtnet_txq* %30, i32 0, i32 8
  store %struct.vtnet_softc* %29, %struct.vtnet_softc** %31, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.vtnet_txq*, %struct.vtnet_txq** %6, align 8
  %34 = getelementptr inbounds %struct.vtnet_txq, %struct.vtnet_txq* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.vtnet_softc*, %struct.vtnet_softc** %4, align 8
  %36 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @M_NOWAIT, align 4
  %39 = call i32* @sglist_alloc(i32 %37, i32 %38)
  %40 = load %struct.vtnet_txq*, %struct.vtnet_txq** %6, align 8
  %41 = getelementptr inbounds %struct.vtnet_txq, %struct.vtnet_txq* %40, i32 0, i32 7
  store i32* %39, i32** %41, align 8
  %42 = load %struct.vtnet_txq*, %struct.vtnet_txq** %6, align 8
  %43 = getelementptr inbounds %struct.vtnet_txq, %struct.vtnet_txq* %42, i32 0, i32 7
  %44 = load i32*, i32** %43, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %2
  %47 = load i32, i32* @ENOMEM, align 4
  store i32 %47, i32* %3, align 4
  br label %91

48:                                               ; preds = %2
  %49 = load i32, i32* @VTNET_DEFAULT_BUFRING_SIZE, align 4
  %50 = load i32, i32* @M_DEVBUF, align 4
  %51 = load i32, i32* @M_NOWAIT, align 4
  %52 = load %struct.vtnet_txq*, %struct.vtnet_txq** %6, align 8
  %53 = getelementptr inbounds %struct.vtnet_txq, %struct.vtnet_txq* %52, i32 0, i32 6
  %54 = call i32* @buf_ring_alloc(i32 %49, i32 %50, i32 %51, i32* %53)
  %55 = load %struct.vtnet_txq*, %struct.vtnet_txq** %6, align 8
  %56 = getelementptr inbounds %struct.vtnet_txq, %struct.vtnet_txq* %55, i32 0, i32 5
  store i32* %54, i32** %56, align 8
  %57 = load %struct.vtnet_txq*, %struct.vtnet_txq** %6, align 8
  %58 = getelementptr inbounds %struct.vtnet_txq, %struct.vtnet_txq* %57, i32 0, i32 5
  %59 = load i32*, i32** %58, align 8
  %60 = icmp eq i32* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %48
  %62 = load i32, i32* @ENOMEM, align 4
  store i32 %62, i32* %3, align 4
  br label %91

63:                                               ; preds = %48
  %64 = load %struct.vtnet_txq*, %struct.vtnet_txq** %6, align 8
  %65 = getelementptr inbounds %struct.vtnet_txq, %struct.vtnet_txq* %64, i32 0, i32 4
  %66 = load i32, i32* @vtnet_txq_tq_deferred, align 4
  %67 = load %struct.vtnet_txq*, %struct.vtnet_txq** %6, align 8
  %68 = call i32 @TASK_INIT(i32* %65, i32 0, i32 %66, %struct.vtnet_txq* %67)
  %69 = load %struct.vtnet_txq*, %struct.vtnet_txq** %6, align 8
  %70 = getelementptr inbounds %struct.vtnet_txq, %struct.vtnet_txq* %69, i32 0, i32 3
  %71 = load i32, i32* @vtnet_txq_tq_intr, align 4
  %72 = load %struct.vtnet_txq*, %struct.vtnet_txq** %6, align 8
  %73 = call i32 @TASK_INIT(i32* %70, i32 0, i32 %71, %struct.vtnet_txq* %72)
  %74 = load %struct.vtnet_txq*, %struct.vtnet_txq** %6, align 8
  %75 = getelementptr inbounds %struct.vtnet_txq, %struct.vtnet_txq* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @M_NOWAIT, align 4
  %78 = load i32, i32* @taskqueue_thread_enqueue, align 4
  %79 = load %struct.vtnet_txq*, %struct.vtnet_txq** %6, align 8
  %80 = getelementptr inbounds %struct.vtnet_txq, %struct.vtnet_txq* %79, i32 0, i32 1
  %81 = call i32* @taskqueue_create(i32 %76, i32 %77, i32 %78, i32** %80)
  %82 = load %struct.vtnet_txq*, %struct.vtnet_txq** %6, align 8
  %83 = getelementptr inbounds %struct.vtnet_txq, %struct.vtnet_txq* %82, i32 0, i32 1
  store i32* %81, i32** %83, align 8
  %84 = load %struct.vtnet_txq*, %struct.vtnet_txq** %6, align 8
  %85 = getelementptr inbounds %struct.vtnet_txq, %struct.vtnet_txq* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = icmp eq i32* %86, null
  br i1 %87, label %88, label %90

88:                                               ; preds = %63
  %89 = load i32, i32* @ENOMEM, align 4
  store i32 %89, i32* %3, align 4
  br label %91

90:                                               ; preds = %63
  store i32 0, i32* %3, align 4
  br label %91

91:                                               ; preds = %90, %88, %61, %46
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32) #1

declare dso_local i8* @device_get_nameunit(i32) #1

declare dso_local i32 @mtx_init(i32*, i32, i32*, i32) #1

declare dso_local i32* @sglist_alloc(i32, i32) #1

declare dso_local i32* @buf_ring_alloc(i32, i32, i32, i32*) #1

declare dso_local i32 @TASK_INIT(i32*, i32, i32, %struct.vtnet_txq*) #1

declare dso_local i32* @taskqueue_create(i32, i32, i32, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
