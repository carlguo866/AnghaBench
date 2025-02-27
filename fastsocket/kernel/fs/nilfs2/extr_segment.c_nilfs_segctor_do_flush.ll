; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_segment.c_nilfs_segctor_do_flush.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_segment.c_nilfs_segctor_do_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_sc_info = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nilfs_sc_info*, i32)* @nilfs_segctor_do_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nilfs_segctor_do_flush(%struct.nilfs_sc_info* %0, i32 %1) #0 {
  %3 = alloca %struct.nilfs_sc_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.nilfs_sc_info* %0, %struct.nilfs_sc_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %7 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %6, i32 0, i32 1
  %8 = call i32 @spin_lock(i32* %7)
  %9 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %10 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %4, align 4
  %13 = shl i32 1, %12
  %14 = and i32 %11, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %34, label %16

16:                                               ; preds = %2
  %17 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %18 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %5, align 8
  %21 = load i32, i32* %4, align 4
  %22 = shl i32 1, %21
  %23 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %24 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 4
  %27 = load i64, i64* %5, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %16
  %30 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %31 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %30, i32 0, i32 2
  %32 = call i32 @wake_up(i32* %31)
  br label %33

33:                                               ; preds = %29, %16
  br label %34

34:                                               ; preds = %33, %2
  %35 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %36 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %35, i32 0, i32 1
  %37 = call i32 @spin_unlock(i32* %36)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
