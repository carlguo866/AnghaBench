; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_utils.c_new_hlsl_type.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_utils.c_new_hlsl_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.hlsl_type = type { i8*, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"Out of memory\0A\00", align 1
@hlsl_ctx = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hlsl_type* @new_hlsl_type(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.hlsl_type*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.hlsl_type*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = call %struct.hlsl_type* @d3dcompiler_alloc(i32 32)
  store %struct.hlsl_type* %13, %struct.hlsl_type** %12, align 8
  %14 = load %struct.hlsl_type*, %struct.hlsl_type** %12, align 8
  %15 = icmp ne %struct.hlsl_type* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %5
  %17 = call i32 @ERR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store %struct.hlsl_type* null, %struct.hlsl_type** %6, align 8
  br label %38

18:                                               ; preds = %5
  %19 = load i8*, i8** %7, align 8
  %20 = load %struct.hlsl_type*, %struct.hlsl_type** %12, align 8
  %21 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %20, i32 0, i32 0
  store i8* %19, i8** %21, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.hlsl_type*, %struct.hlsl_type** %12, align 8
  %24 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.hlsl_type*, %struct.hlsl_type** %12, align 8
  %27 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load %struct.hlsl_type*, %struct.hlsl_type** %12, align 8
  %30 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* %11, align 4
  %32 = load %struct.hlsl_type*, %struct.hlsl_type** %12, align 8
  %33 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 4
  %34 = load %struct.hlsl_type*, %struct.hlsl_type** %12, align 8
  %35 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %34, i32 0, i32 5
  %36 = call i32 @list_add_tail(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hlsl_ctx, i32 0, i32 0), i32* %35)
  %37 = load %struct.hlsl_type*, %struct.hlsl_type** %12, align 8
  store %struct.hlsl_type* %37, %struct.hlsl_type** %6, align 8
  br label %38

38:                                               ; preds = %18, %16
  %39 = load %struct.hlsl_type*, %struct.hlsl_type** %6, align 8
  ret %struct.hlsl_type* %39
}

declare dso_local %struct.hlsl_type* @d3dcompiler_alloc(i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
