; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.h_find_next_inuse.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.h_find_next_inuse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.free_segmap_info = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.free_segmap_info*, i32, i32)* @find_next_inuse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_next_inuse(%struct.free_segmap_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.free_segmap_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.free_segmap_info* %0, %struct.free_segmap_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.free_segmap_info*, %struct.free_segmap_info** %4, align 8
  %9 = getelementptr inbounds %struct.free_segmap_info, %struct.free_segmap_info* %8, i32 0, i32 0
  %10 = call i32 @spin_lock(i32* %9)
  %11 = load %struct.free_segmap_info*, %struct.free_segmap_info** %4, align 8
  %12 = getelementptr inbounds %struct.free_segmap_info, %struct.free_segmap_info* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @find_next_bit(i32 %13, i32 %14, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.free_segmap_info*, %struct.free_segmap_info** %4, align 8
  %18 = getelementptr inbounds %struct.free_segmap_info, %struct.free_segmap_info* %17, i32 0, i32 0
  %19 = call i32 @spin_unlock(i32* %18)
  %20 = load i32, i32* %7, align 4
  ret i32 %20
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @find_next_bit(i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
