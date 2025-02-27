; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_super.c_ext3_sync_fs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_super.c_ext3_sync_fs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32)* @ext3_sync_fs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext3_sync_fs(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.super_block*, %struct.super_block** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @trace_ext3_sync_fs(%struct.super_block* %6, i32 %7)
  %9 = load %struct.super_block*, %struct.super_block** %3, align 8
  %10 = call %struct.TYPE_2__* @EXT3_SB(%struct.super_block* %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @journal_start_commit(i32 %12, i32* %5)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %15
  %19 = load %struct.super_block*, %struct.super_block** %3, align 8
  %20 = call %struct.TYPE_2__* @EXT3_SB(%struct.super_block* %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @log_wait_commit(i32 %22, i32 %23)
  br label %25

25:                                               ; preds = %18, %15
  br label %26

26:                                               ; preds = %25, %2
  ret i32 0
}

declare dso_local i32 @trace_ext3_sync_fs(%struct.super_block*, i32) #1

declare dso_local i64 @journal_start_commit(i32, i32*) #1

declare dso_local %struct.TYPE_2__* @EXT3_SB(%struct.super_block*) #1

declare dso_local i32 @log_wait_commit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
