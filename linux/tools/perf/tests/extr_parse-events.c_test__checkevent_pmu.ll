; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/tests/extr_parse-events.c_test__checkevent_pmu.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/tests/extr_parse-events.c_test__checkevent_pmu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evlist = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.evsel = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [24 x i8] c"wrong number of entries\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"wrong type\00", align 1
@PERF_TYPE_RAW = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"wrong config\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"wrong config1\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"wrong config2\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"wrong period\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evlist*)* @test__checkevent_pmu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test__checkevent_pmu(%struct.evlist* %0) #0 {
  %2 = alloca %struct.evlist*, align 8
  %3 = alloca %struct.evsel*, align 8
  store %struct.evlist* %0, %struct.evlist** %2, align 8
  %4 = load %struct.evlist*, %struct.evlist** %2, align 8
  %5 = call %struct.evsel* @evlist__first(%struct.evlist* %4)
  store %struct.evsel* %5, %struct.evsel** %3, align 8
  %6 = load %struct.evlist*, %struct.evlist** %2, align 8
  %7 = getelementptr inbounds %struct.evlist, %struct.evlist* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 1, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load i64, i64* @PERF_TYPE_RAW, align 8
  %14 = load %struct.evsel*, %struct.evsel** %3, align 8
  %15 = getelementptr inbounds %struct.evsel, %struct.evsel* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %13, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  %22 = load %struct.evsel*, %struct.evsel** %3, align 8
  %23 = getelementptr inbounds %struct.evsel, %struct.evsel* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 10, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %28)
  %30 = load %struct.evsel*, %struct.evsel** %3, align 8
  %31 = getelementptr inbounds %struct.evsel, %struct.evsel* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 1, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %36)
  %38 = load %struct.evsel*, %struct.evsel** %3, align 8
  %39 = getelementptr inbounds %struct.evsel, %struct.evsel* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 3, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %44)
  %46 = load %struct.evsel*, %struct.evsel** %3, align 8
  %47 = getelementptr inbounds %struct.evsel, %struct.evsel* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 4
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 0, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %52)
  ret i32 0
}

declare dso_local %struct.evsel* @evlist__first(%struct.evlist*) #1

declare dso_local i32 @TEST_ASSERT_VAL(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
