; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/block/extr_virtio_blk.c_vtblk_maximum_segments.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/block/extr_virtio_blk.c_vtblk_maximum_segments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtblk_softc = type { i32, i32 }
%struct.virtio_blk_config = type { i32 }

@VTBLK_MIN_SEGMENTS = common dso_local global i32 0, align 4
@VIRTIO_BLK_F_SEG_MAX = common dso_local global i32 0, align 4
@MAXPHYS = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@VTBLK_FLAG_INDIRECT = common dso_local global i32 0, align 4
@VIRTIO_MAX_INDIRECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vtblk_softc*, %struct.virtio_blk_config*)* @vtblk_maximum_segments to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtblk_maximum_segments(%struct.vtblk_softc* %0, %struct.virtio_blk_config* %1) #0 {
  %3 = alloca %struct.vtblk_softc*, align 8
  %4 = alloca %struct.virtio_blk_config*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.vtblk_softc* %0, %struct.vtblk_softc** %3, align 8
  store %struct.virtio_blk_config* %1, %struct.virtio_blk_config** %4, align 8
  %7 = load %struct.vtblk_softc*, %struct.vtblk_softc** %3, align 8
  %8 = getelementptr inbounds %struct.vtblk_softc, %struct.vtblk_softc* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* @VTBLK_MIN_SEGMENTS, align 4
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @VIRTIO_BLK_F_SEG_MAX, align 4
  %13 = call i64 @virtio_with_feature(i32 %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %37

15:                                               ; preds = %2
  %16 = load %struct.virtio_blk_config*, %struct.virtio_blk_config** %4, align 8
  %17 = getelementptr inbounds %struct.virtio_blk_config, %struct.virtio_blk_config* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @MAXPHYS, align 4
  %20 = load i32, i32* @PAGE_SIZE, align 4
  %21 = sdiv i32 %19, %20
  %22 = add nsw i32 %21, 1
  %23 = call i32 @MIN(i32 %18, i32 %22)
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %24, %23
  store i32 %25, i32* %6, align 4
  %26 = load %struct.vtblk_softc*, %struct.vtblk_softc** %3, align 8
  %27 = getelementptr inbounds %struct.vtblk_softc, %struct.vtblk_softc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @VTBLK_FLAG_INDIRECT, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %15
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @VIRTIO_MAX_INDIRECT, align 4
  %35 = call i32 @MIN(i32 %33, i32 %34)
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %32, %15
  br label %40

37:                                               ; preds = %2
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %37, %36
  %41 = load i32, i32* %6, align 4
  ret i32 %41
}

declare dso_local i64 @virtio_with_feature(i32, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
