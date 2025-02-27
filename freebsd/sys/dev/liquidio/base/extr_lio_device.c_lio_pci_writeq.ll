; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_lio_device.c_lio_pci_writeq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_lio_device.c_lio_pci_writeq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lio_pci_writeq(%struct.octeon_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.octeon_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.octeon_device* %0, %struct.octeon_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %9 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %8, i32 0, i32 0
  %10 = call i32 @mtx_lock(i32* %9)
  %11 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %12 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %13 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @lio_write_csr64(%struct.octeon_device* %11, i32 %15, i32 %16)
  %18 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %19 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %20 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %5, align 4
  %24 = ashr i32 %23, 32
  %25 = call i32 @lio_write_csr32(%struct.octeon_device* %18, i32 %22, i32 %24)
  %26 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %27 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %28 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @lio_read_csr32(%struct.octeon_device* %26, i32 %30)
  store volatile i32 %31, i32* %7, align 4
  %32 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %33 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %34 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @lio_write_csr32(%struct.octeon_device* %32, i32 %36, i32 %37)
  %39 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %40 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %39, i32 0, i32 0
  %41 = call i32 @mtx_unlock(i32* %40)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @lio_write_csr64(%struct.octeon_device*, i32, i32) #1

declare dso_local i32 @lio_write_csr32(%struct.octeon_device*, i32, i32) #1

declare dso_local i32 @lio_read_csr32(%struct.octeon_device*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
