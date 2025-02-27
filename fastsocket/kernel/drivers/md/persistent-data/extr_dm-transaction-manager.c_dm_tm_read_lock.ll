; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/persistent-data/extr_dm-transaction-manager.c_dm_tm_read_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/persistent-data/extr_dm-transaction-manager.c_dm_tm_read_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_transaction_manager = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.dm_block_validator = type { i32 }
%struct.dm_block = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_tm_read_lock(%struct.dm_transaction_manager* %0, i32 %1, %struct.dm_block_validator* %2, %struct.dm_block** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dm_transaction_manager*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dm_block_validator*, align 8
  %9 = alloca %struct.dm_block**, align 8
  store %struct.dm_transaction_manager* %0, %struct.dm_transaction_manager** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.dm_block_validator* %2, %struct.dm_block_validator** %8, align 8
  store %struct.dm_block** %3, %struct.dm_block*** %9, align 8
  %10 = load %struct.dm_transaction_manager*, %struct.dm_transaction_manager** %6, align 8
  %11 = getelementptr inbounds %struct.dm_transaction_manager, %struct.dm_transaction_manager* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %4
  %15 = load %struct.dm_transaction_manager*, %struct.dm_transaction_manager** %6, align 8
  %16 = getelementptr inbounds %struct.dm_transaction_manager, %struct.dm_transaction_manager* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.dm_block_validator*, %struct.dm_block_validator** %8, align 8
  %22 = load %struct.dm_block**, %struct.dm_block*** %9, align 8
  %23 = call i32 @dm_bm_read_try_lock(i32 %19, i32 %20, %struct.dm_block_validator* %21, %struct.dm_block** %22)
  store i32 %23, i32* %5, align 4
  br label %32

24:                                               ; preds = %4
  %25 = load %struct.dm_transaction_manager*, %struct.dm_transaction_manager** %6, align 8
  %26 = getelementptr inbounds %struct.dm_transaction_manager, %struct.dm_transaction_manager* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.dm_block_validator*, %struct.dm_block_validator** %8, align 8
  %30 = load %struct.dm_block**, %struct.dm_block*** %9, align 8
  %31 = call i32 @dm_bm_read_lock(i32 %27, i32 %28, %struct.dm_block_validator* %29, %struct.dm_block** %30)
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %24, %14
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local i32 @dm_bm_read_try_lock(i32, i32, %struct.dm_block_validator*, %struct.dm_block**) #1

declare dso_local i32 @dm_bm_read_lock(i32, i32, %struct.dm_block_validator*, %struct.dm_block**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
