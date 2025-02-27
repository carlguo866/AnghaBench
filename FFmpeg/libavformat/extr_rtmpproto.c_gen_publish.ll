; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtmpproto.c_gen_publish.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtmpproto.c_gen_publish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i32, i32 }
%struct.TYPE_7__ = type { i32*, i32 }

@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Sending publish command for '%s'\0A\00", align 1
@RTMP_SOURCE_CHANNEL = common dso_local global i32 0, align 4
@RTMP_PT_INVOKE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"publish\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"live\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_8__*)* @gen_publish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gen_publish(i32* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_7__, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = load i32, i32* @AV_LOG_DEBUG, align 4
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = call i32 @av_log(i32* %9, i32 %10, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %13)
  %15 = load i32, i32* @RTMP_SOURCE_CHANNEL, align 4
  %16 = load i32, i32* @RTMP_PT_INVOKE, align 4
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i64 @strlen(i8* %19)
  %21 = add nsw i64 30, %20
  %22 = call i32 @ff_rtmp_packet_create(%struct.TYPE_7__* %6, i32 %15, i32 %16, i32 0, i64 %21)
  store i32 %22, i32* %8, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %3, align 4
  br label %47

26:                                               ; preds = %2
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  store i32 %29, i32* %30, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %7, align 8
  %33 = call i32 @ff_amf_write_string(i32** %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 8
  %38 = call i32 @ff_amf_write_number(i32** %7, i32 %37)
  %39 = call i32 @ff_amf_write_null(i32** %7)
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @ff_amf_write_string(i32** %7, i8* %42)
  %44 = call i32 @ff_amf_write_string(i32** %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %46 = call i32 @rtmp_send_packet(%struct.TYPE_8__* %45, %struct.TYPE_7__* %6, i32 1)
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %26, %24
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @av_log(i32*, i32, i8*, i8*) #1

declare dso_local i32 @ff_rtmp_packet_create(%struct.TYPE_7__*, i32, i32, i32, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @ff_amf_write_string(i32**, i8*) #1

declare dso_local i32 @ff_amf_write_number(i32**, i32) #1

declare dso_local i32 @ff_amf_write_null(i32**) #1

declare dso_local i32 @rtmp_send_packet(%struct.TYPE_8__*, %struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
