; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264qpel_mmi.c_ff_avg_h264_qpel16_mc01_mmi.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264qpel_mmi.c_ff_avg_h264_qpel16_mc01_mmi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_avg_h264_qpel16_mc01_mmi(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [336 x i32], align 16
  %8 = alloca i32*, align 8
  %9 = alloca [256 x i32], align 16
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = getelementptr inbounds [336 x i32], [336 x i32]* %7, i64 0, i64 0
  %11 = getelementptr inbounds i32, i32* %10, i64 32
  store i32* %11, i32** %8, align 8
  %12 = getelementptr inbounds [336 x i32], [336 x i32]* %7, i64 0, i64 0
  %13 = load i32*, i32** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = mul nsw i32 %14, 2
  %16 = sext i32 %15 to i64
  %17 = sub i64 0, %16
  %18 = getelementptr inbounds i32, i32* %13, i64 %17
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @copy_block16_mmi(i32* %12, i32* %18, i32 16, i32 %19, i32 21)
  %21 = getelementptr inbounds [256 x i32], [256 x i32]* %9, i64 0, i64 0
  %22 = load i32*, i32** %8, align 8
  %23 = call i32 @put_h264_qpel16_v_lowpass_mmi(i32* %21, i32* %22, i32 16, i32 16)
  %24 = load i32*, i32** %4, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = getelementptr inbounds [256 x i32], [256 x i32]* %9, i64 0, i64 0
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @ff_avg_pixels16_l2_8_mmi(i32* %24, i32* %25, i32* %26, i32 %27, i32 16, i32 16, i32 16)
  ret void
}

declare dso_local i32 @copy_block16_mmi(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @put_h264_qpel16_v_lowpass_mmi(i32*, i32*, i32, i32) #1

declare dso_local i32 @ff_avg_pixels16_l2_8_mmi(i32*, i32*, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
