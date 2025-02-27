; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_recovery.c_f2fs_space_for_roll_forward.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_recovery.c_f2fs_space_for_roll_forward.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i64, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f2fs_space_for_roll_forward(%struct.f2fs_sb_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.f2fs_sb_info*, align 8
  %4 = alloca i64, align 8
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %3, align 8
  %5 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %6 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %5, i32 0, i32 2
  %7 = call i64 @percpu_counter_sum_positive(i32* %6)
  store i64 %7, i64* %4, align 8
  %8 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %9 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* %4, align 8
  %12 = add nsw i64 %10, %11
  %13 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %14 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp sgt i64 %12, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %19

18:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %19

19:                                               ; preds = %18, %17
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local i64 @percpu_counter_sum_positive(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
