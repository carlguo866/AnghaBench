; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_sort.c_hist_entry__locked_snprintf.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_sort.c_hist_entry__locked_snprintf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_entry = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"%.*s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hist_entry*, i8*, i64, i32)* @hist_entry__locked_snprintf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hist_entry__locked_snprintf(%struct.hist_entry* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.hist_entry*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca [10 x i8], align 1
  store %struct.hist_entry* %0, %struct.hist_entry** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = getelementptr inbounds [10 x i8], [10 x i8]* %9, i64 0, i64 0
  %11 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %12 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @perf_mem__lck_scnprintf(i8* %10, i32 10, i32 %13)
  %15 = load i8*, i8** %6, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = getelementptr inbounds [10 x i8], [10 x i8]* %9, i64 0, i64 0
  %19 = call i32 @repsep_snprintf(i8* %15, i64 %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %17, i8* %18)
  ret i32 %19
}

declare dso_local i32 @perf_mem__lck_scnprintf(i8*, i32, i32) #1

declare dso_local i32 @repsep_snprintf(i8*, i64, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
