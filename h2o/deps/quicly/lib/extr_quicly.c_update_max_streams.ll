; ModuleID = '/home/carl/AnghaBench/h2o/deps/quicly/lib/extr_quicly.c_update_max_streams.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/quicly/lib/extr_quicly.c_update_max_streams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_quicly_max_streams_t = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@QUICLY_TRANSPORT_ERROR_STREAM_LIMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.st_quicly_max_streams_t*, i64)* @update_max_streams to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_max_streams(%struct.st_quicly_max_streams_t* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.st_quicly_max_streams_t*, align 8
  %5 = alloca i64, align 8
  store %struct.st_quicly_max_streams_t* %0, %struct.st_quicly_max_streams_t** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = icmp sgt i64 %6, 1152921504606846976
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i32, i32* @QUICLY_TRANSPORT_ERROR_STREAM_LIMIT, align 4
  store i32 %9, i32* %3, align 4
  br label %33

10:                                               ; preds = %2
  %11 = load %struct.st_quicly_max_streams_t*, %struct.st_quicly_max_streams_t** %4, align 8
  %12 = getelementptr inbounds %struct.st_quicly_max_streams_t, %struct.st_quicly_max_streams_t* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* %5, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %32

16:                                               ; preds = %10
  %17 = load i64, i64* %5, align 8
  %18 = load %struct.st_quicly_max_streams_t*, %struct.st_quicly_max_streams_t** %4, align 8
  %19 = getelementptr inbounds %struct.st_quicly_max_streams_t, %struct.st_quicly_max_streams_t* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  %20 = load %struct.st_quicly_max_streams_t*, %struct.st_quicly_max_streams_t** %4, align 8
  %21 = getelementptr inbounds %struct.st_quicly_max_streams_t, %struct.st_quicly_max_streams_t* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %5, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %16
  %27 = load i64, i64* %5, align 8
  %28 = load %struct.st_quicly_max_streams_t*, %struct.st_quicly_max_streams_t** %4, align 8
  %29 = getelementptr inbounds %struct.st_quicly_max_streams_t, %struct.st_quicly_max_streams_t* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i64 %27, i64* %30, align 8
  br label %31

31:                                               ; preds = %26, %16
  br label %32

32:                                               ; preds = %31, %10
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %8
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
