; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_merged_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_merged_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32 }
%struct.request = type { i32 }
%struct.cfq_queue = type { i32 }

@ELEVATOR_FRONT_MERGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request_queue*, %struct.request*, i32)* @cfq_merged_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfq_merged_request(%struct.request_queue* %0, %struct.request* %1, i32 %2) #0 {
  %4 = alloca %struct.request_queue*, align 8
  %5 = alloca %struct.request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cfq_queue*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %4, align 8
  store %struct.request* %1, %struct.request** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @ELEVATOR_FRONT_MERGE, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = load %struct.request*, %struct.request** %5, align 8
  %13 = call %struct.cfq_queue* @RQ_CFQQ(%struct.request* %12)
  store %struct.cfq_queue* %13, %struct.cfq_queue** %7, align 8
  %14 = load %struct.cfq_queue*, %struct.cfq_queue** %7, align 8
  %15 = load %struct.request*, %struct.request** %5, align 8
  %16 = call i32 @cfq_reposition_rq_rb(%struct.cfq_queue* %14, %struct.request* %15)
  br label %17

17:                                               ; preds = %11, %3
  ret void
}

declare dso_local %struct.cfq_queue* @RQ_CFQQ(%struct.request*) #1

declare dso_local i32 @cfq_reposition_rq_rb(%struct.cfq_queue*, %struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
