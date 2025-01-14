; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_mp4_module.c_ngx_rtmp_mp4_next.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_mp4_module.c_ngx_rtmp_mp4_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@NGX_OK = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.TYPE_10__*)* @ngx_rtmp_mp4_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_rtmp_mp4_next(i32* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %8 = call i64 @ngx_rtmp_mp4_next_time(i32* %6, %struct.TYPE_10__* %7)
  %9 = load i64, i64* @NGX_OK, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %35, label %11

11:                                               ; preds = %2
  %12 = load i32*, i32** %4, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %14 = call i64 @ngx_rtmp_mp4_next_key(i32* %12, %struct.TYPE_10__* %13)
  %15 = load i64, i64* @NGX_OK, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %35, label %17

17:                                               ; preds = %11
  %18 = load i32*, i32** %4, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %20 = call i64 @ngx_rtmp_mp4_next_chunk(i32* %18, %struct.TYPE_10__* %19)
  %21 = load i64, i64* @NGX_OK, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %35, label %23

23:                                               ; preds = %17
  %24 = load i32*, i32** %4, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %26 = call i64 @ngx_rtmp_mp4_next_size(i32* %24, %struct.TYPE_10__* %25)
  %27 = load i64, i64* @NGX_OK, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %35, label %29

29:                                               ; preds = %23
  %30 = load i32*, i32** %4, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %32 = call i64 @ngx_rtmp_mp4_next_delay(i32* %30, %struct.TYPE_10__* %31)
  %33 = load i64, i64* @NGX_OK, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %29, %23, %17, %11, %2
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  store i32 0, i32* %38, align 4
  %39 = load i64, i64* @NGX_ERROR, align 8
  store i64 %39, i64* %3, align 8
  br label %45

40:                                               ; preds = %29
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  store i32 1, i32* %43, align 4
  %44 = load i64, i64* @NGX_OK, align 8
  store i64 %44, i64* %3, align 8
  br label %45

45:                                               ; preds = %40, %35
  %46 = load i64, i64* %3, align 8
  ret i64 %46
}

declare dso_local i64 @ngx_rtmp_mp4_next_time(i32*, %struct.TYPE_10__*) #1

declare dso_local i64 @ngx_rtmp_mp4_next_key(i32*, %struct.TYPE_10__*) #1

declare dso_local i64 @ngx_rtmp_mp4_next_chunk(i32*, %struct.TYPE_10__*) #1

declare dso_local i64 @ngx_rtmp_mp4_next_size(i32*, %struct.TYPE_10__*) #1

declare dso_local i64 @ngx_rtmp_mp4_next_delay(i32*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
