; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_journal.c_journal_join_abort.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_journal.c_journal_join_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.reiserfs_transaction_handle* }
%struct.reiserfs_transaction_handle = type { i32, %struct.reiserfs_transaction_handle* }
%struct.super_block = type { i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@JBEGIN_ABORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @journal_join_abort(%struct.reiserfs_transaction_handle* %0, %struct.super_block* %1) #0 {
  %3 = alloca %struct.reiserfs_transaction_handle*, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.reiserfs_transaction_handle*, align 8
  store %struct.reiserfs_transaction_handle* %0, %struct.reiserfs_transaction_handle** %3, align 8
  store %struct.super_block* %1, %struct.super_block** %4, align 8
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %7, align 8
  store %struct.reiserfs_transaction_handle* %8, %struct.reiserfs_transaction_handle** %5, align 8
  %9 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %5, align 8
  %10 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %3, align 8
  %11 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %10, i32 0, i32 1
  store %struct.reiserfs_transaction_handle* %9, %struct.reiserfs_transaction_handle** %11, align 8
  %12 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %5, align 8
  %13 = icmp ne %struct.reiserfs_transaction_handle* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %5, align 8
  %16 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp sgt i32 %17, 1
  br label %19

19:                                               ; preds = %14, %2
  %20 = phi i1 [ false, %2 ], [ %18, %14 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %3, align 8
  %24 = load %struct.super_block*, %struct.super_block** %4, align 8
  %25 = load i32, i32* @JBEGIN_ABORT, align 4
  %26 = call i32 @do_journal_begin_r(%struct.reiserfs_transaction_handle* %23, %struct.super_block* %24, i32 1, i32 %25)
  ret i32 %26
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @do_journal_begin_r(%struct.reiserfs_transaction_handle*, %struct.super_block*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
