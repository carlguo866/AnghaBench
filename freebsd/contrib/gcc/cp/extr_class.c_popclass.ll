; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_class.c_popclass.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_class.c_popclass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32, i32 }

@current_class_depth = common dso_local global i64 0, align 8
@current_class_stack = common dso_local global %struct.TYPE_2__* null, align 8
@current_class_name = common dso_local global i32 0, align 4
@current_class_type = common dso_local global i32 0, align 4
@current_access_specifier = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @popclass() #0 {
  %1 = call i32 (...) @poplevel_class()
  %2 = load i64, i64* @current_class_depth, align 8
  %3 = add i64 %2, -1
  store i64 %3, i64* @current_class_depth, align 8
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_class_stack, align 8
  %5 = load i64, i64* @current_class_depth, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i64 %5
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* @current_class_name, align 4
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_class_stack, align 8
  %10 = load i64, i64* @current_class_depth, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* @current_class_type, align 4
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_class_stack, align 8
  %15 = load i64, i64* @current_class_depth, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* @current_access_specifier, align 4
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_class_stack, align 8
  %20 = load i64, i64* @current_class_depth, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_class_stack, align 8
  %27 = load i64, i64* @current_class_depth, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @splay_tree_delete(i64 %30)
  br label %32

32:                                               ; preds = %25, %0
  ret void
}

declare dso_local i32 @poplevel_class(...) #1

declare dso_local i32 @splay_tree_delete(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
