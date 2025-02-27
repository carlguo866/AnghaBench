; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/cavium/extr_thunder_pcie_pem.c_thunder_pem_deactivate_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/cavium/extr_thunder_pcie_pem.c_thunder_pem_deactivate_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }

@memmap_bus = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, %struct.resource*)* @thunder_pem_deactivate_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thunder_pem_deactivate_resource(i32 %0, i32 %1, i32 %2, i32 %3, %struct.resource* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.resource*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.resource* %4, %struct.resource** %10, align 8
  %13 = load %struct.resource*, %struct.resource** %10, align 8
  %14 = call i64 @rman_get_size(%struct.resource* %13)
  store i64 %14, i64* %11, align 8
  %15 = load %struct.resource*, %struct.resource** %10, align 8
  %16 = call i64 @rman_get_bushandle(%struct.resource* %15)
  store i64 %16, i64* %12, align 8
  %17 = load i64, i64* %12, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %5
  %20 = load i64, i64* %12, align 8
  %21 = load i64, i64* %11, align 8
  %22 = call i32 @bus_space_unmap(i32* @memmap_bus, i64 %20, i64 %21)
  %23 = load %struct.resource*, %struct.resource** %10, align 8
  %24 = call i32 @rman_set_virtual(%struct.resource* %23, i32* null)
  %25 = load %struct.resource*, %struct.resource** %10, align 8
  %26 = call i32 @rman_set_bushandle(%struct.resource* %25, i32 0)
  br label %27

27:                                               ; preds = %19, %5
  %28 = load %struct.resource*, %struct.resource** %10, align 8
  %29 = call i32 @rman_deactivate_resource(%struct.resource* %28)
  ret i32 %29
}

declare dso_local i64 @rman_get_size(%struct.resource*) #1

declare dso_local i64 @rman_get_bushandle(%struct.resource*) #1

declare dso_local i32 @bus_space_unmap(i32*, i64, i64) #1

declare dso_local i32 @rman_set_virtual(%struct.resource*, i32*) #1

declare dso_local i32 @rman_set_bushandle(%struct.resource*, i32) #1

declare dso_local i32 @rman_deactivate_resource(%struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
