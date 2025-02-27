; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_deadline-iosched.c_deadline_add_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_deadline-iosched.c_deadline_add_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.deadline_data* }
%struct.deadline_data = type { i32*, i64* }
%struct.request = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request_queue*, %struct.request*)* @deadline_add_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @deadline_add_request(%struct.request_queue* %0, %struct.request* %1) #0 {
  %3 = alloca %struct.request_queue*, align 8
  %4 = alloca %struct.request*, align 8
  %5 = alloca %struct.deadline_data*, align 8
  %6 = alloca i32, align 4
  store %struct.request_queue* %0, %struct.request_queue** %3, align 8
  store %struct.request* %1, %struct.request** %4, align 8
  %7 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %8 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.deadline_data*, %struct.deadline_data** %10, align 8
  store %struct.deadline_data* %11, %struct.deadline_data** %5, align 8
  %12 = load %struct.request*, %struct.request** %4, align 8
  %13 = call i32 @rq_data_dir(%struct.request* %12)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.deadline_data*, %struct.deadline_data** %5, align 8
  %15 = load %struct.request*, %struct.request** %4, align 8
  %16 = call i32 @deadline_add_rq_rb(%struct.deadline_data* %14, %struct.request* %15)
  %17 = load %struct.request*, %struct.request** %4, align 8
  %18 = load i64, i64* @jiffies, align 8
  %19 = load %struct.deadline_data*, %struct.deadline_data** %5, align 8
  %20 = getelementptr inbounds %struct.deadline_data, %struct.deadline_data* %19, i32 0, i32 1
  %21 = load i64*, i64** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %18, %25
  %27 = call i32 @rq_set_fifo_time(%struct.request* %17, i64 %26)
  %28 = load %struct.request*, %struct.request** %4, align 8
  %29 = getelementptr inbounds %struct.request, %struct.request* %28, i32 0, i32 0
  %30 = load %struct.deadline_data*, %struct.deadline_data** %5, align 8
  %31 = getelementptr inbounds %struct.deadline_data, %struct.deadline_data* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = call i32 @list_add_tail(i32* %29, i32* %35)
  ret void
}

declare dso_local i32 @rq_data_dir(%struct.request*) #1

declare dso_local i32 @deadline_add_rq_rb(%struct.deadline_data*, %struct.request*) #1

declare dso_local i32 @rq_set_fifo_time(%struct.request*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
