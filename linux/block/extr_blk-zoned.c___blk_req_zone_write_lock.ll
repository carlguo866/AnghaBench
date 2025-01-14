; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-zoned.c___blk_req_zone_write_lock.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-zoned.c___blk_req_zone_write_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@RQF_ZONE_WRITE_LOCKED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__blk_req_zone_write_lock(%struct.request* %0) #0 {
  %2 = alloca %struct.request*, align 8
  store %struct.request* %0, %struct.request** %2, align 8
  %3 = load %struct.request*, %struct.request** %2, align 8
  %4 = call i32 @blk_rq_zone_no(%struct.request* %3)
  %5 = load %struct.request*, %struct.request** %2, align 8
  %6 = getelementptr inbounds %struct.request, %struct.request* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @test_and_set_bit(i32 %4, i32 %9)
  %11 = call i64 @WARN_ON_ONCE(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %26

14:                                               ; preds = %1
  %15 = load %struct.request*, %struct.request** %2, align 8
  %16 = getelementptr inbounds %struct.request, %struct.request* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @RQF_ZONE_WRITE_LOCKED, align 4
  %19 = and i32 %17, %18
  %20 = call i64 @WARN_ON_ONCE(i32 %19)
  %21 = load i32, i32* @RQF_ZONE_WRITE_LOCKED, align 4
  %22 = load %struct.request*, %struct.request** %2, align 8
  %23 = getelementptr inbounds %struct.request, %struct.request* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 8
  br label %26

26:                                               ; preds = %14, %13
  ret void
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @test_and_set_bit(i32, i32) #1

declare dso_local i32 @blk_rq_zone_no(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
