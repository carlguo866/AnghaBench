; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_name-lookup.c_do_using_directive.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_name-lookup.c_do_using_directive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i64, i64)* }

@NULL_TREE = common dso_local global i64 0, align 8
@error_mark_node = common dso_local global i64 0, align 8
@NAMESPACE_DECL = common dso_local global i64 0, align 8
@USING_STMT = common dso_local global i32 0, align 4
@current_namespace = common dso_local global i64 0, align 8
@global_namespace = common dso_local global i64 0, align 8
@processing_template_decl = common dso_local global i32 0, align 4
@debug_hooks = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_using_directive(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* @NULL_TREE, align 8
  store i64 %4, i64* %3, align 8
  %5 = load i64, i64* %2, align 8
  %6 = load i64, i64* @error_mark_node, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %52

9:                                                ; preds = %1
  %10 = load i64, i64* %2, align 8
  %11 = call i64 @TREE_CODE(i64 %10)
  %12 = load i64, i64* @NAMESPACE_DECL, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @gcc_assert(i32 %14)
  %16 = call i64 (...) @building_stmt_tree()
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %9
  %19 = load i32, i32* @USING_STMT, align 4
  %20 = load i64, i64* %2, align 8
  %21 = call i32 @build_stmt(i32 %19, i64 %20)
  %22 = call i32 @add_stmt(i32 %21)
  br label %23

23:                                               ; preds = %18, %9
  %24 = load i64, i64* %2, align 8
  %25 = call i64 @ORIGINAL_NAMESPACE(i64 %24)
  store i64 %25, i64* %2, align 8
  %26 = call i32 (...) @toplevel_bindings_p()
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %23
  %29 = load i64, i64* %2, align 8
  %30 = call i32 @push_using_directive(i64 %29)
  %31 = call i64 (...) @current_scope()
  store i64 %31, i64* %3, align 8
  br label %42

32:                                               ; preds = %23
  %33 = load i64, i64* @current_namespace, align 8
  %34 = load i64, i64* %2, align 8
  %35 = call i32 @add_using_namespace(i64 %33, i64 %34, i32 0)
  %36 = load i64, i64* @current_namespace, align 8
  %37 = load i64, i64* @global_namespace, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i64, i64* @current_namespace, align 8
  store i64 %40, i64* %3, align 8
  br label %41

41:                                               ; preds = %39, %32
  br label %42

42:                                               ; preds = %41, %28
  %43 = load i32, i32* @processing_template_decl, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %42
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @debug_hooks, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32 (i64, i64)*, i32 (i64, i64)** %47, align 8
  %49 = load i64, i64* %2, align 8
  %50 = load i64, i64* %3, align 8
  %51 = call i32 %48(i64 %49, i64 %50)
  br label %52

52:                                               ; preds = %8, %45, %42
  ret void
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @building_stmt_tree(...) #1

declare dso_local i32 @add_stmt(i32) #1

declare dso_local i32 @build_stmt(i32, i64) #1

declare dso_local i64 @ORIGINAL_NAMESPACE(i64) #1

declare dso_local i32 @toplevel_bindings_p(...) #1

declare dso_local i32 @push_using_directive(i64) #1

declare dso_local i64 @current_scope(...) #1

declare dso_local i32 @add_using_namespace(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
