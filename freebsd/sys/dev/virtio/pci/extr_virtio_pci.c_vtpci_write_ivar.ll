; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/pci/extr_virtio_pci.c_vtpci_write_ivar.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/pci/extr_virtio_pci.c_vtpci_write_ivar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtpci_softc = type { i64, i8* }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i32, i64)* @vtpci_write_ivar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtpci_write_ivar(i64 %0, i64 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.vtpci_softc*, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %11 = load i64, i64* %6, align 8
  %12 = call %struct.vtpci_softc* @device_get_softc(i64 %11)
  store %struct.vtpci_softc* %12, %struct.vtpci_softc** %10, align 8
  %13 = load %struct.vtpci_softc*, %struct.vtpci_softc** %10, align 8
  %14 = getelementptr inbounds %struct.vtpci_softc, %struct.vtpci_softc* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* %7, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* @ENOENT, align 4
  store i32 %19, i32* %5, align 4
  br label %30

20:                                               ; preds = %4
  %21 = load i32, i32* %8, align 4
  switch i32 %21, label %27 [
    i32 128, label %22
  ]

22:                                               ; preds = %20
  %23 = load i64, i64* %9, align 8
  %24 = inttoptr i64 %23 to i8*
  %25 = load %struct.vtpci_softc*, %struct.vtpci_softc** %10, align 8
  %26 = getelementptr inbounds %struct.vtpci_softc, %struct.vtpci_softc* %25, i32 0, i32 1
  store i8* %24, i8** %26, align 8
  br label %29

27:                                               ; preds = %20
  %28 = load i32, i32* @ENOENT, align 4
  store i32 %28, i32* %5, align 4
  br label %30

29:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %29, %27, %18
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local %struct.vtpci_softc* @device_get_softc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
