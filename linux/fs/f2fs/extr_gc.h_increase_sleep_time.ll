; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_gc.h_increase_sleep_time.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_gc.h_increase_sleep_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_gc_kthread = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.f2fs_gc_kthread*, i32*)* @increase_sleep_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @increase_sleep_time(%struct.f2fs_gc_kthread* %0, i32* %1) #0 {
  %3 = alloca %struct.f2fs_gc_kthread*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.f2fs_gc_kthread* %0, %struct.f2fs_gc_kthread** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.f2fs_gc_kthread*, %struct.f2fs_gc_kthread** %3, align 8
  %8 = getelementptr inbounds %struct.f2fs_gc_kthread, %struct.f2fs_gc_kthread* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %5, align 4
  %10 = load %struct.f2fs_gc_kthread*, %struct.f2fs_gc_kthread** %3, align 8
  %11 = getelementptr inbounds %struct.f2fs_gc_kthread, %struct.f2fs_gc_kthread* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.f2fs_gc_kthread*, %struct.f2fs_gc_kthread** %3, align 8
  %16 = getelementptr inbounds %struct.f2fs_gc_kthread, %struct.f2fs_gc_kthread* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %38

20:                                               ; preds = %2
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* %21, align 4
  %23 = zext i32 %22 to i64
  %24 = load i32, i32* %5, align 4
  %25 = zext i32 %24 to i64
  %26 = add nsw i64 %23, %25
  %27 = load i32, i32* %6, align 4
  %28 = zext i32 %27 to i64
  %29 = icmp sgt i64 %26, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %20
  %31 = load i32, i32* %6, align 4
  %32 = load i32*, i32** %4, align 8
  store i32 %31, i32* %32, align 4
  br label %38

33:                                               ; preds = %20
  %34 = load i32, i32* %5, align 4
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* %35, align 4
  %37 = add i32 %36, %34
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %19, %33, %30
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
