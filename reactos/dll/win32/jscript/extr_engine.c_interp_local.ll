; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_engine.c_interp_local.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_engine.c_interp_local.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32*, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"%d: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*)* @interp_local to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @interp_local(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %9 = call i32 @get_op_int(%struct.TYPE_11__* %8, i32 0)
  store i32 %9, i32* %4, align 4
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  store %struct.TYPE_12__* %12, %struct.TYPE_12__** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @local_name(%struct.TYPE_12__* %14, i32 %15)
  %17 = call i32 @debugstr_w(i32 %16)
  %18 = call i32 @TRACE(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %17)
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %22 = icmp ne %struct.TYPE_10__* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %1
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %23, %1
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @local_name(%struct.TYPE_12__* %32, i32 %33)
  %35 = call i32 @identifier_value(%struct.TYPE_11__* %31, i32 %34)
  store i32 %35, i32* %2, align 4
  br label %55

36:                                               ; preds = %23
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %41 = load i32, i32* %4, align 4
  %42 = call i64 @local_off(%struct.TYPE_12__* %40, i32 %41)
  %43 = getelementptr inbounds i32, i32* %39, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @jsval_copy(i32 %44, i32* %6)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i64 @FAILED(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %36
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %2, align 4
  br label %55

51:                                               ; preds = %36
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @stack_push(%struct.TYPE_11__* %52, i32 %53)
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %51, %49, %30
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @get_op_int(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @TRACE(i8*, i32, i32) #1

declare dso_local i32 @debugstr_w(i32) #1

declare dso_local i32 @local_name(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @identifier_value(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @jsval_copy(i32, i32*) #1

declare dso_local i64 @local_off(%struct.TYPE_12__*, i32) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @stack_push(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
