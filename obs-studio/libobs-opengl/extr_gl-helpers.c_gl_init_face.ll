; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-helpers.c_gl_init_face.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-helpers.c_gl_init_face.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"glCompressedTexImage2D\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"glTexImage2D\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gl_init_face(i32 %0, i32 %1, i64 %2, i32 %3, i32 %4, i32 %5, i64 %6, i64 %7, i64 %8, i32*** %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32***, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32**, align 8
  %23 = alloca i64, align 8
  store i32 %0, i32* %11, align 4
  store i32 %1, i32* %12, align 4
  store i64 %2, i64* %13, align 8
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i64 %6, i64* %17, align 8
  store i64 %7, i64* %18, align 8
  store i64 %8, i64* %19, align 8
  store i32*** %9, i32**** %20, align 8
  store i32 1, i32* %21, align 4
  %24 = load i32***, i32**** %20, align 8
  %25 = icmp ne i32*** %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %10
  %27 = load i32***, i32**** %20, align 8
  %28 = load i32**, i32*** %27, align 8
  br label %30

29:                                               ; preds = %10
  br label %30

30:                                               ; preds = %29, %26
  %31 = phi i32** [ %28, %26 ], [ null, %29 ]
  store i32** %31, i32*** %22, align 8
  store i64 0, i64* %23, align 8
  br label %32

32:                                               ; preds = %101, %30
  %33 = load i64, i64* %23, align 8
  %34 = load i64, i64* %13, align 8
  %35 = icmp slt i64 %33, %34
  br i1 %35, label %36, label %104

36:                                               ; preds = %32
  %37 = load i32, i32* %16, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %59

39:                                               ; preds = %36
  %40 = load i32, i32* %11, align 4
  %41 = load i64, i64* %23, align 8
  %42 = load i32, i32* %15, align 4
  %43 = load i64, i64* %17, align 8
  %44 = load i64, i64* %18, align 8
  %45 = load i64, i64* %19, align 8
  %46 = load i32**, i32*** %22, align 8
  %47 = icmp ne i32** %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %39
  %49 = load i32**, i32*** %22, align 8
  %50 = load i32*, i32** %49, align 8
  br label %52

51:                                               ; preds = %39
  br label %52

52:                                               ; preds = %51, %48
  %53 = phi i32* [ %50, %48 ], [ null, %51 ]
  %54 = call i32 @glCompressedTexImage2D(i32 %40, i64 %41, i32 %42, i64 %43, i64 %44, i32 0, i64 %45, i32* %53)
  %55 = call i32 @gl_success(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %52
  store i32 0, i32* %21, align 4
  br label %58

58:                                               ; preds = %57, %52
  br label %80

59:                                               ; preds = %36
  %60 = load i32, i32* %11, align 4
  %61 = load i64, i64* %23, align 8
  %62 = load i32, i32* %15, align 4
  %63 = load i64, i64* %17, align 8
  %64 = load i64, i64* %18, align 8
  %65 = load i32, i32* %14, align 4
  %66 = load i32, i32* %12, align 4
  %67 = load i32**, i32*** %22, align 8
  %68 = icmp ne i32** %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %59
  %70 = load i32**, i32*** %22, align 8
  %71 = load i32*, i32** %70, align 8
  br label %73

72:                                               ; preds = %59
  br label %73

73:                                               ; preds = %72, %69
  %74 = phi i32* [ %71, %69 ], [ null, %72 ]
  %75 = call i32 @glTexImage2D(i32 %60, i64 %61, i32 %62, i64 %63, i64 %64, i32 0, i32 %65, i32 %66, i32* %74)
  %76 = call i32 @gl_success(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %73
  store i32 0, i32* %21, align 4
  br label %79

79:                                               ; preds = %78, %73
  br label %80

80:                                               ; preds = %79, %58
  %81 = load i32**, i32*** %22, align 8
  %82 = icmp ne i32** %81, null
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load i32**, i32*** %22, align 8
  %85 = getelementptr inbounds i32*, i32** %84, i32 1
  store i32** %85, i32*** %22, align 8
  br label %86

86:                                               ; preds = %83, %80
  %87 = load i64, i64* %19, align 8
  %88 = sdiv i64 %87, 4
  store i64 %88, i64* %19, align 8
  %89 = load i64, i64* %17, align 8
  %90 = sdiv i64 %89, 2
  store i64 %90, i64* %17, align 8
  %91 = load i64, i64* %18, align 8
  %92 = sdiv i64 %91, 2
  store i64 %92, i64* %18, align 8
  %93 = load i64, i64* %17, align 8
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %86
  store i64 1, i64* %17, align 8
  br label %96

96:                                               ; preds = %95, %86
  %97 = load i64, i64* %18, align 8
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %96
  store i64 1, i64* %18, align 8
  br label %100

100:                                              ; preds = %99, %96
  br label %101

101:                                              ; preds = %100
  %102 = load i64, i64* %23, align 8
  %103 = add nsw i64 %102, 1
  store i64 %103, i64* %23, align 8
  br label %32

104:                                              ; preds = %32
  %105 = load i32**, i32*** %22, align 8
  %106 = icmp ne i32** %105, null
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = load i32**, i32*** %22, align 8
  %109 = load i32***, i32**** %20, align 8
  store i32** %108, i32*** %109, align 8
  br label %110

110:                                              ; preds = %107, %104
  %111 = load i32, i32* %21, align 4
  ret i32 %111
}

declare dso_local i32 @glCompressedTexImage2D(i32, i64, i32, i64, i64, i32, i64, i32*) #1

declare dso_local i32 @gl_success(i8*) #1

declare dso_local i32 @glTexImage2D(i32, i64, i32, i64, i64, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
