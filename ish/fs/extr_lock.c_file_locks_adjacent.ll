; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_lock.c_file_locks_adjacent.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_lock.c_file_locks_adjacent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_lock = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file_lock*, %struct.file_lock*)* @file_locks_adjacent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @file_locks_adjacent(%struct.file_lock* %0, %struct.file_lock* %1) #0 {
  %3 = alloca %struct.file_lock*, align 8
  %4 = alloca %struct.file_lock*, align 8
  store %struct.file_lock* %0, %struct.file_lock** %3, align 8
  store %struct.file_lock* %1, %struct.file_lock** %4, align 8
  %5 = load %struct.file_lock*, %struct.file_lock** %3, align 8
  %6 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %9 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = sub nsw i32 %10, 1
  %12 = icmp eq i32 %7, %11
  br i1 %12, label %22, label %13

13:                                               ; preds = %2
  %14 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %15 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.file_lock*, %struct.file_lock** %3, align 8
  %18 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = sub nsw i32 %19, 1
  %21 = icmp eq i32 %16, %20
  br label %22

22:                                               ; preds = %13, %2
  %23 = phi i1 [ true, %2 ], [ %21, %13 ]
  %24 = zext i1 %23 to i32
  ret i32 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
