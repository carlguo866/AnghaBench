; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_debug.c_debug_make_function_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_debug.c_debug_make_function_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.debug_type = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.debug_function_type* }
%struct.debug_function_type = type { i32, %struct.debug_type**, %struct.debug_type* }
%struct.debug_handle = type { i32 }

@DEBUG_TYPE_NULL = common dso_local global %struct.debug_type* null, align 8
@DEBUG_KIND_FUNCTION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.debug_type* @debug_make_function_type(i8* %0, %struct.debug_type* %1, %struct.debug_type** %2, i32 %3) #0 {
  %5 = alloca %struct.debug_type*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.debug_type*, align 8
  %8 = alloca %struct.debug_type**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.debug_handle*, align 8
  %11 = alloca %struct.debug_type*, align 8
  %12 = alloca %struct.debug_function_type*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.debug_type* %1, %struct.debug_type** %7, align 8
  store %struct.debug_type** %2, %struct.debug_type*** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.debug_handle*
  store %struct.debug_handle* %14, %struct.debug_handle** %10, align 8
  %15 = load %struct.debug_type*, %struct.debug_type** %7, align 8
  %16 = icmp eq %struct.debug_type* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load %struct.debug_type*, %struct.debug_type** @DEBUG_TYPE_NULL, align 8
  store %struct.debug_type* %18, %struct.debug_type** %5, align 8
  br label %46

19:                                               ; preds = %4
  %20 = load %struct.debug_handle*, %struct.debug_handle** %10, align 8
  %21 = load i32, i32* @DEBUG_KIND_FUNCTION, align 4
  %22 = call %struct.debug_type* @debug_make_type(%struct.debug_handle* %20, i32 %21, i32 0)
  store %struct.debug_type* %22, %struct.debug_type** %11, align 8
  %23 = load %struct.debug_type*, %struct.debug_type** %11, align 8
  %24 = icmp eq %struct.debug_type* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load %struct.debug_type*, %struct.debug_type** @DEBUG_TYPE_NULL, align 8
  store %struct.debug_type* %26, %struct.debug_type** %5, align 8
  br label %46

27:                                               ; preds = %19
  %28 = call i64 @xmalloc(i32 24)
  %29 = inttoptr i64 %28 to %struct.debug_function_type*
  store %struct.debug_function_type* %29, %struct.debug_function_type** %12, align 8
  %30 = load %struct.debug_function_type*, %struct.debug_function_type** %12, align 8
  %31 = call i32 @memset(%struct.debug_function_type* %30, i32 0, i32 24)
  %32 = load %struct.debug_type*, %struct.debug_type** %7, align 8
  %33 = load %struct.debug_function_type*, %struct.debug_function_type** %12, align 8
  %34 = getelementptr inbounds %struct.debug_function_type, %struct.debug_function_type* %33, i32 0, i32 2
  store %struct.debug_type* %32, %struct.debug_type** %34, align 8
  %35 = load %struct.debug_type**, %struct.debug_type*** %8, align 8
  %36 = load %struct.debug_function_type*, %struct.debug_function_type** %12, align 8
  %37 = getelementptr inbounds %struct.debug_function_type, %struct.debug_function_type* %36, i32 0, i32 1
  store %struct.debug_type** %35, %struct.debug_type*** %37, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.debug_function_type*, %struct.debug_function_type** %12, align 8
  %40 = getelementptr inbounds %struct.debug_function_type, %struct.debug_function_type* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.debug_function_type*, %struct.debug_function_type** %12, align 8
  %42 = load %struct.debug_type*, %struct.debug_type** %11, align 8
  %43 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store %struct.debug_function_type* %41, %struct.debug_function_type** %44, align 8
  %45 = load %struct.debug_type*, %struct.debug_type** %11, align 8
  store %struct.debug_type* %45, %struct.debug_type** %5, align 8
  br label %46

46:                                               ; preds = %27, %25, %17
  %47 = load %struct.debug_type*, %struct.debug_type** %5, align 8
  ret %struct.debug_type* %47
}

declare dso_local %struct.debug_type* @debug_make_type(%struct.debug_handle*, i32, i32) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @memset(%struct.debug_function_type*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
