; ModuleID = '/home/carl/AnghaBench/vlc/modules/audio_filter/extr_scaletempo.c_output_overlap_float.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/audio_filter/extr_scaletempo.c_output_overlap_float.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { float*, float*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i8*, i32)* @output_overlap_float to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_overlap_float(%struct.TYPE_4__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca float*, align 8
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %7, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = bitcast i8* %16 to float*
  store float* %17, float** %8, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load float*, float** %19, align 8
  store float* %20, float** %9, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load float*, float** %22, align 8
  store float* %23, float** %10, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = add i32 %26, %27
  %29 = zext i32 %28 to i64
  %30 = inttoptr i64 %29 to float*
  store float* %30, float** %11, align 8
  store i32 0, i32* %12, align 4
  br label %31

31:                                               ; preds = %55, %3
  %32 = load i32, i32* %12, align 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = icmp ult i32 %32, %35
  br i1 %36, label %37, label %58

37:                                               ; preds = %31
  %38 = load float*, float** %10, align 8
  %39 = load float, float* %38, align 4
  %40 = load float*, float** %9, align 8
  %41 = getelementptr inbounds float, float* %40, i32 1
  store float* %41, float** %9, align 8
  %42 = load float, float* %40, align 4
  %43 = load float*, float** %10, align 8
  %44 = load float, float* %43, align 4
  %45 = load float*, float** %11, align 8
  %46 = getelementptr inbounds float, float* %45, i32 1
  store float* %46, float** %11, align 8
  %47 = load float, float* %45, align 4
  %48 = fsub float %44, %47
  %49 = fmul float %42, %48
  %50 = fsub float %39, %49
  %51 = load float*, float** %8, align 8
  %52 = getelementptr inbounds float, float* %51, i32 1
  store float* %52, float** %8, align 8
  store float %50, float* %51, align 4
  %53 = load float*, float** %10, align 8
  %54 = getelementptr inbounds float, float* %53, i32 1
  store float* %54, float** %10, align 8
  br label %55

55:                                               ; preds = %37
  %56 = load i32, i32* %12, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %12, align 4
  br label %31

58:                                               ; preds = %31
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
