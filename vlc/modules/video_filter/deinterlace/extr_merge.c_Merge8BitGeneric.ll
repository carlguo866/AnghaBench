; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_filter/deinterlace/extr_merge.c_Merge8BitGeneric.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_filter/deinterlace/extr_merge.c_Merge8BitGeneric.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Merge8BitGeneric(i8* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to i32*
  store i32* %13, i32** %9, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** %10, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = bitcast i8* %16 to i32*
  store i32* %17, i32** %11, align 8
  br label %18

18:                                               ; preds = %32, %4
  %19 = load i64, i64* %8, align 8
  %20 = icmp ugt i64 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %18
  %22 = load i32*, i32** %10, align 8
  %23 = getelementptr inbounds i32, i32* %22, i32 1
  store i32* %23, i32** %10, align 8
  %24 = load i32, i32* %22, align 4
  %25 = load i32*, i32** %11, align 8
  %26 = getelementptr inbounds i32, i32* %25, i32 1
  store i32* %26, i32** %11, align 8
  %27 = load i32, i32* %25, align 4
  %28 = add nsw i32 %24, %27
  %29 = ashr i32 %28, 1
  %30 = load i32*, i32** %9, align 8
  %31 = getelementptr inbounds i32, i32* %30, i32 1
  store i32* %31, i32** %9, align 8
  store i32 %29, i32* %30, align 4
  br label %32

32:                                               ; preds = %21
  %33 = load i64, i64* %8, align 8
  %34 = add i64 %33, -1
  store i64 %34, i64* %8, align 8
  br label %18

35:                                               ; preds = %18
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
