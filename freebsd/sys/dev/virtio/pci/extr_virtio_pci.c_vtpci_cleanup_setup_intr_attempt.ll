; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/pci/extr_virtio_pci.c_vtpci_cleanup_setup_intr_attempt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/pci/extr_virtio_pci.c_vtpci_cleanup_setup_intr_attempt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtpci_softc = type { i32, i32 }

@VTPCI_FLAG_MSIX = common dso_local global i32 0, align 4
@VIRTIO_MSI_CONFIG_VECTOR = common dso_local global i32 0, align 4
@VIRTIO_MSI_NO_VECTOR = common dso_local global i32 0, align 4
@VIRTIO_MSI_QUEUE_VECTOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vtpci_softc*)* @vtpci_cleanup_setup_intr_attempt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtpci_cleanup_setup_intr_attempt(%struct.vtpci_softc* %0) #0 {
  %2 = alloca %struct.vtpci_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.vtpci_softc* %0, %struct.vtpci_softc** %2, align 8
  %4 = load %struct.vtpci_softc*, %struct.vtpci_softc** %2, align 8
  %5 = getelementptr inbounds %struct.vtpci_softc, %struct.vtpci_softc* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @VTPCI_FLAG_MSIX, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %33

10:                                               ; preds = %1
  %11 = load %struct.vtpci_softc*, %struct.vtpci_softc** %2, align 8
  %12 = load i32, i32* @VIRTIO_MSI_CONFIG_VECTOR, align 4
  %13 = load i32, i32* @VIRTIO_MSI_NO_VECTOR, align 4
  %14 = call i32 @vtpci_write_config_2(%struct.vtpci_softc* %11, i32 %12, i32 %13)
  store i32 0, i32* %3, align 4
  br label %15

15:                                               ; preds = %29, %10
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.vtpci_softc*, %struct.vtpci_softc** %2, align 8
  %18 = getelementptr inbounds %struct.vtpci_softc, %struct.vtpci_softc* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %32

21:                                               ; preds = %15
  %22 = load %struct.vtpci_softc*, %struct.vtpci_softc** %2, align 8
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @vtpci_select_virtqueue(%struct.vtpci_softc* %22, i32 %23)
  %25 = load %struct.vtpci_softc*, %struct.vtpci_softc** %2, align 8
  %26 = load i32, i32* @VIRTIO_MSI_QUEUE_VECTOR, align 4
  %27 = load i32, i32* @VIRTIO_MSI_NO_VECTOR, align 4
  %28 = call i32 @vtpci_write_config_2(%struct.vtpci_softc* %25, i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %21
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %15

32:                                               ; preds = %15
  br label %33

33:                                               ; preds = %32, %1
  %34 = load %struct.vtpci_softc*, %struct.vtpci_softc** %2, align 8
  %35 = call i32 @vtpci_free_interrupts(%struct.vtpci_softc* %34)
  ret void
}

declare dso_local i32 @vtpci_write_config_2(%struct.vtpci_softc*, i32, i32) #1

declare dso_local i32 @vtpci_select_virtqueue(%struct.vtpci_softc*, i32) #1

declare dso_local i32 @vtpci_free_interrupts(%struct.vtpci_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
