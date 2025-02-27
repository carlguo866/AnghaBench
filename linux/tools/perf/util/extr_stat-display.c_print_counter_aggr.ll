; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_stat-display.c_print_counter_aggr.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_stat-display.c_print_counter_aggr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_stat_config = type { i32, i32* }
%struct.evsel = type { double }
%struct.caggr_data = type { double, i32, i32 }

@counter_aggr_cb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@rt_stat = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_stat_config*, %struct.evsel*, i8*)* @print_counter_aggr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_counter_aggr(%struct.perf_stat_config* %0, %struct.evsel* %1, i8* %2) #0 {
  %4 = alloca %struct.perf_stat_config*, align 8
  %5 = alloca %struct.evsel*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca double, align 8
  %10 = alloca %struct.caggr_data, align 8
  store %struct.perf_stat_config* %0, %struct.perf_stat_config** %4, align 8
  store %struct.evsel* %1, %struct.evsel** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.perf_stat_config*, %struct.perf_stat_config** %4, align 8
  %12 = getelementptr inbounds %struct.perf_stat_config, %struct.perf_stat_config* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %7, align 4
  %14 = load %struct.perf_stat_config*, %struct.perf_stat_config** %4, align 8
  %15 = getelementptr inbounds %struct.perf_stat_config, %struct.perf_stat_config* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %8, align 8
  %17 = bitcast %struct.caggr_data* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 16, i1 false)
  %18 = load %struct.perf_stat_config*, %struct.perf_stat_config** %4, align 8
  %19 = load %struct.evsel*, %struct.evsel** %5, align 8
  %20 = load i32, i32* @counter_aggr_cb, align 4
  %21 = call i32 @collect_data(%struct.perf_stat_config* %18, %struct.evsel* %19, i32 %20, %struct.caggr_data* %10)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %3
  br label %57

24:                                               ; preds = %3
  %25 = load i8*, i8** %6, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %27
  %31 = load i32*, i32** %8, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 (i32*, i8*, ...) @fprintf(i32* %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %32)
  br label %34

34:                                               ; preds = %30, %27, %24
  %35 = getelementptr inbounds %struct.caggr_data, %struct.caggr_data* %10, i32 0, i32 0
  %36 = load double, double* %35, align 8
  %37 = load %struct.evsel*, %struct.evsel** %5, align 8
  %38 = getelementptr inbounds %struct.evsel, %struct.evsel* %37, i32 0, i32 0
  %39 = load double, double* %38, align 8
  %40 = fmul double %36, %39
  store double %40, double* %9, align 8
  %41 = load %struct.perf_stat_config*, %struct.perf_stat_config** %4, align 8
  %42 = load %struct.evsel*, %struct.evsel** %5, align 8
  %43 = load double, double* %9, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = getelementptr inbounds %struct.caggr_data, %struct.caggr_data* %10, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.caggr_data, %struct.caggr_data* %10, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = getelementptr inbounds %struct.caggr_data, %struct.caggr_data* %10, i32 0, i32 0
  %50 = load double, double* %49, align 8
  %51 = call i32 @printout(%struct.perf_stat_config* %41, i32 -1, i32 0, %struct.evsel* %42, double %43, i8* %44, i32 %46, i32 %48, double %50, i32* @rt_stat)
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %34
  %55 = load i32*, i32** %8, align 8
  %56 = call i32 (i32*, i8*, ...) @fprintf(i32* %55, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %57

57:                                               ; preds = %23, %54, %34
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @collect_data(%struct.perf_stat_config*, %struct.evsel*, i32, %struct.caggr_data*) #2

declare dso_local i32 @fprintf(i32*, i8*, ...) #2

declare dso_local i32 @printout(%struct.perf_stat_config*, i32, i32, %struct.evsel*, double, i8*, i32, i32, double, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
