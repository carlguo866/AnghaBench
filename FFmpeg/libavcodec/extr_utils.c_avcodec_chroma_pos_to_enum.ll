; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_utils.c_avcodec_chroma_pos_to_enum.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_utils.c_avcodec_chroma_pos_to_enum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AVCHROMA_LOC_UNSPECIFIED = common dso_local global i32 0, align 4
@AVCHROMA_LOC_NB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @avcodec_chroma_pos_to_enum(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @AVCHROMA_LOC_UNSPECIFIED, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %6, align 4
  br label %11

11:                                               ; preds = %30, %2
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @AVCHROMA_LOC_NB, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %33

15:                                               ; preds = %11
  %16 = load i32, i32* %6, align 4
  %17 = call i64 @avcodec_enum_to_chroma_pos(i32* %7, i32* %8, i32 %16)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %15
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %3, align 4
  br label %35

29:                                               ; preds = %23, %19, %15
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %6, align 4
  br label %11

33:                                               ; preds = %11
  %34 = load i32, i32* @AVCHROMA_LOC_UNSPECIFIED, align 4
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %33, %27
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i64 @avcodec_enum_to_chroma_pos(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
