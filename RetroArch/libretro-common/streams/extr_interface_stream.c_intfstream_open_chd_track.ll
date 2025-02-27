; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/streams/extr_interface_stream.c_intfstream_open_chd_track.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/streams/extr_interface_stream.c_intfstream_open_chd_track.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@INTFSTREAM_CHD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @intfstream_open_chd_track(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_5__, align 4
  %11 = alloca i32*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* null, i32** %11, align 8
  %12 = load i32, i32* @INTFSTREAM_CHD, align 4
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* %9, align 4
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = call i64 @intfstream_init(%struct.TYPE_5__* %10)
  %18 = inttoptr i64 %17 to i32*
  store i32* %18, i32** %11, align 8
  %19 = load i32*, i32** %11, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %4
  store i32* null, i32** %5, align 8
  br label %41

22:                                               ; preds = %4
  %23 = load i32*, i32** %11, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @intfstream_open(i32* %23, i8* %24, i32 %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %22
  br label %32

30:                                               ; preds = %22
  %31 = load i32*, i32** %11, align 8
  store i32* %31, i32** %5, align 8
  br label %41

32:                                               ; preds = %29
  %33 = load i32*, i32** %11, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load i32*, i32** %11, align 8
  %37 = call i32 @intfstream_close(i32* %36)
  %38 = load i32*, i32** %11, align 8
  %39 = call i32 @free(i32* %38)
  br label %40

40:                                               ; preds = %35, %32
  store i32* null, i32** %5, align 8
  br label %41

41:                                               ; preds = %40, %30, %21
  %42 = load i32*, i32** %5, align 8
  ret i32* %42
}

declare dso_local i64 @intfstream_init(%struct.TYPE_5__*) #1

declare dso_local i32 @intfstream_open(i32*, i8*, i32, i32) #1

declare dso_local i32 @intfstream_close(i32*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
