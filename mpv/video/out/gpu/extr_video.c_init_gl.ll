; ModuleID = '/home/carl/AnghaBench/mpv/video/out/gpu/extr_video.c_init_gl.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/gpu/extr_video.c_init_gl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gl_video = type { i32, i8*, i8*, i8* }

@.str = private unnamed_addr constant [15 x i8] c"before init_gl\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"after init_gl\00", align 1
@MSGL_DEBUG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gl_video*)* @init_gl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_gl(%struct.gl_video* %0) #0 {
  %2 = alloca %struct.gl_video*, align 8
  store %struct.gl_video* %0, %struct.gl_video** %2, align 8
  %3 = load %struct.gl_video*, %struct.gl_video** %2, align 8
  %4 = call i32 @debug_check_gl(%struct.gl_video* %3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.gl_video*, %struct.gl_video** %2, align 8
  %6 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = call i8* @timer_pool_create(i32 %7)
  %9 = load %struct.gl_video*, %struct.gl_video** %2, align 8
  %10 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %9, i32 0, i32 3
  store i8* %8, i8** %10, align 8
  %11 = load %struct.gl_video*, %struct.gl_video** %2, align 8
  %12 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i8* @timer_pool_create(i32 %13)
  %15 = load %struct.gl_video*, %struct.gl_video** %2, align 8
  %16 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %15, i32 0, i32 2
  store i8* %14, i8** %16, align 8
  %17 = load %struct.gl_video*, %struct.gl_video** %2, align 8
  %18 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i8* @timer_pool_create(i32 %19)
  %21 = load %struct.gl_video*, %struct.gl_video** %2, align 8
  %22 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %21, i32 0, i32 1
  store i8* %20, i8** %22, align 8
  %23 = load %struct.gl_video*, %struct.gl_video** %2, align 8
  %24 = call i32 @debug_check_gl(%struct.gl_video* %23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %25 = load %struct.gl_video*, %struct.gl_video** %2, align 8
  %26 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @MSGL_DEBUG, align 4
  %29 = call i32 @ra_dump_tex_formats(i32 %27, i32 %28)
  %30 = load %struct.gl_video*, %struct.gl_video** %2, align 8
  %31 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @MSGL_DEBUG, align 4
  %34 = call i32 @ra_dump_img_formats(i32 %32, i32 %33)
  ret void
}

declare dso_local i32 @debug_check_gl(%struct.gl_video*, i8*) #1

declare dso_local i8* @timer_pool_create(i32) #1

declare dso_local i32 @ra_dump_tex_formats(i32, i32) #1

declare dso_local i32 @ra_dump_img_formats(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
