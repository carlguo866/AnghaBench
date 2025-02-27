; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fieldbus/anybuss/extr_host.c_ab_task_dequeue_finish_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fieldbus/anybuss/extr_host.c_ab_task_dequeue_finish_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kfifo = type { i32 }
%struct.anybuss_host = type { i32 }
%struct.ab_task = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kfifo*, %struct.anybuss_host*)* @ab_task_dequeue_finish_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ab_task_dequeue_finish_put(%struct.kfifo* %0, %struct.anybuss_host* %1) #0 {
  %3 = alloca %struct.kfifo*, align 8
  %4 = alloca %struct.anybuss_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ab_task*, align 8
  store %struct.kfifo* %0, %struct.kfifo** %3, align 8
  store %struct.anybuss_host* %1, %struct.anybuss_host** %4, align 8
  %7 = load %struct.kfifo*, %struct.kfifo** %3, align 8
  %8 = call i32 @kfifo_out(%struct.kfifo* %7, %struct.ab_task** %6, i32 8)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @WARN_ON(i32 %12)
  %14 = load %struct.ab_task*, %struct.ab_task** %6, align 8
  %15 = load %struct.anybuss_host*, %struct.anybuss_host** %4, align 8
  %16 = call i32 @__ab_task_finish(%struct.ab_task* %14, %struct.anybuss_host* %15)
  %17 = load %struct.ab_task*, %struct.ab_task** %6, align 8
  %18 = call i32 @ab_task_put(%struct.ab_task* %17)
  ret void
}

declare dso_local i32 @kfifo_out(%struct.kfifo*, %struct.ab_task**, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @__ab_task_finish(%struct.ab_task*, %struct.anybuss_host*) #1

declare dso_local i32 @ab_task_put(%struct.ab_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
