; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_zend_inference.c_is_effective_op1_double_cast.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_zend_inference.c_is_effective_op1_double_cast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@ZEND_ADD = common dso_local global i64 0, align 8
@ZEND_SUB = common dso_local global i64 0, align 8
@ZEND_MUL = common dso_local global i64 0, align 8
@ZEND_DIV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*)* @is_effective_op1_double_cast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_effective_op1_double_cast(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @ZEND_ADD, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @Z_LVAL_P(i32* %11)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %46, label %14

14:                                               ; preds = %10, %2
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @ZEND_SUB, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @Z_LVAL_P(i32* %21)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %46, label %24

24:                                               ; preds = %20, %14
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @ZEND_MUL, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @Z_LVAL_P(i32* %31)
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %46, label %34

34:                                               ; preds = %30, %24
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @ZEND_DIV, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load i32*, i32** %4, align 8
  %42 = call i32 @Z_LVAL_P(i32* %41)
  %43 = icmp eq i32 %42, 1
  br label %44

44:                                               ; preds = %40, %34
  %45 = phi i1 [ false, %34 ], [ %43, %40 ]
  br label %46

46:                                               ; preds = %44, %30, %20, %10
  %47 = phi i1 [ true, %30 ], [ true, %20 ], [ true, %10 ], [ %45, %44 ]
  %48 = zext i1 %47 to i32
  ret i32 %48
}

declare dso_local i32 @Z_LVAL_P(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
