; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_lookup_name_in_block.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_lookup_name_in_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_4__*, i64 }

@current_function_decl = common dso_local global i64 0, align 8
@VAR_DECL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lookup_name_in_block(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.TYPE_4__* @I_SYMBOL_BINDING(i32 %7)
  store %struct.TYPE_4__* %8, %struct.TYPE_4__** %6, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %10 = icmp ne %struct.TYPE_4__* %9, null
  br i1 %10, label %11, label %23

11:                                               ; preds = %2
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %11
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %18 = call i32 @BINDING_VALUE(%struct.TYPE_4__* %17)
  %19 = call i64 @DECL_CONTEXT(i32 %18)
  %20 = load i64, i64* @current_function_decl, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 1, i32* %3, align 4
  br label %52

23:                                               ; preds = %16, %11, %2
  br label %24

24:                                               ; preds = %40, %23
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %26 = icmp ne %struct.TYPE_4__* %25, null
  br i1 %26, label %27, label %38

27:                                               ; preds = %24
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %29 = call i32 @BINDING_VALUE(%struct.TYPE_4__* %28)
  %30 = call i64 @TREE_CODE(i32 %29)
  %31 = load i64, i64* @VAR_DECL, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %35 = call i32 @BINDING_VALUE(%struct.TYPE_4__* %34)
  %36 = call i64 @BLOCK_DECL_BYREF(i32 %35)
  %37 = icmp ne i64 %36, 0
  br label %38

38:                                               ; preds = %33, %27, %24
  %39 = phi i1 [ false, %27 ], [ false, %24 ], [ %37, %33 ]
  br i1 %39, label %40, label %44

40:                                               ; preds = %38
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  store %struct.TYPE_4__* %43, %struct.TYPE_4__** %6, align 8
  br label %24

44:                                               ; preds = %38
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %46 = icmp ne %struct.TYPE_4__* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %49 = call i32 @BINDING_VALUE(%struct.TYPE_4__* %48)
  %50 = load i32*, i32** %5, align 8
  store i32 %49, i32* %50, align 4
  br label %51

51:                                               ; preds = %47, %44
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %51, %22
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.TYPE_4__* @I_SYMBOL_BINDING(i32) #1

declare dso_local i64 @DECL_CONTEXT(i32) #1

declare dso_local i32 @BINDING_VALUE(%struct.TYPE_4__*) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i64 @BLOCK_DECL_BYREF(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
