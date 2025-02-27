; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-timeout.c_blk_abort_request.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-timeout.c_blk_abort_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@jiffies = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @blk_abort_request(%struct.request* %0) #0 {
  %2 = alloca %struct.request*, align 8
  store %struct.request* %0, %struct.request** %2, align 8
  %3 = load %struct.request*, %struct.request** %2, align 8
  %4 = getelementptr inbounds %struct.request, %struct.request* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 8
  %6 = load i32, i32* @jiffies, align 4
  %7 = call i32 @WRITE_ONCE(i32 %5, i32 %6)
  %8 = load %struct.request*, %struct.request** %2, align 8
  %9 = getelementptr inbounds %struct.request, %struct.request* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = call i32 @kblockd_schedule_work(i32* %11)
  ret void
}

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

declare dso_local i32 @kblockd_schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
