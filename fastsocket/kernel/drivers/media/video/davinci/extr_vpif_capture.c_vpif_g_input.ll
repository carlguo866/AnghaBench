; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpif_capture.c_vpif_g_input.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpif_capture.c_vpif_g_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.vpif_fh = type { %struct.channel_obj* }
%struct.channel_obj = type { %struct.video_obj }
%struct.video_obj = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32*)* @vpif_g_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpif_g_input(%struct.file* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.vpif_fh*, align 8
  %8 = alloca %struct.channel_obj*, align 8
  %9 = alloca %struct.video_obj*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.vpif_fh*
  store %struct.vpif_fh* %11, %struct.vpif_fh** %7, align 8
  %12 = load %struct.vpif_fh*, %struct.vpif_fh** %7, align 8
  %13 = getelementptr inbounds %struct.vpif_fh, %struct.vpif_fh* %12, i32 0, i32 0
  %14 = load %struct.channel_obj*, %struct.channel_obj** %13, align 8
  store %struct.channel_obj* %14, %struct.channel_obj** %8, align 8
  %15 = load %struct.channel_obj*, %struct.channel_obj** %8, align 8
  %16 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %15, i32 0, i32 0
  store %struct.video_obj* %16, %struct.video_obj** %9, align 8
  %17 = load %struct.video_obj*, %struct.video_obj** %9, align 8
  %18 = getelementptr inbounds %struct.video_obj, %struct.video_obj* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** %6, align 8
  store i32 %19, i32* %20, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
