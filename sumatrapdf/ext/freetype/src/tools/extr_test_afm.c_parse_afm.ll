; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/freetype/src/tools/extr_test_afm.c_parse_afm.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/freetype/src/tools/extr_test_afm.c_parse_afm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 (%struct.TYPE_17__*, i32, i32, i32)*, i32 (%struct.TYPE_17__*)*, i32 (%struct.TYPE_17__*)* }
%struct.TYPE_17__ = type { i32, i32 }

@FT_Err_Ok = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"psaux\00", align 1
@dummy_get_index = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_afm(%struct.TYPE_16__* %0, %struct.TYPE_15__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_17__, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @FT_Err_Ok, align 4
  store i32 %11, i32* %10, align 4
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %13 = call i64 @FT_Get_Module_Interface(%struct.TYPE_16__* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %14 = inttoptr i64 %13 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %14, %struct.TYPE_14__** %8, align 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %16 = icmp ne %struct.TYPE_14__* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %21 = icmp ne %struct.TYPE_13__* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %17, %3
  store i32 -1, i32* %4, align 4
  br label %71

23:                                               ; preds = %17
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @FT_Stream_EnterFrame(%struct.TYPE_15__* %24, i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %4, align 4
  br label %71

33:                                               ; preds = %23
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = load i32 (%struct.TYPE_17__*, i32, i32, i32)*, i32 (%struct.TYPE_17__*, i32, i32, i32)** %37, align 8
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 %38(%struct.TYPE_17__* %9, i32 %41, i32 %44, i32 %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %33
  %52 = load i32, i32* %10, align 4
  store i32 %52, i32* %4, align 4
  br label %71

53:                                               ; preds = %33
  %54 = load i32, i32* %7, align 4
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 1
  store i32 %54, i32* %55, align 4
  %56 = load i32, i32* @dummy_get_index, align 4
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 0
  store i32 %56, i32* %57, align 4
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 1
  %62 = load i32 (%struct.TYPE_17__*)*, i32 (%struct.TYPE_17__*)** %61, align 8
  %63 = call i32 %62(%struct.TYPE_17__* %9)
  store i32 %63, i32* %10, align 4
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 2
  %68 = load i32 (%struct.TYPE_17__*)*, i32 (%struct.TYPE_17__*)** %67, align 8
  %69 = call i32 %68(%struct.TYPE_17__* %9)
  %70 = load i32, i32* %10, align 4
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %53, %51, %31, %22
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i64 @FT_Get_Module_Interface(%struct.TYPE_16__*, i8*) #1

declare dso_local i32 @FT_Stream_EnterFrame(%struct.TYPE_15__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
