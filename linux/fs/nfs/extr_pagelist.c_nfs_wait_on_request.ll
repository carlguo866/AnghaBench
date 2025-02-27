; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_pagelist.c_nfs_wait_on_request.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_pagelist.c_nfs_wait_on_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_page = type { i32 }

@PG_BUSY = common dso_local global i32 0, align 4
@PG_CONTENDED2 = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_wait_on_request(%struct.nfs_page* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfs_page*, align 8
  store %struct.nfs_page* %0, %struct.nfs_page** %3, align 8
  %4 = load i32, i32* @PG_BUSY, align 4
  %5 = load %struct.nfs_page*, %struct.nfs_page** %3, align 8
  %6 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %5, i32 0, i32 0
  %7 = call i32 @test_bit(i32 %4, i32* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %21

10:                                               ; preds = %1
  %11 = load i32, i32* @PG_CONTENDED2, align 4
  %12 = load %struct.nfs_page*, %struct.nfs_page** %3, align 8
  %13 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %12, i32 0, i32 0
  %14 = call i32 @set_bit(i32 %11, i32* %13)
  %15 = call i32 (...) @smp_mb__after_atomic()
  %16 = load %struct.nfs_page*, %struct.nfs_page** %3, align 8
  %17 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %16, i32 0, i32 0
  %18 = load i32, i32* @PG_BUSY, align 4
  %19 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %20 = call i32 @wait_on_bit_io(i32* %17, i32 %18, i32 %19)
  store i32 %20, i32* %2, align 4
  br label %21

21:                                               ; preds = %10, %9
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @smp_mb__after_atomic(...) #1

declare dso_local i32 @wait_on_bit_io(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
