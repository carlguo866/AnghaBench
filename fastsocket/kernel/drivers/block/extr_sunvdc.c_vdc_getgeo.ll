; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_sunvdc.c_vdc_getgeo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_sunvdc.c_vdc_getgeo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { %struct.gendisk* }
%struct.gendisk = type { %struct.vdc_port* }
%struct.vdc_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i64 }
%struct.hd_geometry = type { i32, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.block_device*, %struct.hd_geometry*)* @vdc_getgeo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdc_getgeo(%struct.block_device* %0, %struct.hd_geometry* %1) #0 {
  %3 = alloca %struct.block_device*, align 8
  %4 = alloca %struct.hd_geometry*, align 8
  %5 = alloca %struct.gendisk*, align 8
  %6 = alloca %struct.vdc_port*, align 8
  store %struct.block_device* %0, %struct.block_device** %3, align 8
  store %struct.hd_geometry* %1, %struct.hd_geometry** %4, align 8
  %7 = load %struct.block_device*, %struct.block_device** %3, align 8
  %8 = getelementptr inbounds %struct.block_device, %struct.block_device* %7, i32 0, i32 0
  %9 = load %struct.gendisk*, %struct.gendisk** %8, align 8
  store %struct.gendisk* %9, %struct.gendisk** %5, align 8
  %10 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %11 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %10, i32 0, i32 0
  %12 = load %struct.vdc_port*, %struct.vdc_port** %11, align 8
  store %struct.vdc_port* %12, %struct.vdc_port** %6, align 8
  %13 = load %struct.vdc_port*, %struct.vdc_port** %6, align 8
  %14 = getelementptr inbounds %struct.vdc_port, %struct.vdc_port* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i8*
  %18 = load %struct.hd_geometry*, %struct.hd_geometry** %4, align 8
  %19 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %18, i32 0, i32 2
  store i8* %17, i8** %19, align 8
  %20 = load %struct.vdc_port*, %struct.vdc_port** %6, align 8
  %21 = getelementptr inbounds %struct.vdc_port, %struct.vdc_port* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i8*
  %25 = load %struct.hd_geometry*, %struct.hd_geometry** %4, align 8
  %26 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %25, i32 0, i32 1
  store i8* %24, i8** %26, align 8
  %27 = load %struct.vdc_port*, %struct.vdc_port** %6, align 8
  %28 = getelementptr inbounds %struct.vdc_port, %struct.vdc_port* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.hd_geometry*, %struct.hd_geometry** %4, align 8
  %32 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
