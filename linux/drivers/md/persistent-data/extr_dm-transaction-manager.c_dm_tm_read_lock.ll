; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-transaction-manager.c_dm_tm_read_lock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-transaction-manager.c_dm_tm_read_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_transaction_manager = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.dm_block_validator = type { i32 }
%struct.dm_block = type { i32 }

@EWOULDBLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_tm_read_lock(%struct.dm_transaction_manager* %0, i32 %1, %struct.dm_block_validator* %2, %struct.dm_block** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dm_transaction_manager*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dm_block_validator*, align 8
  %9 = alloca %struct.dm_block**, align 8
  %10 = alloca i32, align 4
  store %struct.dm_transaction_manager* %0, %struct.dm_transaction_manager** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.dm_block_validator* %2, %struct.dm_block_validator** %8, align 8
  store %struct.dm_block** %3, %struct.dm_block*** %9, align 8
  %11 = load %struct.dm_transaction_manager*, %struct.dm_transaction_manager** %6, align 8
  %12 = getelementptr inbounds %struct.dm_transaction_manager, %struct.dm_transaction_manager* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %38

15:                                               ; preds = %4
  %16 = load %struct.dm_transaction_manager*, %struct.dm_transaction_manager** %6, align 8
  %17 = getelementptr inbounds %struct.dm_transaction_manager, %struct.dm_transaction_manager* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.dm_block_validator*, %struct.dm_block_validator** %8, align 8
  %23 = load %struct.dm_block**, %struct.dm_block*** %9, align 8
  %24 = call i32 @dm_bm_read_try_lock(i32 %20, i32 %21, %struct.dm_block_validator* %22, %struct.dm_block** %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @EWOULDBLOCK, align 4
  %27 = sub nsw i32 0, %26
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %15
  %30 = load %struct.dm_transaction_manager*, %struct.dm_transaction_manager** %6, align 8
  %31 = getelementptr inbounds %struct.dm_transaction_manager, %struct.dm_transaction_manager* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @prefetch_add(i32* %33, i32 %34)
  br label %36

36:                                               ; preds = %29, %15
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %5, align 4
  br label %46

38:                                               ; preds = %4
  %39 = load %struct.dm_transaction_manager*, %struct.dm_transaction_manager** %6, align 8
  %40 = getelementptr inbounds %struct.dm_transaction_manager, %struct.dm_transaction_manager* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.dm_block_validator*, %struct.dm_block_validator** %8, align 8
  %44 = load %struct.dm_block**, %struct.dm_block*** %9, align 8
  %45 = call i32 @dm_bm_read_lock(i32 %41, i32 %42, %struct.dm_block_validator* %43, %struct.dm_block** %44)
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %38, %36
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i32 @dm_bm_read_try_lock(i32, i32, %struct.dm_block_validator*, %struct.dm_block**) #1

declare dso_local i32 @prefetch_add(i32*, i32) #1

declare dso_local i32 @dm_bm_read_lock(i32, i32, %struct.dm_block_validator*, %struct.dm_block**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
