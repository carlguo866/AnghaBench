; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_virtio_net.c_pci_vtnet_ping_rxq.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_virtio_net.c_pci_vtnet_ping_rxq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vqueue_info = type { i32 }
%struct.pci_vtnet_softc = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.vqueue_info*)* @pci_vtnet_ping_rxq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_vtnet_ping_rxq(i8* %0, %struct.vqueue_info* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.vqueue_info*, align 8
  %5 = alloca %struct.pci_vtnet_softc*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.vqueue_info* %1, %struct.vqueue_info** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.pci_vtnet_softc*
  store %struct.pci_vtnet_softc* %7, %struct.pci_vtnet_softc** %5, align 8
  %8 = load %struct.pci_vtnet_softc*, %struct.pci_vtnet_softc** %5, align 8
  %9 = getelementptr inbounds %struct.pci_vtnet_softc, %struct.pci_vtnet_softc* %8, i32 0, i32 0
  %10 = call i32 @pthread_mutex_lock(i32* %9)
  %11 = load %struct.vqueue_info*, %struct.vqueue_info** %4, align 8
  %12 = call i32 @vq_kick_disable(%struct.vqueue_info* %11)
  %13 = load %struct.pci_vtnet_softc*, %struct.pci_vtnet_softc** %5, align 8
  %14 = getelementptr inbounds %struct.pci_vtnet_softc, %struct.pci_vtnet_softc* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @netbe_rx_enable(i32 %15)
  %17 = load %struct.pci_vtnet_softc*, %struct.pci_vtnet_softc** %5, align 8
  %18 = getelementptr inbounds %struct.pci_vtnet_softc, %struct.pci_vtnet_softc* %17, i32 0, i32 0
  %19 = call i32 @pthread_mutex_unlock(i32* %18)
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @vq_kick_disable(%struct.vqueue_info*) #1

declare dso_local i32 @netbe_rx_enable(i32) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
