; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_matroskadec.c_matroska_aac_sri.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_matroskadec.c_matroska_aac_sri.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@avpriv_mpeg4audio_sample_rates = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @matroska_aac_sri to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @matroska_aac_sri(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %19, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32*, i32** @avpriv_mpeg4audio_sample_rates, align 8
  %7 = call i32 @FF_ARRAY_ELEMS(i32* %6)
  %8 = icmp slt i32 %5, %7
  br i1 %8, label %9, label %22

9:                                                ; preds = %4
  %10 = load i32*, i32** @avpriv_mpeg4audio_sample_rates, align 8
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %2, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %9
  br label %22

18:                                               ; preds = %9
  br label %19

19:                                               ; preds = %18
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %3, align 4
  br label %4

22:                                               ; preds = %17, %4
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i32 @FF_ARRAY_ELEMS(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
