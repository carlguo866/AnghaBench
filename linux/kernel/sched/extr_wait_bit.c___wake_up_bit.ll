; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_wait_bit.c___wake_up_bit.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_wait_bit.c___wake_up_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wait_queue_head = type { i32 }
%struct.wait_bit_key = type { i32 }

@TASK_NORMAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__wake_up_bit(%struct.wait_queue_head* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.wait_queue_head*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wait_bit_key, align 4
  store %struct.wait_queue_head* %0, %struct.wait_queue_head** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %5, align 8
  %9 = load i32, i32* %6, align 4
  %10 = call i32 @__WAIT_BIT_KEY_INITIALIZER(i8* %8, i32 %9)
  %11 = getelementptr inbounds %struct.wait_bit_key, %struct.wait_bit_key* %7, i32 0, i32 0
  store i32 %10, i32* %11, align 4
  %12 = load %struct.wait_queue_head*, %struct.wait_queue_head** %4, align 8
  %13 = call i64 @waitqueue_active(%struct.wait_queue_head* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load %struct.wait_queue_head*, %struct.wait_queue_head** %4, align 8
  %17 = load i32, i32* @TASK_NORMAL, align 4
  %18 = call i32 @__wake_up(%struct.wait_queue_head* %16, i32 %17, i32 1, %struct.wait_bit_key* %7)
  br label %19

19:                                               ; preds = %15, %3
  ret void
}

declare dso_local i32 @__WAIT_BIT_KEY_INITIALIZER(i8*, i32) #1

declare dso_local i64 @waitqueue_active(%struct.wait_queue_head*) #1

declare dso_local i32 @__wake_up(%struct.wait_queue_head*, i32, i32, %struct.wait_bit_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
