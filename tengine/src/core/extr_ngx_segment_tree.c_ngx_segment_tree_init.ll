; ModuleID = '/home/carl/AnghaBench/tengine/src/core/extr_ngx_segment_tree.c_ngx_segment_tree_init.c'
source_filename = "/home/carl/AnghaBench/tengine/src/core/extr_ngx_segment_tree.c_ngx_segment_tree_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_5__*, i32, i32, i32, i32, i32, i32* }
%struct.TYPE_5__ = type { i32 }

@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_MAX_UINT32_VALUE = common dso_local global i32 0, align 4
@ngx_segment_tree_min = common dso_local global i32 0, align 4
@ngx_segment_tree_build = common dso_local global i32 0, align 4
@ngx_segment_tree_insert = common dso_local global i32 0, align 4
@ngx_segment_tree_query = common dso_local global i32 0, align 4
@ngx_segment_tree_delete = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_segment_tree_init(%struct.TYPE_4__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %8 = load i32*, i32** %7, align 8
  %9 = load i32, i32* %6, align 4
  %10 = add nsw i32 %9, 1
  %11 = shl i32 %10, 2
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 4
  %14 = trunc i64 %13 to i32
  %15 = call %struct.TYPE_5__* @ngx_pcalloc(i32* %8, i32 %14)
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 2
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %17, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = icmp eq %struct.TYPE_5__* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* @NGX_ERROR, align 4
  store i32 %23, i32* %4, align 4
  br label %58

24:                                               ; preds = %3
  %25 = load i32, i32* @NGX_MAX_UINT32_VALUE, align 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load i32*, i32** %7, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 8
  store i32* %28, i32** %30, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* @ngx_segment_tree_min, align 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 7
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* @ngx_segment_tree_build, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 6
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @ngx_segment_tree_insert, align 4
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 5
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* @ngx_segment_tree_query, align 4
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @ngx_segment_tree_delete, align 4
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 8
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 2
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i64 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  store i32 %51, i32* %56, align 4
  %57 = load i32, i32* @NGX_OK, align 4
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %24, %22
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local %struct.TYPE_5__* @ngx_pcalloc(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
