; ModuleID = '/home/carl/AnghaBench/postgres/contrib/btree_gist/extr_btree_utils_num.c_gbt_num_same.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/btree_gist/extr_btree_utils_num.c_gbt_num_same.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 (i32*, i32*, i32*)* }
%struct.TYPE_5__ = type { i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gbt_num_same(i32* %0, i32* %1, %struct.TYPE_4__* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_5__, align 8
  %10 = alloca %struct.TYPE_5__, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  store i32* %12, i32** %13, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds i32, i32* %14, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  store i32* %18, i32** %19, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  store i32* %21, i32** %22, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  store i32* %27, i32** %28, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i64 (i32*, i32*, i32*)*, i64 (i32*, i32*, i32*)** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = call i64 %31(i32* %33, i32* %35, i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i64 (i32*, i32*, i32*)*, i64 (i32*, i32*, i32*)** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = call i64 %42(i32* %44, i32* %46, i32* %47)
  %49 = icmp ne i64 %48, 0
  br label %50

50:                                               ; preds = %39, %4
  %51 = phi i1 [ false, %4 ], [ %49, %39 ]
  %52 = zext i1 %51 to i32
  ret i32 %52
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
