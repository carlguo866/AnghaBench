; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-server.c_tree_split.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-server.c_tree_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, %struct.TYPE_5__*, %struct.TYPE_5__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__**, %struct.TYPE_5__**, %struct.TYPE_5__*, i64)* @tree_split to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tree_split(%struct.TYPE_5__** %0, %struct.TYPE_5__** %1, %struct.TYPE_5__* %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_5__**, align 8
  %6 = alloca %struct.TYPE_5__**, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_5__** %0, %struct.TYPE_5__*** %5, align 8
  store %struct.TYPE_5__** %1, %struct.TYPE_5__*** %6, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %10 = icmp ne %struct.TYPE_5__* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %4
  %12 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %12, align 8
  %13 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %13, align 8
  br label %71

14:                                               ; preds = %4
  %15 = load i64, i64* %8, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp slt i64 %15, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %14
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %22 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  store %struct.TYPE_5__* %21, %struct.TYPE_5__** %22, align 8
  %23 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 3
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 3
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = load i64, i64* %8, align 8
  call void @tree_split(%struct.TYPE_5__** %23, %struct.TYPE_5__** %25, %struct.TYPE_5__* %28, i64 %29)
  br label %40

30:                                               ; preds = %14
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %32 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  store %struct.TYPE_5__* %31, %struct.TYPE_5__** %32, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = load i64, i64* %8, align 8
  call void @tree_split(%struct.TYPE_5__** %34, %struct.TYPE_5__** %35, %struct.TYPE_5__* %38, i64 %39)
  br label %40

40:                                               ; preds = %30, %20
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 3
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = icmp ne %struct.TYPE_5__* %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 3
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  br label %52

51:                                               ; preds = %40
  br label %52

52:                                               ; preds = %51, %45
  %53 = phi i32 [ %50, %45 ], [ 0, %51 ]
  %54 = add nsw i32 1, %53
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = icmp ne %struct.TYPE_5__* %57, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %52
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 2
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  br label %66

65:                                               ; preds = %52
  br label %66

66:                                               ; preds = %65, %59
  %67 = phi i32 [ %64, %59 ], [ 0, %65 ]
  %68 = add nsw i32 %54, %67
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 8
  br label %71

71:                                               ; preds = %66, %11
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
