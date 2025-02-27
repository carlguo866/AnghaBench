; ModuleID = '/home/carl/AnghaBench/vlc/test/src/input/extr_demux-run.c_vlc_demux_process_url.c'
source_filename = "/home/carl/AnghaBench/vlc/test/src/input/extr_demux-run.c_vlc_demux_process_url.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_run_args = type { i32 }
%struct.TYPE_4__ = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Error: cannot create input stream: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vlc_demux_process_url(%struct.vlc_run_args* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vlc_run_args*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.vlc_run_args* %0, %struct.vlc_run_args** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.vlc_run_args*, %struct.vlc_run_args** %4, align 8
  %10 = call %struct.TYPE_4__* @libvlc_create(%struct.vlc_run_args* %9)
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %6, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %12 = icmp eq %struct.TYPE_4__* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %34

14:                                               ; preds = %2
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @VLC_OBJECT(i32 %17)
  %19 = load i8*, i8** %5, align 8
  %20 = call i32* @vlc_access_NewMRL(i32 %18, i8* %19)
  store i32* %20, i32** %7, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %14
  %24 = load i32, i32* @stderr, align 4
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 @fprintf(i32 %24, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %25)
  br label %27

27:                                               ; preds = %23, %14
  %28 = load %struct.vlc_run_args*, %struct.vlc_run_args** %4, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = call i32 @demux_process_stream(%struct.vlc_run_args* %28, i32* %29)
  store i32 %30, i32* %8, align 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %32 = call i32 @libvlc_release(%struct.TYPE_4__* %31)
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %27, %13
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local %struct.TYPE_4__* @libvlc_create(%struct.vlc_run_args*) #1

declare dso_local i32* @vlc_access_NewMRL(i32, i8*) #1

declare dso_local i32 @VLC_OBJECT(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @demux_process_stream(%struct.vlc_run_args*, i32*) #1

declare dso_local i32 @libvlc_release(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
