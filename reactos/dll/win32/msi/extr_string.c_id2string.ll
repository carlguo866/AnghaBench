; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_string.c_id2string.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_string.c_id2string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"Finding string %d of %d\0A\00", align 1
@ERROR_FUNCTION_FAILED = common dso_local global i32 0, align 4
@ERROR_MORE_DATA = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32, i8*, i32*)* @id2string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @id2string(%struct.TYPE_4__* %0, i32 %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @TRACE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %16)
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32* @msi_string_lookup(%struct.TYPE_4__* %18, i32 %19, i32* %11)
  store i32* %20, i32** %12, align 8
  %21 = load i32*, i32** %12, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* @ERROR_FUNCTION_FAILED, align 4
  store i32 %24, i32* %5, align 4
  br label %52

25:                                               ; preds = %4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %12, align 8
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @WideCharToMultiByte(i32 %28, i32 0, i32* %29, i32 %30, i8* null, i32 0, i32* null, i32* null)
  store i32 %31, i32* %10, align 4
  %32 = load i32*, i32** %9, align 8
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %25
  %37 = load i32, i32* %10, align 4
  %38 = load i32*, i32** %9, align 8
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* @ERROR_MORE_DATA, align 4
  store i32 %39, i32* %5, align 4
  br label %52

40:                                               ; preds = %25
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %12, align 8
  %45 = load i32, i32* %11, align 4
  %46 = load i8*, i8** %8, align 8
  %47 = load i32*, i32** %9, align 8
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @WideCharToMultiByte(i32 %43, i32 0, i32* %44, i32 %45, i8* %46, i32 %48, i32* null, i32* null)
  %50 = load i32*, i32** %9, align 8
  store i32 %49, i32* %50, align 4
  %51 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %40, %36, %23
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i32 @TRACE(i8*, i32, i32) #1

declare dso_local i32* @msi_string_lookup(%struct.TYPE_4__*, i32, i32*) #1

declare dso_local i32 @WideCharToMultiByte(i32, i32, i32*, i32, i8*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
