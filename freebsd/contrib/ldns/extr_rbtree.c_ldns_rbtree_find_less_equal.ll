; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_rbtree.c_ldns_rbtree_find_less_equal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_rbtree.c_ldns_rbtree_find_less_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_7__*, %struct.TYPE_7__*, i32 }
%struct.TYPE_6__ = type { i32 (i8*, i32)*, %struct.TYPE_7__* }

@LDNS_RBTREE_NULL = common dso_local global %struct.TYPE_7__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ldns_rbtree_find_less_equal(%struct.TYPE_6__* %0, i8* %1, %struct.TYPE_7__** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_7__**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_7__** %2, %struct.TYPE_7__*** %7, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %9, align 8
  %13 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %13, align 8
  br label %14

14:                                               ; preds = %45, %3
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** @LDNS_RBTREE_NULL, align 8
  %17 = icmp ne %struct.TYPE_7__* %15, %16
  br i1 %17, label %18, label %46

18:                                               ; preds = %14
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32 (i8*, i32)*, i32 (i8*, i32)** %20, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 %21(i8* %22, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %18
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %31 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  store %struct.TYPE_7__* %30, %struct.TYPE_7__** %31, align 8
  store i32 1, i32* %4, align 4
  br label %47

32:                                               ; preds = %18
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  store %struct.TYPE_7__* %38, %struct.TYPE_7__** %9, align 8
  br label %45

39:                                               ; preds = %32
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %41 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  store %struct.TYPE_7__* %40, %struct.TYPE_7__** %41, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  store %struct.TYPE_7__* %44, %struct.TYPE_7__** %9, align 8
  br label %45

45:                                               ; preds = %39, %35
  br label %14

46:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %46, %29
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
