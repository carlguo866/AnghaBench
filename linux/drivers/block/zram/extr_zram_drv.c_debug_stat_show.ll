; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/zram/extr_zram_drv.c_debug_stat_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/zram/extr_zram_drv.c_debug_stat_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.zram = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"version: %d\0A%8llu %8llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @debug_stat_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @debug_stat_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.zram*, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 1, i32* %7, align 4
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.zram* @dev_to_zram(%struct.device* %10)
  store %struct.zram* %11, %struct.zram** %8, align 8
  %12 = load %struct.zram*, %struct.zram** %8, align 8
  %13 = getelementptr inbounds %struct.zram, %struct.zram* %12, i32 0, i32 0
  %14 = call i32 @down_read(i32* %13)
  %15 = load i8*, i8** %6, align 8
  %16 = load i32, i32* @PAGE_SIZE, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.zram*, %struct.zram** %8, align 8
  %19 = getelementptr inbounds %struct.zram, %struct.zram* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = call i64 @atomic64_read(i32* %20)
  %22 = trunc i64 %21 to i32
  %23 = load %struct.zram*, %struct.zram** %8, align 8
  %24 = getelementptr inbounds %struct.zram, %struct.zram* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = call i64 @atomic64_read(i32* %25)
  %27 = trunc i64 %26 to i32
  %28 = call i32 @scnprintf(i8* %15, i32 %16, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %22, i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load %struct.zram*, %struct.zram** %8, align 8
  %30 = getelementptr inbounds %struct.zram, %struct.zram* %29, i32 0, i32 0
  %31 = call i32 @up_read(i32* %30)
  %32 = load i32, i32* %9, align 4
  ret i32 %32
}

declare dso_local %struct.zram* @dev_to_zram(%struct.device*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @scnprintf(i8*, i32, i8*, i32, i32, i32) #1

declare dso_local i64 @atomic64_read(i32*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
