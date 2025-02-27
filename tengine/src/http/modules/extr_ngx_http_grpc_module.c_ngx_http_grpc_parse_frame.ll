; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_grpc_module.c_ngx_http_grpc_parse_frame.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_grpc_module.c_ngx_http_grpc_parse_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32*, i32* }

@NGX_HTTP_V2_DEFAULT_FRAME_SIZE = common dso_local global i32 0, align 4
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"upstream sent too large http2 frame: %uz\00", align 1
@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"grpc frame: %d, len: %uz, f:%d, i:%ui\00", align 1
@NGX_OK = common dso_local global i32 0, align 4
@NGX_AGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.TYPE_10__*, %struct.TYPE_11__*)* @ngx_http_grpc_parse_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_grpc_parse_frame(%struct.TYPE_9__* %0, %struct.TYPE_10__* %1, %struct.TYPE_11__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %7, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %10, align 4
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %9, align 8
  br label %17

17:                                               ; preds = %127, %3
  %18 = load i32*, i32** %9, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ult i32* %18, %21
  br i1 %22, label %23, label %130

23:                                               ; preds = %17
  %24 = load i32*, i32** %9, align 8
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %10, align 4
  switch i32 %26, label %126 [
    i32 133, label %27
    i32 137, label %32
    i32 136, label %39
    i32 128, label %63
    i32 138, label %67
    i32 132, label %71
    i32 131, label %77
    i32 130, label %84
    i32 129, label %91
    i32 134, label %125
    i32 135, label %125
  ]

27:                                               ; preds = %23
  %28 = load i32, i32* %8, align 4
  %29 = shl i32 %28, 16
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  store i32 137, i32* %10, align 4
  br label %126

32:                                               ; preds = %23
  %33 = load i32, i32* %8, align 4
  %34 = shl i32 %33, 8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  store i32 136, i32* %10, align 4
  br label %126

39:                                               ; preds = %23
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @NGX_HTTP_V2_DEFAULT_FRAME_SIZE, align 4
  %49 = icmp sgt i32 %47, %48
  br i1 %49, label %50, label %62

50:                                               ; preds = %39
  %51 = load i32, i32* @NGX_LOG_ERR, align 4
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @ngx_log_error(i32 %51, i32 %56, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* @NGX_ERROR, align 4
  store i32 %61, i32* %4, align 4
  br label %138

62:                                               ; preds = %39
  store i32 128, i32* %10, align 4
  br label %126

63:                                               ; preds = %23
  %64 = load i32, i32* %8, align 4
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 4
  store i32 138, i32* %10, align 4
  br label %126

67:                                               ; preds = %23
  %68 = load i32, i32* %8, align 4
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 4
  store i32 132, i32* %10, align 4
  br label %126

71:                                               ; preds = %23
  %72 = load i32, i32* %8, align 4
  %73 = and i32 %72, 127
  %74 = shl i32 %73, 24
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 4
  store i32 %74, i32* %76, align 4
  store i32 131, i32* %10, align 4
  br label %126

77:                                               ; preds = %23
  %78 = load i32, i32* %8, align 4
  %79 = shl i32 %78, 16
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 4
  store i32 130, i32* %10, align 4
  br label %126

84:                                               ; preds = %23
  %85 = load i32, i32* %8, align 4
  %86 = shl i32 %85, 8
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 4
  store i32 129, i32* %10, align 4
  br label %126

91:                                               ; preds = %23
  %92 = load i32, i32* %8, align 4
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 4
  %97 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @ngx_log_debug4(i32 %97, i32 %102, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %105, i32 %108, i32 %111, i32 %114)
  %116 = load i32*, i32** %9, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 1
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 0
  store i32* %117, i32** %119, align 8
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 0
  store i32 134, i32* %121, align 4
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 5
  store i32 0, i32* %123, align 4
  %124 = load i32, i32* @NGX_OK, align 4
  store i32 %124, i32* %4, align 4
  br label %138

125:                                              ; preds = %23, %23
  br label %126

126:                                              ; preds = %23, %125, %84, %77, %71, %67, %63, %62, %32, %27
  br label %127

127:                                              ; preds = %126
  %128 = load i32*, i32** %9, align 8
  %129 = getelementptr inbounds i32, i32* %128, i32 1
  store i32* %129, i32** %9, align 8
  br label %17

130:                                              ; preds = %17
  %131 = load i32*, i32** %9, align 8
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 0
  store i32* %131, i32** %133, align 8
  %134 = load i32, i32* %10, align 4
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 4
  %137 = load i32, i32* @NGX_AGAIN, align 4
  store i32 %137, i32* %4, align 4
  br label %138

138:                                              ; preds = %130, %91, %50
  %139 = load i32, i32* %4, align 4
  ret i32 %139
}

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @ngx_log_debug4(i32, i32, i32, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
