; ModuleID = '/home/carl/AnghaBench/lab/engine/code/bspc/extr_tetrahedron.c_TH_HashVec.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/bspc/extr_tetrahedron.c_TH_HashVec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_MAP_BOUNDS = common dso_local global i32 0, align 4
@VERTEXHASH_SHIFT = common dso_local global i32 0, align 4
@VERTEXHASH_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"HashVec: point %f %f %f outside valid range\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TH_HashVec(i64* %0) #0 {
  %2 = alloca i64*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i64* %0, i64** %2, align 8
  %5 = load i32, i32* @MAX_MAP_BOUNDS, align 4
  %6 = load i64*, i64** %2, align 8
  %7 = getelementptr inbounds i64, i64* %6, i64 0
  %8 = load i64, i64* %7, align 8
  %9 = sitofp i64 %8 to double
  %10 = fadd double %9, 5.000000e-01
  %11 = fptosi double %10 to i32
  %12 = add nsw i32 %5, %11
  %13 = load i32, i32* @VERTEXHASH_SHIFT, align 4
  %14 = ashr i32 %12, %13
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* @MAX_MAP_BOUNDS, align 4
  %16 = load i64*, i64** %2, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 1
  %18 = load i64, i64* %17, align 8
  %19 = sitofp i64 %18 to double
  %20 = fadd double %19, 5.000000e-01
  %21 = fptosi double %20 to i32
  %22 = add nsw i32 %15, %21
  %23 = load i32, i32* @VERTEXHASH_SHIFT, align 4
  %24 = ashr i32 %22, %23
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %3, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %38, label %27

27:                                               ; preds = %1
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @VERTEXHASH_SIZE, align 4
  %30 = icmp sge i32 %28, %29
  br i1 %30, label %38, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* %4, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @VERTEXHASH_SIZE, align 4
  %37 = icmp sge i32 %35, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %34, %31, %27, %1
  %39 = load i64*, i64** %2, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64*, i64** %2, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64*, i64** %2, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 2
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @Error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %41, i64 %44, i64 %47)
  br label %49

49:                                               ; preds = %38, %34
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @VERTEXHASH_SIZE, align 4
  %52 = mul nsw i32 %50, %51
  %53 = load i32, i32* %3, align 4
  %54 = add nsw i32 %52, %53
  ret i32 %54
}

declare dso_local i32 @Error(i8*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
