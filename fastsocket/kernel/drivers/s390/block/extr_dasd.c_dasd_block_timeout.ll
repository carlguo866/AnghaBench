; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd.c_dasd_block_timeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd.c_dasd_block_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_block = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@DASD_STOPPED_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @dasd_block_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dasd_block_timeout(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.dasd_block*, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to %struct.dasd_block*
  store %struct.dasd_block* %6, %struct.dasd_block** %4, align 8
  %7 = load %struct.dasd_block*, %struct.dasd_block** %4, align 8
  %8 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @get_ccwdev_lock(i32 %11)
  %13 = load i64, i64* %3, align 8
  %14 = call i32 @spin_lock_irqsave(i32 %12, i64 %13)
  %15 = load %struct.dasd_block*, %struct.dasd_block** %4, align 8
  %16 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load i32, i32* @DASD_STOPPED_PENDING, align 4
  %19 = call i32 @dasd_device_remove_stop_bits(%struct.TYPE_2__* %17, i32 %18)
  %20 = load %struct.dasd_block*, %struct.dasd_block** %4, align 8
  %21 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @get_ccwdev_lock(i32 %24)
  %26 = load i64, i64* %3, align 8
  %27 = call i32 @spin_unlock_irqrestore(i32 %25, i64 %26)
  %28 = load %struct.dasd_block*, %struct.dasd_block** %4, align 8
  %29 = call i32 @dasd_schedule_block_bh(%struct.dasd_block* %28)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @get_ccwdev_lock(i32) #1

declare dso_local i32 @dasd_device_remove_stop_bits(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @dasd_schedule_block_bh(%struct.dasd_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
