; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/dash/extr_ngx_rtmp_mp4.c_ngx_rtmp_mp4_write_minf.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/dash/extr_ngx_rtmp_mp4.c_ngx_rtmp_mp4_write_minf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"minf\00", align 1
@NGX_RTMP_MP4_VIDEO_TRACK = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @ngx_rtmp_mp4_write_minf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_rtmp_mp4_write_minf(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32*, i32** %5, align 8
  %9 = call i32* @ngx_rtmp_mp4_start_box(i32* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32* %9, i32** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @NGX_RTMP_MP4_VIDEO_TRACK, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @ngx_rtmp_mp4_write_vmhd(i32* %14)
  br label %19

16:                                               ; preds = %3
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @ngx_rtmp_mp4_write_smhd(i32* %17)
  br label %19

19:                                               ; preds = %16, %13
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @ngx_rtmp_mp4_write_dinf(i32* %20)
  %22 = load i32*, i32** %4, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @ngx_rtmp_mp4_write_stbl(i32* %22, i32* %23, i32 %24)
  %26 = load i32*, i32** %5, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 @ngx_rtmp_mp4_update_box_size(i32* %26, i32* %27)
  %29 = load i32, i32* @NGX_OK, align 4
  ret i32 %29
}

declare dso_local i32* @ngx_rtmp_mp4_start_box(i32*, i8*) #1

declare dso_local i32 @ngx_rtmp_mp4_write_vmhd(i32*) #1

declare dso_local i32 @ngx_rtmp_mp4_write_smhd(i32*) #1

declare dso_local i32 @ngx_rtmp_mp4_write_dinf(i32*) #1

declare dso_local i32 @ngx_rtmp_mp4_write_stbl(i32*, i32*, i32) #1

declare dso_local i32 @ngx_rtmp_mp4_update_box_size(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
