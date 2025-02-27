; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/network/extr_if_vtnet.c_vtnet_qflush.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/network/extr_if_vtnet.c_vtnet_qflush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { %struct.vtnet_softc* }
%struct.vtnet_softc = type { i32, %struct.vtnet_txq* }
%struct.vtnet_txq = type { i32 }
%struct.mbuf = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*)* @vtnet_qflush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtnet_qflush(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  %3 = alloca %struct.vtnet_softc*, align 8
  %4 = alloca %struct.vtnet_txq*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  %7 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %8 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %7, i32 0, i32 0
  %9 = load %struct.vtnet_softc*, %struct.vtnet_softc** %8, align 8
  store %struct.vtnet_softc* %9, %struct.vtnet_softc** %3, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %37, %1
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.vtnet_softc*, %struct.vtnet_softc** %3, align 8
  %13 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %40

16:                                               ; preds = %10
  %17 = load %struct.vtnet_softc*, %struct.vtnet_softc** %3, align 8
  %18 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %17, i32 0, i32 1
  %19 = load %struct.vtnet_txq*, %struct.vtnet_txq** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.vtnet_txq, %struct.vtnet_txq* %19, i64 %21
  store %struct.vtnet_txq* %22, %struct.vtnet_txq** %4, align 8
  %23 = load %struct.vtnet_txq*, %struct.vtnet_txq** %4, align 8
  %24 = call i32 @VTNET_TXQ_LOCK(%struct.vtnet_txq* %23)
  br label %25

25:                                               ; preds = %31, %16
  %26 = load %struct.vtnet_txq*, %struct.vtnet_txq** %4, align 8
  %27 = getelementptr inbounds %struct.vtnet_txq, %struct.vtnet_txq* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.mbuf* @buf_ring_dequeue_sc(i32 %28)
  store %struct.mbuf* %29, %struct.mbuf** %5, align 8
  %30 = icmp ne %struct.mbuf* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %33 = call i32 @m_freem(%struct.mbuf* %32)
  br label %25

34:                                               ; preds = %25
  %35 = load %struct.vtnet_txq*, %struct.vtnet_txq** %4, align 8
  %36 = call i32 @VTNET_TXQ_UNLOCK(%struct.vtnet_txq* %35)
  br label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %6, align 4
  br label %10

40:                                               ; preds = %10
  %41 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %42 = call i32 @if_qflush(%struct.ifnet* %41)
  ret void
}

declare dso_local i32 @VTNET_TXQ_LOCK(%struct.vtnet_txq*) #1

declare dso_local %struct.mbuf* @buf_ring_dequeue_sc(i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @VTNET_TXQ_UNLOCK(%struct.vtnet_txq*) #1

declare dso_local i32 @if_qflush(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
