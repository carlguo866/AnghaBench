; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_vdev_indirect.c_vdev_indirect_io_done.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_vdev_indirect.c_vdev_indirect_io_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*)* @vdev_indirect_io_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vdev_indirect_io_done(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  store %struct.TYPE_10__* %8, %struct.TYPE_10__** %3, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %15 = call i32 @vdev_indirect_reconstruct_io_done(%struct.TYPE_9__* %14)
  br label %35

16:                                               ; preds = %1
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  br label %35

22:                                               ; preds = %16
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %24 = call i32 @zio_checksum_error(%struct.TYPE_9__* %23, i32* %4)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %29 = call i32 @zio_checksum_verified(%struct.TYPE_9__* %28)
  br label %35

30:                                               ; preds = %22
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %32 = call i32 @vdev_indirect_read_all(%struct.TYPE_9__* %31)
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %34 = call i32 @zio_vdev_io_redone(%struct.TYPE_9__* %33)
  br label %35

35:                                               ; preds = %30, %27, %21, %13
  ret void
}

declare dso_local i32 @vdev_indirect_reconstruct_io_done(%struct.TYPE_9__*) #1

declare dso_local i32 @zio_checksum_error(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @zio_checksum_verified(%struct.TYPE_9__*) #1

declare dso_local i32 @vdev_indirect_read_all(%struct.TYPE_9__*) #1

declare dso_local i32 @zio_vdev_io_redone(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
