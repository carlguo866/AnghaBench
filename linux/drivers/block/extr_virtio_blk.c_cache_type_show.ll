; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_virtio_blk.c_cache_type_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_virtio_blk.c_cache_type_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.gendisk = type { %struct.virtio_blk* }
%struct.virtio_blk = type { i32 }

@virtblk_cache_types = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @cache_type_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cache_type_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.gendisk*, align 8
  %8 = alloca %struct.virtio_blk*, align 8
  %9 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.gendisk* @dev_to_disk(%struct.device* %10)
  store %struct.gendisk* %11, %struct.gendisk** %7, align 8
  %12 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %13 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %12, i32 0, i32 0
  %14 = load %struct.virtio_blk*, %struct.virtio_blk** %13, align 8
  store %struct.virtio_blk* %14, %struct.virtio_blk** %8, align 8
  %15 = load %struct.virtio_blk*, %struct.virtio_blk** %8, align 8
  %16 = getelementptr inbounds %struct.virtio_blk, %struct.virtio_blk* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @virtblk_get_cache_mode(i32 %17)
  store i64 %18, i64* %9, align 8
  %19 = load i64, i64* %9, align 8
  %20 = load i8**, i8*** @virtblk_cache_types, align 8
  %21 = call i64 @ARRAY_SIZE(i8** %20)
  %22 = icmp uge i64 %19, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUG_ON(i32 %23)
  %25 = load i8*, i8** %6, align 8
  %26 = load i8**, i8*** @virtblk_cache_types, align 8
  %27 = load i64, i64* %9, align 8
  %28 = getelementptr inbounds i8*, i8** %26, i64 %27
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @snprintf(i8* %25, i32 40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %29)
  ret i32 %30
}

declare dso_local %struct.gendisk* @dev_to_disk(%struct.device*) #1

declare dso_local i64 @virtblk_get_cache_mode(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @ARRAY_SIZE(i8**) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
