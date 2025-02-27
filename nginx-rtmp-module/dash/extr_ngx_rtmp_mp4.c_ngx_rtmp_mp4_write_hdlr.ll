; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/dash/extr_ngx_rtmp_mp4.c_ngx_rtmp_mp4_write_hdlr.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/dash/extr_ngx_rtmp_mp4.c_ngx_rtmp_mp4_write_hdlr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"hdlr\00", align 1
@NGX_RTMP_MP4_VIDEO_TRACK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"vide\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"soun\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"VideoHandler\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"SoundHandler\00", align 1
@NGX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64)* @ngx_rtmp_mp4_write_hdlr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_rtmp_mp4_write_hdlr(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i32* @ngx_rtmp_mp4_start_box(i32* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32* %7, i32** %5, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @ngx_rtmp_mp4_field_32(i32* %8, i32 0)
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @ngx_rtmp_mp4_field_32(i32* %10, i32 0)
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* @NGX_RTMP_MP4_VIDEO_TRACK, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @ngx_rtmp_mp4_box(i32* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %21

18:                                               ; preds = %2
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @ngx_rtmp_mp4_box(i32* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %21

21:                                               ; preds = %18, %15
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @ngx_rtmp_mp4_field_32(i32* %22, i32 0)
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @ngx_rtmp_mp4_field_32(i32* %24, i32 0)
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @ngx_rtmp_mp4_field_32(i32* %26, i32 0)
  %28 = load i64, i64* %4, align 8
  %29 = load i64, i64* @NGX_RTMP_MP4_VIDEO_TRACK, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %21
  %32 = load i32*, i32** %3, align 8
  %33 = call i32 @ngx_rtmp_mp4_data(i32* %32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 13)
  br label %37

34:                                               ; preds = %21
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 @ngx_rtmp_mp4_data(i32* %35, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 13)
  br label %37

37:                                               ; preds = %34, %31
  %38 = load i32*, i32** %3, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @ngx_rtmp_mp4_update_box_size(i32* %38, i32* %39)
  %41 = load i32, i32* @NGX_OK, align 4
  ret i32 %41
}

declare dso_local i32* @ngx_rtmp_mp4_start_box(i32*, i8*) #1

declare dso_local i32 @ngx_rtmp_mp4_field_32(i32*, i32) #1

declare dso_local i32 @ngx_rtmp_mp4_box(i32*, i8*) #1

declare dso_local i32 @ngx_rtmp_mp4_data(i32*, i8*, i32) #1

declare dso_local i32 @ngx_rtmp_mp4_update_box_size(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
