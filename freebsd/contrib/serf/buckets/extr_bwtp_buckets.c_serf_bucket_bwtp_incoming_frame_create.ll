; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/serf/buckets/extr_bwtp_buckets.c_serf_bucket_bwtp_incoming_frame_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/serf/buckets/extr_bwtp_buckets.c_serf_bucket_bwtp_incoming_frame_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32*, i64, i32, i32, i32*, i32* }

@STATE_STATUS_LINE = common dso_local global i32 0, align 4
@serf_bucket_type_bwtp_incoming_frame = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @serf_bucket_bwtp_incoming_frame_create(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = call %struct.TYPE_4__* @serf_bucket_mem_alloc(i32* %6, i32 48)
  store %struct.TYPE_4__* %7, %struct.TYPE_4__** %5, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 7
  store i32* %8, i32** %10, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 6
  store i32* null, i32** %12, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @serf_bucket_headers_create(i32* %13)
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 5
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @STATE_STATUS_LINE, align 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 4
  store i32 %17, i32* %19, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 3
  store i64 0, i64* %21, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store i32 -1, i32* %23, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 2
  store i32* null, i32** %25, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = call i32 @serf_linebuf_init(i32* %27)
  %29 = load i32*, i32** %4, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %31 = call i32* @serf_bucket_create(i32* @serf_bucket_type_bwtp_incoming_frame, i32* %29, %struct.TYPE_4__* %30)
  ret i32* %31
}

declare dso_local %struct.TYPE_4__* @serf_bucket_mem_alloc(i32*, i32) #1

declare dso_local i32 @serf_bucket_headers_create(i32*) #1

declare dso_local i32 @serf_linebuf_init(i32*) #1

declare dso_local i32* @serf_bucket_create(i32*, i32*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
