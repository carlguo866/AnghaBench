; ModuleID = '/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_codebook.c_vorbis_book_decodev_set.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_codebook.c_vorbis_book_decodev_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, float*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @vorbis_book_decodev_set(%struct.TYPE_4__* %0, float* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca float*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store float* %1, float** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %68

19:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %20

20:                                               ; preds = %66, %19
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %67

24:                                               ; preds = %20
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = call i32 @decode_packed_entry_number(%struct.TYPE_4__* %25, i32* %26)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i64 -1, i64* %5, align 8
  br label %81

31:                                               ; preds = %24
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load float*, float** %33, align 8
  %35 = load i32, i32* %12, align 4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = mul nsw i32 %35, %38
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds float, float* %34, i64 %40
  store float* %41, float** %13, align 8
  store i32 0, i32* %11, align 4
  br label %42

42:                                               ; preds = %54, %31
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = load i32, i32* %11, align 4
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %47, %50
  br label %52

52:                                               ; preds = %46, %42
  %53 = phi i1 [ false, %42 ], [ %51, %46 ]
  br i1 %53, label %54, label %66

54:                                               ; preds = %52
  %55 = load float*, float** %13, align 8
  %56 = load i32, i32* %11, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %11, align 4
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds float, float* %55, i64 %58
  %60 = load float, float* %59, align 4
  %61 = load float*, float** %7, align 8
  %62 = load i32, i32* %10, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %10, align 4
  %64 = sext i32 %62 to i64
  %65 = getelementptr inbounds float, float* %61, i64 %64
  store float %60, float* %65, align 4
  br label %42

66:                                               ; preds = %52
  br label %20

67:                                               ; preds = %20
  br label %80

68:                                               ; preds = %4
  store i32 0, i32* %14, align 4
  br label %69

69:                                               ; preds = %73, %68
  %70 = load i32, i32* %14, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %69
  %74 = load float*, float** %7, align 8
  %75 = load i32, i32* %14, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %14, align 4
  %77 = sext i32 %75 to i64
  %78 = getelementptr inbounds float, float* %74, i64 %77
  store float 0.000000e+00, float* %78, align 4
  br label %69

79:                                               ; preds = %69
  br label %80

80:                                               ; preds = %79, %67
  store i64 0, i64* %5, align 8
  br label %81

81:                                               ; preds = %80, %30
  %82 = load i64, i64* %5, align 8
  ret i64 %82
}

declare dso_local i32 @decode_packed_entry_number(%struct.TYPE_4__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
