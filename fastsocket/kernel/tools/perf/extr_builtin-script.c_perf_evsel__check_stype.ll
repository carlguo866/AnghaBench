; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-script.c_perf_evsel__check_stype.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-script.c_perf_evsel__check_stype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }
%struct.perf_evsel = type { %struct.perf_event_attr }
%struct.perf_event_attr = type { i32, i32 }

@output = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [79 x i8] c"Samples for '%s' event do not have %s attribute set. Cannot print '%s' field.\0A\00", align 1
@.str.1 = private unnamed_addr constant [75 x i8] c"Samples for '%s' event do not have %s attribute set. Skipping '%s' field.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_evsel*, i32, i8*, i32)* @perf_evsel__check_stype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_evsel__check_stype(%struct.perf_evsel* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.perf_evsel*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.perf_event_attr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.perf_evsel* %0, %struct.perf_evsel** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.perf_evsel*, %struct.perf_evsel** %6, align 8
  %14 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %13, i32 0, i32 0
  store %struct.perf_event_attr* %14, %struct.perf_event_attr** %10, align 8
  %15 = load %struct.perf_event_attr*, %struct.perf_event_attr** %10, align 8
  %16 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %11, align 4
  %18 = load %struct.perf_event_attr*, %struct.perf_event_attr** %10, align 8
  %19 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %7, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %58

25:                                               ; preds = %4
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @output, align 8
  %27 = load i32, i32* %11, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %25
  %34 = load %struct.perf_evsel*, %struct.perf_evsel** %6, align 8
  %35 = call i8* @perf_evsel__name(%struct.perf_evsel* %34)
  store i8* %35, i8** %12, align 8
  %36 = load i8*, i8** %12, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @output_field2str(i32 %38)
  %40 = call i32 @pr_err(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0), i8* %36, i8* %37, i32 %39)
  store i32 -1, i32* %5, align 4
  br label %58

41:                                               ; preds = %25
  %42 = load i32, i32* %9, align 4
  %43 = xor i32 %42, -1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @output, align 8
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = and i32 %49, %43
  store i32 %50, i32* %48, align 8
  %51 = load %struct.perf_evsel*, %struct.perf_evsel** %6, align 8
  %52 = call i8* @perf_evsel__name(%struct.perf_evsel* %51)
  store i8* %52, i8** %12, align 8
  %53 = load i8*, i8** %12, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @output_field2str(i32 %55)
  %57 = call i32 @pr_debug(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i64 0, i64 0), i8* %53, i8* %54, i32 %56)
  store i32 0, i32* %5, align 4
  br label %58

58:                                               ; preds = %41, %33, %24
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i8* @perf_evsel__name(%struct.perf_evsel*) #1

declare dso_local i32 @pr_err(i8*, i8*, i8*, i32) #1

declare dso_local i32 @output_field2str(i32) #1

declare dso_local i32 @pr_debug(i8*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
