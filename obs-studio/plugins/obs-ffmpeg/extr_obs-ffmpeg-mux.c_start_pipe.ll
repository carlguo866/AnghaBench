; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-mux.c_start_pipe.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-mux.c_start_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ffmpeg_muxer = type { i32 }
%struct.dstr = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ffmpeg_muxer*, i8*)* @start_pipe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @start_pipe(%struct.ffmpeg_muxer* %0, i8* %1) #0 {
  %3 = alloca %struct.ffmpeg_muxer*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dstr, align 4
  store %struct.ffmpeg_muxer* %0, %struct.ffmpeg_muxer** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %3, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i32 @build_command_line(%struct.ffmpeg_muxer* %6, %struct.dstr* %5, i8* %7)
  %9 = getelementptr inbounds %struct.dstr, %struct.dstr* %5, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @os_process_pipe_create(i32 %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %3, align 8
  %13 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = call i32 @dstr_free(%struct.dstr* %5)
  ret void
}

declare dso_local i32 @build_command_line(%struct.ffmpeg_muxer*, %struct.dstr*, i8*) #1

declare dso_local i32 @os_process_pipe_create(i32, i8*) #1

declare dso_local i32 @dstr_free(%struct.dstr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
