; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-record.c_zstd_compress.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-record.c_zstd_compress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_session = type { i64, i64, i32 }

@PERF_SAMPLE_MAX_SIZE = common dso_local global i32 0, align 4
@process_comp_header = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.perf_session*, i8*, i64, i8*, i64)* @zstd_compress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @zstd_compress(%struct.perf_session* %0, i8* %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.perf_session*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.perf_session* %0, %struct.perf_session** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %13 = load i32, i32* @PERF_SAMPLE_MAX_SIZE, align 4
  %14 = sext i32 %13 to i64
  %15 = sub i64 %14, 4
  %16 = sub i64 %15, 1
  store i64 %16, i64* %12, align 8
  %17 = load %struct.perf_session*, %struct.perf_session** %6, align 8
  %18 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %17, i32 0, i32 2
  %19 = load i8*, i8** %7, align 8
  %20 = load i64, i64* %8, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = load i64, i64* %10, align 8
  %23 = load i64, i64* %12, align 8
  %24 = load i32, i32* @process_comp_header, align 4
  %25 = call i64 @zstd_compress_stream_to_records(i32* %18, i8* %19, i64 %20, i8* %21, i64 %22, i64 %23, i32 %24)
  store i64 %25, i64* %11, align 8
  %26 = load i64, i64* %10, align 8
  %27 = load %struct.perf_session*, %struct.perf_session** %6, align 8
  %28 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add i64 %29, %26
  store i64 %30, i64* %28, align 8
  %31 = load i64, i64* %11, align 8
  %32 = load %struct.perf_session*, %struct.perf_session** %6, align 8
  %33 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = add i64 %34, %31
  store i64 %35, i64* %33, align 8
  %36 = load i64, i64* %11, align 8
  ret i64 %36
}

declare dso_local i64 @zstd_compress_stream_to_records(i32*, i8*, i64, i8*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
