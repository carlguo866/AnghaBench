; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-query.c_event_empty.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-query.c_event_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptu_decoder_fixture = type { %struct.pt_query_decoder }
%struct.pt_query_decoder = type { i32, %struct.pt_config }
%struct.pt_config = type { i32 }
%struct.ptunit_result = type { i32 }
%struct.pt_event = type { i32 }

@pte_eos = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ptu_decoder_fixture*)* @event_empty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @event_empty(%struct.ptu_decoder_fixture* %0) #0 {
  %2 = alloca %struct.ptunit_result, align 4
  %3 = alloca %struct.ptu_decoder_fixture*, align 8
  %4 = alloca %struct.pt_query_decoder*, align 8
  %5 = alloca %struct.pt_config*, align 8
  %6 = alloca %struct.pt_event, align 4
  %7 = alloca i32, align 4
  store %struct.ptu_decoder_fixture* %0, %struct.ptu_decoder_fixture** %3, align 8
  %8 = load %struct.ptu_decoder_fixture*, %struct.ptu_decoder_fixture** %3, align 8
  %9 = getelementptr inbounds %struct.ptu_decoder_fixture, %struct.ptu_decoder_fixture* %8, i32 0, i32 0
  store %struct.pt_query_decoder* %9, %struct.pt_query_decoder** %4, align 8
  %10 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %11 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %10, i32 0, i32 1
  store %struct.pt_config* %11, %struct.pt_config** %5, align 8
  %12 = load %struct.pt_config*, %struct.pt_config** %5, align 8
  %13 = getelementptr inbounds %struct.pt_config, %struct.pt_config* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %16 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %18 = call i32 @pt_qry_event(%struct.pt_query_decoder* %17, %struct.pt_event* %6, i32 4)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @pte_eos, align 4
  %21 = sub nsw i32 0, %20
  %22 = call i32 @ptu_int_eq(i32 %19, i32 %21)
  %23 = call i32 (...) @ptu_passed()
  %24 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  ret i32 %26
}

declare dso_local i32 @pt_qry_event(%struct.pt_query_decoder*, %struct.pt_event*, i32) #1

declare dso_local i32 @ptu_int_eq(i32, i32) #1

declare dso_local i32 @ptu_passed(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
