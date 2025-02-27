; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-mq.c_nr_hw_queues.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-mq.c_nr_hw_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_tag_set = type { i32, i32 }

@nr_cpu_ids = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blk_mq_tag_set*)* @nr_hw_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nr_hw_queues(%struct.blk_mq_tag_set* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.blk_mq_tag_set*, align 8
  store %struct.blk_mq_tag_set* %0, %struct.blk_mq_tag_set** %3, align 8
  %4 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %3, align 8
  %5 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @nr_cpu_ids, align 4
  store i32 %9, i32* %2, align 4
  br label %16

10:                                               ; preds = %1
  %11 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %3, align 8
  %12 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @nr_cpu_ids, align 4
  %15 = call i32 @max(i32 %13, i32 %14)
  store i32 %15, i32* %2, align 4
  br label %16

16:                                               ; preds = %10, %8
  %17 = load i32, i32* %2, align 4
  ret i32 %17
}

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
