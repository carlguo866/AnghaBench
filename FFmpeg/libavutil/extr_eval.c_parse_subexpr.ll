; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_eval.c_parse_subexpr.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_eval.c_parse_subexpr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }

@e_add = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, %struct.TYPE_4__*)* @parse_subexpr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_subexpr(i32** %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32** %0, i32*** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %11 = call i32 @parse_term(i32** %7, %struct.TYPE_4__* %10)
  store i32 %11, i32* %6, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %3, align 4
  br label %59

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %55, %15
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 43
  br i1 %22, label %30, label %23

23:                                               ; preds = %16
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 45
  br label %30

30:                                               ; preds = %23, %16
  %31 = phi i1 [ true, %16 ], [ %29, %23 ]
  br i1 %31, label %32, label %56

32:                                               ; preds = %30
  %33 = load i32*, i32** %7, align 8
  store i32* %33, i32** %8, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %35 = call i32 @parse_term(i32** %9, %struct.TYPE_4__* %34)
  store i32 %35, i32* %6, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load i32*, i32** %8, align 8
  %39 = call i32 @av_expr_free(i32* %38)
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %3, align 4
  br label %59

41:                                               ; preds = %32
  %42 = load i32, i32* @e_add, align 4
  %43 = load i32*, i32** %8, align 8
  %44 = load i32*, i32** %9, align 8
  %45 = call i32* @make_eval_expr(i32 %42, i32 1, i32* %43, i32* %44)
  store i32* %45, i32** %7, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %55, label %48

48:                                               ; preds = %41
  %49 = load i32*, i32** %8, align 8
  %50 = call i32 @av_expr_free(i32* %49)
  %51 = load i32*, i32** %9, align 8
  %52 = call i32 @av_expr_free(i32* %51)
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = call i32 @AVERROR(i32 %53)
  store i32 %54, i32* %3, align 4
  br label %59

55:                                               ; preds = %41
  br label %16

56:                                               ; preds = %30
  %57 = load i32*, i32** %7, align 8
  %58 = load i32**, i32*** %4, align 8
  store i32* %57, i32** %58, align 8
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %56, %48, %37, %13
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @parse_term(i32**, %struct.TYPE_4__*) #1

declare dso_local i32 @av_expr_free(i32*) #1

declare dso_local i32* @make_eval_expr(i32, i32, i32*, i32*) #1

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
