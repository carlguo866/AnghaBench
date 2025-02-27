; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/card/extr_block.c_mmc_blk_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/card/extr_block.c_mmc_blk_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_blk_data = type { i64 }
%struct.gendisk = type { %struct.mmc_blk_data* }

@open_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mmc_blk_data* (%struct.gendisk*)* @mmc_blk_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mmc_blk_data* @mmc_blk_get(%struct.gendisk* %0) #0 {
  %2 = alloca %struct.gendisk*, align 8
  %3 = alloca %struct.mmc_blk_data*, align 8
  store %struct.gendisk* %0, %struct.gendisk** %2, align 8
  %4 = call i32 @mutex_lock(i32* @open_lock)
  %5 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %6 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %5, i32 0, i32 0
  %7 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %6, align 8
  store %struct.mmc_blk_data* %7, %struct.mmc_blk_data** %3, align 8
  %8 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %3, align 8
  %9 = icmp ne %struct.mmc_blk_data* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %3, align 8
  %12 = getelementptr inbounds %struct.mmc_blk_data, %struct.mmc_blk_data* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  store %struct.mmc_blk_data* null, %struct.mmc_blk_data** %3, align 8
  br label %16

16:                                               ; preds = %15, %10, %1
  %17 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %3, align 8
  %18 = icmp ne %struct.mmc_blk_data* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %3, align 8
  %21 = getelementptr inbounds %struct.mmc_blk_data, %struct.mmc_blk_data* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, 1
  store i64 %23, i64* %21, align 8
  br label %24

24:                                               ; preds = %19, %16
  %25 = call i32 @mutex_unlock(i32* @open_lock)
  %26 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %3, align 8
  ret %struct.mmc_blk_data* %26
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
