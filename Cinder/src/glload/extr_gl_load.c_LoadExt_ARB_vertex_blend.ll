; ModuleID = '/home/carl/AnghaBench/Cinder/src/glload/extr_gl_load.c_LoadExt_ARB_vertex_blend.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/glload/extr_gl_load.c_LoadExt_ARB_vertex_blend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"glVertexBlendARB\00", align 1
@_funcptr_glVertexBlendARB = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"glWeightPointerARB\00", align 1
@_funcptr_glWeightPointerARB = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"glWeightbvARB\00", align 1
@_funcptr_glWeightbvARB = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"glWeightdvARB\00", align 1
@_funcptr_glWeightdvARB = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [14 x i8] c"glWeightfvARB\00", align 1
@_funcptr_glWeightfvARB = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [14 x i8] c"glWeightivARB\00", align 1
@_funcptr_glWeightivARB = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [14 x i8] c"glWeightsvARB\00", align 1
@_funcptr_glWeightsvARB = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [15 x i8] c"glWeightubvARB\00", align 1
@_funcptr_glWeightubvARB = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [15 x i8] c"glWeightuivARB\00", align 1
@_funcptr_glWeightuivARB = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [15 x i8] c"glWeightusvARB\00", align 1
@_funcptr_glWeightusvARB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @LoadExt_ARB_vertex_blend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LoadExt_ARB_vertex_blend() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i64 @IntGetProcAddress(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i64 %2, i64* @_funcptr_glVertexBlendARB, align 8
  %3 = load i64, i64* @_funcptr_glVertexBlendARB, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %0
  %6 = load i32, i32* %1, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, i32* %1, align 4
  br label %8

8:                                                ; preds = %5, %0
  %9 = call i64 @IntGetProcAddress(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i64 %9, i64* @_funcptr_glWeightPointerARB, align 8
  %10 = load i64, i64* @_funcptr_glWeightPointerARB, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = load i32, i32* %1, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %1, align 4
  br label %15

15:                                               ; preds = %12, %8
  %16 = call i64 @IntGetProcAddress(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  store i64 %16, i64* @_funcptr_glWeightbvARB, align 8
  %17 = load i64, i64* @_funcptr_glWeightbvARB, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* %1, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %1, align 4
  br label %22

22:                                               ; preds = %19, %15
  %23 = call i64 @IntGetProcAddress(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  store i64 %23, i64* @_funcptr_glWeightdvARB, align 8
  %24 = load i64, i64* @_funcptr_glWeightdvARB, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %1, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %1, align 4
  br label %29

29:                                               ; preds = %26, %22
  %30 = call i64 @IntGetProcAddress(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  store i64 %30, i64* @_funcptr_glWeightfvARB, align 8
  %31 = load i64, i64* @_funcptr_glWeightfvARB, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %1, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %1, align 4
  br label %36

36:                                               ; preds = %33, %29
  %37 = call i64 @IntGetProcAddress(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  store i64 %37, i64* @_funcptr_glWeightivARB, align 8
  %38 = load i64, i64* @_funcptr_glWeightivARB, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %36
  %41 = load i32, i32* %1, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %1, align 4
  br label %43

43:                                               ; preds = %40, %36
  %44 = call i64 @IntGetProcAddress(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  store i64 %44, i64* @_funcptr_glWeightsvARB, align 8
  %45 = load i64, i64* @_funcptr_glWeightsvARB, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* %1, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %1, align 4
  br label %50

50:                                               ; preds = %47, %43
  %51 = call i64 @IntGetProcAddress(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  store i64 %51, i64* @_funcptr_glWeightubvARB, align 8
  %52 = load i64, i64* @_funcptr_glWeightubvARB, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* %1, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %1, align 4
  br label %57

57:                                               ; preds = %54, %50
  %58 = call i64 @IntGetProcAddress(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  store i64 %58, i64* @_funcptr_glWeightuivARB, align 8
  %59 = load i64, i64* @_funcptr_glWeightuivARB, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %57
  %62 = load i32, i32* %1, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %1, align 4
  br label %64

64:                                               ; preds = %61, %57
  %65 = call i64 @IntGetProcAddress(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  store i64 %65, i64* @_funcptr_glWeightusvARB, align 8
  %66 = load i64, i64* @_funcptr_glWeightusvARB, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %64
  %69 = load i32, i32* %1, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %1, align 4
  br label %71

71:                                               ; preds = %68, %64
  %72 = load i32, i32* %1, align 4
  ret i32 %72
}

declare dso_local i64 @IntGetProcAddress(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
