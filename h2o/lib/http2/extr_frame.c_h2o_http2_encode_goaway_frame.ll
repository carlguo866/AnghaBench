; ModuleID = '/home/carl/AnghaBench/h2o/lib/http2/extr_frame.c_h2o_http2_encode_goaway_frame.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/http2/extr_frame.c_h2o_http2_encode_goaway_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@H2O_HTTP2_FRAME_TYPE_GOAWAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @h2o_http2_encode_goaway_frame(i32** %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_3__, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = bitcast %struct.TYPE_3__* %5 to i64*
  store i64 %3, i64* %10, align 4
  store i32** %0, i32*** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  %11 = load i32**, i32*** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 8, %13
  %15 = load i32, i32* @H2O_HTTP2_FRAME_TYPE_GOAWAY, align 4
  %16 = call i32* @allocate_frame(i32** %11, i32 %14, i32 %15, i32 0, i32 0)
  store i32* %16, i32** %9, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32* @h2o_http2_encode32u(i32* %17, i32 %18)
  store i32* %19, i32** %9, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sub nsw i32 0, %21
  %23 = call i32* @h2o_http2_encode32u(i32* %20, i32 %22)
  store i32* %23, i32** %9, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @h2o_memcpy(i32* %24, i32 %26, i32 %28)
  ret void
}

declare dso_local i32* @allocate_frame(i32**, i32, i32, i32, i32) #1

declare dso_local i32* @h2o_http2_encode32u(i32*, i32) #1

declare dso_local i32 @h2o_memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
