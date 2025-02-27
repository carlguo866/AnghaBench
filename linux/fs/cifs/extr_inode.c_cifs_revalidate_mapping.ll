; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_inode.c_cifs_revalidate_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_inode.c_cifs_revalidate_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.TYPE_2__ = type { i64 }

@CIFS_INO_LOCK = common dso_local global i32 0, align 4
@cifs_wait_bit_killable = common dso_local global i32 0, align 4
@TASK_KILLABLE = common dso_local global i32 0, align 4
@CIFS_INO_INVALID_MAPPING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cifs_revalidate_mapping(%struct.inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  %6 = load %struct.inode*, %struct.inode** %3, align 8
  %7 = call %struct.TYPE_2__* @CIFS_I(%struct.inode* %6)
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store i64* %8, i64** %5, align 8
  %9 = load i64*, i64** %5, align 8
  %10 = load i32, i32* @CIFS_INO_LOCK, align 4
  %11 = load i32, i32* @cifs_wait_bit_killable, align 4
  %12 = load i32, i32* @TASK_KILLABLE, align 4
  %13 = call i32 @wait_on_bit_lock_action(i64* %9, i32 %10, i32 %11, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %2, align 4
  br label %42

18:                                               ; preds = %1
  %19 = load i32, i32* @CIFS_INO_INVALID_MAPPING, align 4
  %20 = load i64*, i64** %5, align 8
  %21 = call i64 @test_and_clear_bit(i32 %19, i64* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %18
  %24 = load %struct.inode*, %struct.inode** %3, align 8
  %25 = call i32 @cifs_invalidate_mapping(%struct.inode* %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load i32, i32* @CIFS_INO_INVALID_MAPPING, align 4
  %30 = load i64*, i64** %5, align 8
  %31 = call i32 @set_bit(i32 %29, i64* %30)
  br label %32

32:                                               ; preds = %28, %23
  br label %33

33:                                               ; preds = %32, %18
  %34 = load i32, i32* @CIFS_INO_LOCK, align 4
  %35 = load i64*, i64** %5, align 8
  %36 = call i32 @clear_bit_unlock(i32 %34, i64* %35)
  %37 = call i32 (...) @smp_mb__after_atomic()
  %38 = load i64*, i64** %5, align 8
  %39 = load i32, i32* @CIFS_INO_LOCK, align 4
  %40 = call i32 @wake_up_bit(i64* %38, i32 %39)
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %33, %16
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local %struct.TYPE_2__* @CIFS_I(%struct.inode*) #1

declare dso_local i32 @wait_on_bit_lock_action(i64*, i32, i32, i32) #1

declare dso_local i64 @test_and_clear_bit(i32, i64*) #1

declare dso_local i32 @cifs_invalidate_mapping(%struct.inode*) #1

declare dso_local i32 @set_bit(i32, i64*) #1

declare dso_local i32 @clear_bit_unlock(i32, i64*) #1

declare dso_local i32 @smp_mb__after_atomic(...) #1

declare dso_local i32 @wake_up_bit(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
