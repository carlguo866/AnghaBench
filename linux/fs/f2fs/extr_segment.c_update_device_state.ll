; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_update_device_state.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_update_device_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_io_info = type { i32, i32, %struct.f2fs_sb_info* }
%struct.f2fs_sb_info = type { i32, i32 }

@FLUSH_INO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.f2fs_io_info*)* @update_device_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_device_state(%struct.f2fs_io_info* %0) #0 {
  %2 = alloca %struct.f2fs_io_info*, align 8
  %3 = alloca %struct.f2fs_sb_info*, align 8
  %4 = alloca i32, align 4
  store %struct.f2fs_io_info* %0, %struct.f2fs_io_info** %2, align 8
  %5 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %2, align 8
  %6 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %5, i32 0, i32 2
  %7 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  store %struct.f2fs_sb_info* %7, %struct.f2fs_sb_info** %3, align 8
  %8 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %9 = call i32 @f2fs_is_multi_device(%struct.f2fs_sb_info* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %43

12:                                               ; preds = %1
  %13 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %14 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %2, align 8
  %15 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @f2fs_target_device_index(%struct.f2fs_sb_info* %13, i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %19 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %2, align 8
  %20 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @FLUSH_INO, align 4
  %24 = call i32 @f2fs_set_dirty_device(%struct.f2fs_sb_info* %18, i32 %21, i32 %22, i32 %23)
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %27 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %26, i32 0, i32 1
  %28 = bitcast i32* %27 to i8*
  %29 = call i32 @f2fs_test_bit(i32 %25, i8* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %43, label %31

31:                                               ; preds = %12
  %32 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %33 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %32, i32 0, i32 0
  %34 = call i32 @spin_lock(i32* %33)
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %37 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %36, i32 0, i32 1
  %38 = bitcast i32* %37 to i8*
  %39 = call i32 @f2fs_set_bit(i32 %35, i8* %38)
  %40 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %41 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %40, i32 0, i32 0
  %42 = call i32 @spin_unlock(i32* %41)
  br label %43

43:                                               ; preds = %11, %31, %12
  ret void
}

declare dso_local i32 @f2fs_is_multi_device(%struct.f2fs_sb_info*) #1

declare dso_local i32 @f2fs_target_device_index(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @f2fs_set_dirty_device(%struct.f2fs_sb_info*, i32, i32, i32) #1

declare dso_local i32 @f2fs_test_bit(i32, i8*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @f2fs_set_bit(i32, i8*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
