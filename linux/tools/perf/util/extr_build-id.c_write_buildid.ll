; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_build-id.c_write_buildid.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_build-id.c_write_buildid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.feat_fd = type { i32 }
%struct.perf_record_header_build_id = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@NAME_ALIGN = common dso_local global i32 0, align 4
@BUILD_ID_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i32*, i32, i32, %struct.feat_fd*)* @write_buildid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_buildid(i8* %0, i64 %1, i32* %2, i32 %3, i32 %4, %struct.feat_fd* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.feat_fd*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.perf_record_header_build_id, align 4
  %16 = alloca i64, align 8
  store i8* %0, i8** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.feat_fd* %5, %struct.feat_fd** %13, align 8
  %17 = load i64, i64* %9, align 8
  %18 = add i64 %17, 1
  store i64 %18, i64* %16, align 8
  %19 = load i64, i64* %16, align 8
  %20 = load i32, i32* @NAME_ALIGN, align 4
  %21 = call i64 @PERF_ALIGN(i64 %19, i32 %20)
  store i64 %21, i64* %16, align 8
  %22 = call i32 @memset(%struct.perf_record_header_build_id* %15, i32 0, i32 16)
  %23 = getelementptr inbounds %struct.perf_record_header_build_id, %struct.perf_record_header_build_id* %15, i32 0, i32 2
  %24 = load i32*, i32** %10, align 8
  %25 = load i32, i32* @BUILD_ID_SIZE, align 4
  %26 = call i32 @memcpy(i32* %23, i32* %24, i32 %25)
  %27 = load i32, i32* %11, align 4
  %28 = getelementptr inbounds %struct.perf_record_header_build_id, %struct.perf_record_header_build_id* %15, i32 0, i32 1
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* %12, align 4
  %30 = getelementptr inbounds %struct.perf_record_header_build_id, %struct.perf_record_header_build_id* %15, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load i64, i64* %16, align 8
  %33 = add i64 16, %32
  %34 = trunc i64 %33 to i32
  %35 = getelementptr inbounds %struct.perf_record_header_build_id, %struct.perf_record_header_build_id* %15, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.feat_fd*, %struct.feat_fd** %13, align 8
  %38 = call i32 @do_write(%struct.feat_fd* %37, %struct.perf_record_header_build_id* %15, i32 16)
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* %14, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %6
  %42 = load i32, i32* %14, align 4
  store i32 %42, i32* %7, align 4
  br label %50

43:                                               ; preds = %6
  %44 = load %struct.feat_fd*, %struct.feat_fd** %13, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = load i64, i64* %9, align 8
  %47 = add i64 %46, 1
  %48 = load i64, i64* %16, align 8
  %49 = call i32 @write_padded(%struct.feat_fd* %44, i8* %45, i64 %47, i64 %48)
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %43, %41
  %51 = load i32, i32* %7, align 4
  ret i32 %51
}

declare dso_local i64 @PERF_ALIGN(i64, i32) #1

declare dso_local i32 @memset(%struct.perf_record_header_build_id*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @do_write(%struct.feat_fd*, %struct.perf_record_header_build_id*, i32) #1

declare dso_local i32 @write_padded(%struct.feat_fd*, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
