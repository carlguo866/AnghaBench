; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vp56.c_vp56_idct_add.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vp56.c_vp56_idct_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (i32*, i32, i32*)*, i32 (i32*, i32, i32*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32*, i32, i32*, i32)* @vp56_idct_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vp56_idct_add(%struct.TYPE_5__* %0, i32* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* %10, align 4
  %12 = icmp sgt i32 %11, 10
  br i1 %12, label %13, label %22

13:                                               ; preds = %5
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i32 (i32*, i32, i32*)*, i32 (i32*, i32, i32*)** %16, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load i32*, i32** %9, align 8
  %21 = call i32 %17(i32* %18, i32 %19, i32* %20)
  br label %40

22:                                               ; preds = %5
  %23 = load i32, i32* %10, align 4
  %24 = icmp sgt i32 %23, 1
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load i32*, i32** %9, align 8
  %29 = call i32 @ff_vp3dsp_idct10_add(i32* %26, i32 %27, i32* %28)
  br label %39

30:                                               ; preds = %22
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32 (i32*, i32, i32*)*, i32 (i32*, i32, i32*)** %33, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load i32*, i32** %9, align 8
  %38 = call i32 %34(i32* %35, i32 %36, i32* %37)
  br label %39

39:                                               ; preds = %30, %25
  br label %40

40:                                               ; preds = %39, %13
  ret void
}

declare dso_local i32 @ff_vp3dsp_idct10_add(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
