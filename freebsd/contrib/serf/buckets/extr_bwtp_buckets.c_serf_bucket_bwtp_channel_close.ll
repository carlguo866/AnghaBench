; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/serf/buckets/extr_bwtp_buckets.c_serf_bucket_bwtp_channel_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/serf/buckets/extr_bwtp_buckets.c_serf_bucket_bwtp_channel_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8*, i32, i64, i64 }

@.str = private unnamed_addr constant [7 x i8] c"CLOSED\00", align 1
@serf_bucket_type_bwtp_frame = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @serf_bucket_bwtp_channel_close(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = call %struct.TYPE_4__* @serf_bucket_mem_alloc(i32* %6, i32 40)
  store %struct.TYPE_4__* %7, %struct.TYPE_4__** %5, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 4
  store i64 0, i64* %9, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 3
  store i64 0, i64* %11, align 8
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %16, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @serf_bucket_headers_create(i32* %17)
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %23 = call i32* @serf_bucket_create(i32* @serf_bucket_type_bwtp_frame, i32* %21, %struct.TYPE_4__* %22)
  ret i32* %23
}

declare dso_local %struct.TYPE_4__* @serf_bucket_mem_alloc(i32*, i32) #1

declare dso_local i32 @serf_bucket_headers_create(i32*) #1

declare dso_local i32* @serf_bucket_create(i32*, i32*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
