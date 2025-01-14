; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/alacritech/extr_slicoss.c_slic_free_shmem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/alacritech/extr_slicoss.c_slic_free_shmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slic_device = type { %struct.TYPE_2__*, %struct.slic_shmem }
%struct.TYPE_2__ = type { i32 }
%struct.slic_shmem = type { i32, %struct.slic_shmem_data* }
%struct.slic_shmem_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.slic_device*)* @slic_free_shmem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @slic_free_shmem(%struct.slic_device* %0) #0 {
  %2 = alloca %struct.slic_device*, align 8
  %3 = alloca %struct.slic_shmem*, align 8
  %4 = alloca %struct.slic_shmem_data*, align 8
  store %struct.slic_device* %0, %struct.slic_device** %2, align 8
  %5 = load %struct.slic_device*, %struct.slic_device** %2, align 8
  %6 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %5, i32 0, i32 1
  store %struct.slic_shmem* %6, %struct.slic_shmem** %3, align 8
  %7 = load %struct.slic_shmem*, %struct.slic_shmem** %3, align 8
  %8 = getelementptr inbounds %struct.slic_shmem, %struct.slic_shmem* %7, i32 0, i32 1
  %9 = load %struct.slic_shmem_data*, %struct.slic_shmem_data** %8, align 8
  store %struct.slic_shmem_data* %9, %struct.slic_shmem_data** %4, align 8
  %10 = load %struct.slic_device*, %struct.slic_device** %2, align 8
  %11 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.slic_shmem_data*, %struct.slic_shmem_data** %4, align 8
  %15 = load %struct.slic_shmem*, %struct.slic_shmem** %3, align 8
  %16 = getelementptr inbounds %struct.slic_shmem, %struct.slic_shmem* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @dma_free_coherent(i32* %13, i32 4, %struct.slic_shmem_data* %14, i32 %17)
  ret void
}

declare dso_local i32 @dma_free_coherent(i32*, i32, %struct.slic_shmem_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
