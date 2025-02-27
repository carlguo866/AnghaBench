; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/sound/extr_mix.c_mix_32_to_16l_stereo.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/sound/extr_mix.c_mix_32_to_16l_stereo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXOUT = common dso_local global i32 0, align 4
@MINOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mix_32_to_16l_stereo(i16* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i16*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i16* %0, i16** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  br label %9

9:                                                ; preds = %42, %3
  %10 = load i32, i32* %6, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %45

12:                                               ; preds = %9
  %13 = load i16*, i16** %4, align 8
  %14 = load i16, i16* %13, align 2
  %15 = sext i16 %14 to i32
  store i32 %15, i32* %8, align 4
  store i32 %15, i32* %7, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = getelementptr inbounds i32, i32* %16, i32 1
  store i32* %17, i32** %5, align 8
  %18 = load i32, i32* %16, align 4
  %19 = load i32, i32* %7, align 4
  %20 = add nsw i32 %19, %18
  store i32 %20, i32* %7, align 4
  %21 = load i32*, i32** %5, align 8
  %22 = getelementptr inbounds i32, i32* %21, i32 1
  store i32* %22, i32** %5, align 8
  %23 = load i32, i32* %21, align 4
  %24 = load i32, i32* %8, align 4
  %25 = add nsw i32 %24, %23
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @MAXOUT, align 4
  %28 = load i32, i32* @MINOUT, align 4
  %29 = call i32 @Limit(i32 %26, i32 %27, i32 %28)
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @MAXOUT, align 4
  %32 = load i32, i32* @MINOUT, align 4
  %33 = call i32 @Limit(i32 %30, i32 %31, i32 %32)
  %34 = load i32, i32* %7, align 4
  %35 = trunc i32 %34 to i16
  %36 = load i16*, i16** %4, align 8
  %37 = getelementptr inbounds i16, i16* %36, i32 1
  store i16* %37, i16** %4, align 8
  store i16 %35, i16* %36, align 2
  %38 = load i32, i32* %8, align 4
  %39 = trunc i32 %38 to i16
  %40 = load i16*, i16** %4, align 8
  %41 = getelementptr inbounds i16, i16* %40, i32 1
  store i16* %41, i16** %4, align 8
  store i16 %39, i16* %40, align 2
  br label %42

42:                                               ; preds = %12
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %6, align 4
  br label %9

45:                                               ; preds = %9
  ret void
}

declare dso_local i32 @Limit(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
