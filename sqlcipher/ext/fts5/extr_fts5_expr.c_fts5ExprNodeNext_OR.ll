; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_expr.c_fts5ExprNodeNext_OR.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_expr.c_fts5ExprNodeNext_OR.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i64, i32, %struct.TYPE_5__** }

@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_5__*, i32, i32)* @fts5ExprNodeNext_OR to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts5ExprNodeNext_OR(i32* %0, %struct.TYPE_5__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %17

17:                                               ; preds = %84, %4
  %18 = load i32, i32* %10, align 4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %87

23:                                               ; preds = %17
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 4
  %26 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %25, align 8
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %26, i64 %28
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  store %struct.TYPE_5__* %30, %struct.TYPE_5__** %12, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %23
  %36 = load i32*, i32** %6, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %11, align 4
  %41 = call i64 @fts5RowidCmp(i32* %36, i32 %39, i32 %40)
  %42 = icmp sge i64 %41, 0
  br label %43

43:                                               ; preds = %35, %23
  %44 = phi i1 [ true, %23 ], [ %42, %35 ]
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %83

51:                                               ; preds = %43
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %11, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %68, label %57

57:                                               ; preds = %51
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %82

60:                                               ; preds = %57
  %61 = load i32*, i32** %6, align 8
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %9, align 4
  %66 = call i64 @fts5RowidCmp(i32* %61, i32 %64, i32 %65)
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %68, label %82

68:                                               ; preds = %60, %51
  %69 = load i32*, i32** %6, align 8
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @fts5ExprNodeNext(i32* %69, %struct.TYPE_5__* %70, i32 %71, i32 %72)
  store i32 %73, i32* %13, align 4
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* @SQLITE_OK, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %68
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 2
  store i64 0, i64* %79, align 8
  %80 = load i32, i32* %13, align 4
  store i32 %80, i32* %5, align 4
  br label %92

81:                                               ; preds = %68
  br label %82

82:                                               ; preds = %81, %60, %57
  br label %83

83:                                               ; preds = %82, %43
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %10, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %10, align 4
  br label %17

87:                                               ; preds = %17
  %88 = load i32*, i32** %6, align 8
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %90 = call i32 @fts5ExprNodeTest_OR(i32* %88, %struct.TYPE_5__* %89)
  %91 = load i32, i32* @SQLITE_OK, align 4
  store i32 %91, i32* %5, align 4
  br label %92

92:                                               ; preds = %87, %77
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @fts5RowidCmp(i32*, i32, i32) #1

declare dso_local i32 @fts5ExprNodeNext(i32*, %struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @fts5ExprNodeTest_OR(i32*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
