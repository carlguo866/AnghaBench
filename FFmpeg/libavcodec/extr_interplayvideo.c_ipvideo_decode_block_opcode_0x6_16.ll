; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_interplayvideo.c_ipvideo_decode_block_opcode_0x6_16.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_interplayvideo.c_ipvideo_decode_block_opcode_0x6_16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"motion bytes = %d, %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32*)* @ipvideo_decode_block_opcode_0x6_16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipvideo_decode_block_opcode_0x6_16(%struct.TYPE_4__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  %9 = call signext i8 @bytestream2_get_byte(i32* %8)
  store i8 %9, i8* %5, align 1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  %12 = call signext i8 @bytestream2_get_byte(i32* %11)
  store i8 %12, i8* %6, align 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i8, i8* %5, align 1
  %17 = load i8, i8* %6, align 1
  %18 = call i32 @ff_tlog(i32 %15, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8 signext %16, i8 signext %17)
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** %4, align 8
  %24 = load i8, i8* %5, align 1
  %25 = load i8, i8* %6, align 1
  %26 = call i32 @copy_from(%struct.TYPE_4__* %19, i32 %22, i32* %23, i8 signext %24, i8 signext %25)
  ret i32 %26
}

declare dso_local signext i8 @bytestream2_get_byte(i32*) #1

declare dso_local i32 @ff_tlog(i32, i8*, i8 signext, i8 signext) #1

declare dso_local i32 @copy_from(%struct.TYPE_4__*, i32, i32*, i8 signext, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
