; ModuleID = '/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_vorbisfile.c__ov_initprime.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_vorbisfile.c__ov_initprime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }

@INITSET = common dso_local global i64 0, align 8
@OV_HOLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @_ov_initprime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_ov_initprime(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  store i32* %7, i32** %4, align 8
  br label %8

8:                                                ; preds = %1, %31
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @INITSET, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %8
  %15 = load i32*, i32** %4, align 8
  %16 = call i64 @vorbis_synthesis_pcmout(i32* %15, i32* null)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  br label %32

19:                                               ; preds = %14
  br label %20

20:                                               ; preds = %19, %8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %22 = call i32 @_fetch_and_process_packet(%struct.TYPE_4__* %21, i32* null, i32 1, i32 0)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @OV_HOLE, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %2, align 4
  br label %33

31:                                               ; preds = %25, %20
  br label %8

32:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %29
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i64 @vorbis_synthesis_pcmout(i32*, i32*) #1

declare dso_local i32 @_fetch_and_process_packet(%struct.TYPE_4__*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
