; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_pt_qry_event_ovf_enabled.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_query_decoder.c_pt_qry_event_ovf_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_query_decoder = type { i32, i32 }
%struct.pt_event = type { i32 }

@pte_internal = common dso_local global i32 0, align 4
@evb_fup = common dso_local global i32 0, align 4
@ptev_overflow = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_query_decoder*)* @pt_qry_event_ovf_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt_qry_event_ovf_enabled(%struct.pt_query_decoder* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt_query_decoder*, align 8
  %4 = alloca %struct.pt_event*, align 8
  store %struct.pt_query_decoder* %0, %struct.pt_query_decoder** %3, align 8
  %5 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %6 = icmp ne %struct.pt_query_decoder* %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @pte_internal, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %2, align 4
  br label %29

10:                                               ; preds = %1
  %11 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %12 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %11, i32 0, i32 1
  %13 = load i32, i32* @evb_fup, align 4
  %14 = call %struct.pt_event* @pt_evq_enqueue(i32* %12, i32 %13)
  store %struct.pt_event* %14, %struct.pt_event** %4, align 8
  %15 = load %struct.pt_event*, %struct.pt_event** %4, align 8
  %16 = icmp ne %struct.pt_event* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %10
  %18 = load i32, i32* @pte_internal, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %29

20:                                               ; preds = %10
  %21 = load i32, i32* @ptev_overflow, align 4
  %22 = load %struct.pt_event*, %struct.pt_event** %4, align 8
  %23 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %25 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %24, i32 0, i32 0
  store i32 1, i32* %25, align 4
  %26 = load %struct.pt_event*, %struct.pt_event** %4, align 8
  %27 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %3, align 8
  %28 = call i32 @pt_qry_event_time(%struct.pt_event* %26, %struct.pt_query_decoder* %27)
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %20, %17, %7
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local %struct.pt_event* @pt_evq_enqueue(i32*, i32) #1

declare dso_local i32 @pt_qry_event_time(%struct.pt_event*, %struct.pt_query_decoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
