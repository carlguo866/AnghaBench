; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-x264/extr_obs-x264.c_obs_x264_defaults.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-x264/extr_obs-x264.c_obs_x264_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"bitrate\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"use_bufsize\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"buffer_size\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"keyint_sec\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"crf\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"rate_control\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"CBR\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"preset\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"veryfast\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"profile\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"tune\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"x264opts\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @obs_x264_defaults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @obs_x264_defaults(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = call i32 @obs_data_set_default_int(i32* %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 2500)
  %5 = load i32*, i32** %2, align 8
  %6 = call i32 @obs_data_set_default_bool(i32* %5, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @obs_data_set_default_int(i32* %7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 2500)
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @obs_data_set_default_int(i32* %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @obs_data_set_default_int(i32* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 23)
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @obs_data_set_default_string(i32* %13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %15 = load i32*, i32** %2, align 8
  %16 = call i32 @obs_data_set_default_string(i32* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 @obs_data_set_default_string(i32* %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0))
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 @obs_data_set_default_string(i32* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0))
  %21 = load i32*, i32** %2, align 8
  %22 = call i32 @obs_data_set_default_string(i32* %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0))
  ret void
}

declare dso_local i32 @obs_data_set_default_int(i32*, i8*, i32) #1

declare dso_local i32 @obs_data_set_default_bool(i32*, i8*, i32) #1

declare dso_local i32 @obs_data_set_default_string(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
