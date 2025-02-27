; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-inline.c_unsave_r.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-inline.c_unsave_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 }

@VAR_DECL = common dso_local global i64 0, align 8
@LABEL_DECL = common dso_local global i64 0, align 8
@STATEMENT_LIST = common dso_local global i64 0, align 8
@BIND_EXPR = common dso_local global i64 0, align 8
@SAVE_EXPR = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64*, i32*, i8*)* @unsave_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @unsave_r(i64* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__*, align 8
  store i64* %0, i64** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** %7, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %8, align 4
  %15 = load i64*, i64** %4, align 8
  %16 = load i64, i64* %15, align 8
  %17 = call i64 @TREE_CODE(i64 %16)
  %18 = load i64, i64* @VAR_DECL, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %3
  %21 = load i64*, i64** %4, align 8
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @TREE_STATIC(i64 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %20, %3
  %26 = load i64*, i64** %4, align 8
  %27 = load i64, i64* %26, align 8
  %28 = call i64 @TREE_CODE(i64 %27)
  %29 = load i64, i64* @LABEL_DECL, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %45

31:                                               ; preds = %25, %20
  %32 = load i32, i32* %8, align 4
  %33 = load i64*, i64** %4, align 8
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  %36 = call %struct.TYPE_5__* @splay_tree_lookup(i32 %32, i32 %35)
  store %struct.TYPE_5__* %36, %struct.TYPE_5__** %9, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %38 = icmp ne %struct.TYPE_5__* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %31
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64*, i64** %4, align 8
  store i64 %42, i64* %43, align 8
  br label %44

44:                                               ; preds = %39, %31
  br label %86

45:                                               ; preds = %25
  %46 = load i64*, i64** %4, align 8
  %47 = load i64, i64* %46, align 8
  %48 = call i64 @TREE_CODE(i64 %47)
  %49 = load i64, i64* @STATEMENT_LIST, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i64*, i64** %4, align 8
  %53 = call i32 @copy_statement_list(i64* %52)
  br label %85

54:                                               ; preds = %45
  %55 = load i64*, i64** %4, align 8
  %56 = load i64, i64* %55, align 8
  %57 = call i64 @TREE_CODE(i64 %56)
  %58 = load i64, i64* @BIND_EXPR, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %54
  %61 = load i64*, i64** %4, align 8
  %62 = load i32*, i32** %5, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %64 = call i32 @copy_bind_expr(i64* %61, i32* %62, %struct.TYPE_6__* %63)
  br label %84

65:                                               ; preds = %54
  %66 = load i64*, i64** %4, align 8
  %67 = load i64, i64* %66, align 8
  %68 = call i64 @TREE_CODE(i64 %67)
  %69 = load i64, i64* @SAVE_EXPR, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %65
  %72 = load i64*, i64** %4, align 8
  %73 = load i32, i32* %8, align 4
  %74 = load i32*, i32** %5, align 8
  %75 = call i32 @remap_save_expr(i64* %72, i32 %73, i32* %74)
  br label %83

76:                                               ; preds = %65
  %77 = load i64*, i64** %4, align 8
  %78 = load i32*, i32** %5, align 8
  %79 = call i32 @copy_tree_r(i64* %77, i32* %78, i32* null)
  %80 = load i64*, i64** %4, align 8
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @unsave_expr_1(i64 %81)
  br label %83

83:                                               ; preds = %76, %71
  br label %84

84:                                               ; preds = %83, %60
  br label %85

85:                                               ; preds = %84, %51
  br label %86

86:                                               ; preds = %85, %44
  %87 = load i64, i64* @NULL_TREE, align 8
  ret i64 %87
}

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i32 @TREE_STATIC(i64) #1

declare dso_local %struct.TYPE_5__* @splay_tree_lookup(i32, i32) #1

declare dso_local i32 @copy_statement_list(i64*) #1

declare dso_local i32 @copy_bind_expr(i64*, i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @remap_save_expr(i64*, i32, i32*) #1

declare dso_local i32 @copy_tree_r(i64*, i32*, i32*) #1

declare dso_local i32 @unsave_expr_1(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
