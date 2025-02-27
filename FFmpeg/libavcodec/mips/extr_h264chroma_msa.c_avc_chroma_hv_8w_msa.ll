; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264chroma_msa.c_avc_chroma_hv_8w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264chroma_msa.c_avc_chroma_hv_8w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32, i32, i32, i32, i32)* @avc_chroma_hv_8w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @avc_chroma_hv_8w_msa(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 4, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %8
  %20 = load i32*, i32** %9, align 8
  %21 = load i32*, i32** %10, align 8
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* %13, align 4
  %25 = load i32, i32* %14, align 4
  %26 = load i32, i32* %15, align 4
  %27 = call i32 @avc_chroma_hv_8x4_msa(i32* %20, i32* %21, i32 %22, i32 %23, i32 %24, i32 %25, i32 %26)
  br label %41

28:                                               ; preds = %8
  %29 = load i32, i32* %16, align 4
  %30 = icmp eq i32 8, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %28
  %32 = load i32*, i32** %9, align 8
  %33 = load i32*, i32** %10, align 8
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* %14, align 4
  %38 = load i32, i32* %15, align 4
  %39 = call i32 @avc_chroma_hv_8x8_msa(i32* %32, i32* %33, i32 %34, i32 %35, i32 %36, i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %31, %28
  br label %41

41:                                               ; preds = %40, %19
  ret void
}

declare dso_local i32 @avc_chroma_hv_8x4_msa(i32*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @avc_chroma_hv_8x8_msa(i32*, i32*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
