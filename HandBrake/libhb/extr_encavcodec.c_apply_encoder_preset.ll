; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_encavcodec.c_apply_encoder_preset.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_encavcodec.c_apply_encoder_preset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"preset\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32**, i8*)* @apply_encoder_preset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apply_encoder_preset(i32 %0, i32** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i32** %1, i32*** %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %21 [
    i32 129, label %9
    i32 128, label %13
    i32 131, label %17
    i32 130, label %17
  ]

9:                                                ; preds = %3
  %10 = load i32**, i32*** %6, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = call i32 @apply_vp8_preset(i32** %10, i8* %11)
  store i32 %12, i32* %4, align 4
  br label %23

13:                                               ; preds = %3
  %14 = load i32**, i32*** %6, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = call i32 @apply_vp9_preset(i32** %14, i8* %15)
  store i32 %16, i32* %4, align 4
  br label %23

17:                                               ; preds = %3, %3
  %18 = load i32**, i32*** %6, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 @av_dict_set(i32** %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %19, i32 0)
  br label %22

21:                                               ; preds = %3
  br label %22

22:                                               ; preds = %21, %17
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %22, %13, %9
  %24 = load i32, i32* %4, align 4
  ret i32 %24
}

declare dso_local i32 @apply_vp8_preset(i32**, i8*) #1

declare dso_local i32 @apply_vp9_preset(i32**, i8*) #1

declare dso_local i32 @av_dict_set(i32**, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
