; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_as-iosched.c_as_merged_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_as-iosched.c_as_merged_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.as_data* }
%struct.as_data = type { i32 }
%struct.request = type { i32 }

@ELEVATOR_FRONT_MERGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request_queue*, %struct.request*, i32)* @as_merged_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @as_merged_request(%struct.request_queue* %0, %struct.request* %1, i32 %2) #0 {
  %4 = alloca %struct.request_queue*, align 8
  %5 = alloca %struct.request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.as_data*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %4, align 8
  store %struct.request* %1, %struct.request** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %9 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.as_data*, %struct.as_data** %11, align 8
  store %struct.as_data* %12, %struct.as_data** %7, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @ELEVATOR_FRONT_MERGE, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %25

16:                                               ; preds = %3
  %17 = load %struct.as_data*, %struct.as_data** %7, align 8
  %18 = load %struct.request*, %struct.request** %5, align 8
  %19 = call i32 @as_del_rq_rb(%struct.as_data* %17, %struct.request* %18)
  %20 = load %struct.as_data*, %struct.as_data** %7, align 8
  %21 = load %struct.request*, %struct.request** %5, align 8
  %22 = call i32 @RQ_RB_ROOT(%struct.as_data* %20, %struct.request* %21)
  %23 = load %struct.request*, %struct.request** %5, align 8
  %24 = call i32 @elv_rb_add(i32 %22, %struct.request* %23)
  br label %25

25:                                               ; preds = %16, %3
  ret void
}

declare dso_local i32 @as_del_rq_rb(%struct.as_data*, %struct.request*) #1

declare dso_local i32 @elv_rb_add(i32, %struct.request*) #1

declare dso_local i32 @RQ_RB_ROOT(%struct.as_data*, %struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
