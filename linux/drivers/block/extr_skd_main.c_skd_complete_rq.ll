; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_skd_main.c_skd_complete_rq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_skd_main.c_skd_complete_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32 }
%struct.skd_request_context = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request*)* @skd_complete_rq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skd_complete_rq(%struct.request* %0) #0 {
  %2 = alloca %struct.request*, align 8
  %3 = alloca %struct.skd_request_context*, align 8
  store %struct.request* %0, %struct.request** %2, align 8
  %4 = load %struct.request*, %struct.request** %2, align 8
  %5 = call %struct.skd_request_context* @blk_mq_rq_to_pdu(%struct.request* %4)
  store %struct.skd_request_context* %5, %struct.skd_request_context** %3, align 8
  %6 = load %struct.request*, %struct.request** %2, align 8
  %7 = load %struct.skd_request_context*, %struct.skd_request_context** %3, align 8
  %8 = getelementptr inbounds %struct.skd_request_context, %struct.skd_request_context* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @blk_mq_end_request(%struct.request* %6, i32 %9)
  ret void
}

declare dso_local %struct.skd_request_context* @blk_mq_rq_to_pdu(%struct.request*) #1

declare dso_local i32 @blk_mq_end_request(%struct.request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
