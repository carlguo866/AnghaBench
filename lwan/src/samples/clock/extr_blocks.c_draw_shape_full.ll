; ModuleID = '/home/carl/AnghaBench/lwan/src/samples/clock/extr_blocks.c_draw_shape_full.c'
source_filename = "/home/carl/AnghaBench/lwan/src/samples/clock/extr_blocks.c_draw_shape_full.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@offs = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32, i32, i32, i8*)* @draw_shape_full to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_shape_full(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i8* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i8* %7, i8** %16, align 8
  %25 = load i32**, i32*** @offs, align 8
  %26 = load i32, i32* %9, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i32*, i32** %25, i64 %27
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %15, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %17, align 4
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* %14, align 4
  %36 = mul nsw i32 %34, %35
  store i32 %36, i32* %18, align 4
  store i32 0, i32* %19, align 4
  br label %37

37:                                               ; preds = %79, %8
  %38 = load i32, i32* %19, align 4
  %39 = icmp slt i32 %38, 4
  br i1 %39, label %40, label %82

40:                                               ; preds = %37
  %41 = load i32, i32* %17, align 4
  %42 = and i32 %41, 7
  %43 = sub nsw i32 %42, 3
  store i32 %43, i32* %20, align 4
  %44 = load i32, i32* %17, align 4
  %45 = lshr i32 %44, 3
  store i32 %45, i32* %17, align 4
  %46 = load i32, i32* %17, align 4
  %47 = and i32 %46, 7
  %48 = sub nsw i32 %47, 3
  store i32 %48, i32* %21, align 4
  %49 = load i32, i32* %17, align 4
  %50 = lshr i32 %49, 5
  store i32 %50, i32* %17, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %21, align 4
  %53 = add nsw i32 %51, %52
  store i32 %53, i32* %22, align 4
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* %20, align 4
  %56 = add nsw i32 %54, %55
  store i32 %56, i32* %23, align 4
  %57 = load i32, i32* %23, align 4
  %58 = mul nsw i32 %57, 32
  %59 = load i32, i32* %22, align 4
  %60 = add nsw i32 %58, %59
  store i32 %60, i32* %24, align 4
  %61 = load i32, i32* %24, align 4
  %62 = icmp sge i32 %61, 0
  br i1 %62, label %63, label %78

63:                                               ; preds = %40
  %64 = load i32, i32* %24, align 4
  %65 = load i32, i32* %18, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %78

67:                                               ; preds = %63
  %68 = load i32, i32* %22, align 4
  %69 = load i32, i32* %13, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %67
  %72 = load i32, i32* %10, align 4
  %73 = trunc i32 %72 to i8
  %74 = load i8*, i8** %16, align 8
  %75 = load i32, i32* %24, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  store i8 %73, i8* %77, align 1
  br label %78

78:                                               ; preds = %71, %67, %63, %40
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %19, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %19, align 4
  br label %37

82:                                               ; preds = %37
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
