; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_tgt.c_opj_tgt_decode.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_tgt.c_opj_tgt_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64, %struct.TYPE_5__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @opj_tgt_decode(i32* %0, %struct.TYPE_4__* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca [31 x %struct.TYPE_5__*], align 16
  %10 = alloca %struct.TYPE_5__**, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = getelementptr inbounds [31 x %struct.TYPE_5__*], [31 x %struct.TYPE_5__*]* %9, i64 0, i64 0
  store %struct.TYPE_5__** %13, %struct.TYPE_5__*** %10, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = load i64, i64* %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i64 %17
  store %struct.TYPE_5__* %18, %struct.TYPE_5__** %11, align 8
  br label %19

19:                                               ; preds = %24, %4
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = icmp ne %struct.TYPE_5__* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %26 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %26, i32 1
  store %struct.TYPE_5__** %27, %struct.TYPE_5__*** %10, align 8
  store %struct.TYPE_5__* %25, %struct.TYPE_5__** %26, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 2
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  store %struct.TYPE_5__* %30, %struct.TYPE_5__** %11, align 8
  br label %19

31:                                               ; preds = %19
  store i64 0, i64* %12, align 8
  br label %32

32:                                               ; preds = %79, %31
  %33 = load i64, i64* %12, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp sgt i64 %33, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load i64, i64* %12, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  br label %46

42:                                               ; preds = %32
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %12, align 8
  br label %46

46:                                               ; preds = %42, %38
  br label %47

47:                                               ; preds = %70, %46
  %48 = load i64, i64* %12, align 8
  %49 = load i64, i64* %8, align 8
  %50 = icmp slt i64 %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = load i64, i64* %12, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp slt i64 %52, %55
  br label %57

57:                                               ; preds = %51, %47
  %58 = phi i1 [ false, %47 ], [ %56, %51 ]
  br i1 %58, label %59, label %71

59:                                               ; preds = %57
  %60 = load i32*, i32** %5, align 8
  %61 = call i64 @opj_bio_read(i32* %60, i32 1)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = load i64, i64* %12, align 8
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  store i64 %64, i64* %66, align 8
  br label %70

67:                                               ; preds = %59
  %68 = load i64, i64* %12, align 8
  %69 = add nsw i64 %68, 1
  store i64 %69, i64* %12, align 8
  br label %70

70:                                               ; preds = %67, %63
  br label %47

71:                                               ; preds = %57
  %72 = load i64, i64* %12, align 8
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  store i64 %72, i64* %74, align 8
  %75 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %10, align 8
  %76 = getelementptr inbounds [31 x %struct.TYPE_5__*], [31 x %struct.TYPE_5__*]* %9, i64 0, i64 0
  %77 = icmp eq %struct.TYPE_5__** %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %71
  br label %83

79:                                               ; preds = %71
  %80 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %80, i32 -1
  store %struct.TYPE_5__** %81, %struct.TYPE_5__*** %10, align 8
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %81, align 8
  store %struct.TYPE_5__* %82, %struct.TYPE_5__** %11, align 8
  br label %32

83:                                               ; preds = %78
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* %8, align 8
  %88 = icmp slt i64 %86, %87
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i32 1, i32 0
  %91 = sext i32 %90 to i64
  ret i64 %91
}

declare dso_local i64 @opj_bio_read(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
