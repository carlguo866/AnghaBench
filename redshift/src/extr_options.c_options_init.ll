; ModuleID = '/home/carl/AnghaBench/redshift/src/extr_options.c_options_init.c'
source_filename = "/home/carl/AnghaBench/redshift/src/extr_options.c_options_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32, i64, i32, i32*, i32*, i32*, i32*, %struct.TYPE_12__, i32* }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, i64, i32, i32 }
%struct.TYPE_11__ = type { i32, i8*, i8** }
%struct.TYPE_10__ = type { i32, i8*, i8** }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@TRANSITION_HIGH = common dso_local global i32 0, align 4
@TRANSITION_LOW = common dso_local global i32 0, align 4
@NAN = common dso_local global i8* null, align 8
@PROGRAM_MODE_CONTINUAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @options_init(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %3 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 10
  store i32* null, i32** %4, align 8
  %5 = load i32, i32* @TRANSITION_HIGH, align 4
  %6 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 6
  store i32 %5, i32* %8, align 4
  %9 = load i32, i32* @TRANSITION_LOW, align 4
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 9
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 5
  store i32 %9, i32* %12, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 9
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 4
  store i64 0, i64* %15, align 8
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 9
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  store i32 -1, i32* %19, align 8
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 9
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  store i32 -1, i32* %23, align 4
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 9
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  store i32 -1, i32* %27, align 8
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 9
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 1
  store i32 -1, i32* %31, align 4
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 9
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  store i32 -1, i32* %35, align 8
  %36 = load i8*, i8** @NAN, align 8
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 9
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 2
  %41 = load i8**, i8*** %40, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 0
  store i8* %36, i8** %42, align 8
  %43 = load i8*, i8** @NAN, align 8
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 9
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  store i8* %43, i8** %47, align 8
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 9
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  store i32 -1, i32* %51, align 8
  %52 = load i8*, i8** @NAN, align 8
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 9
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 2
  %57 = load i8**, i8*** %56, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i64 0
  store i8* %52, i8** %58, align 8
  %59 = load i8*, i8** @NAN, align 8
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 9
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 1
  store i8* %59, i8** %63, align 8
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 0
  store i32 -1, i32* %65, align 8
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 8
  store i32* null, i32** %67, align 8
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 7
  store i32* null, i32** %69, align 8
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 6
  store i32* null, i32** %71, align 8
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 5
  store i32* null, i32** %73, align 8
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 1
  store i32 -1, i32* %75, align 4
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 2
  store i32 1, i32* %77, align 8
  %78 = load i32, i32* @PROGRAM_MODE_CONTINUAL, align 4
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 4
  store i32 %78, i32* %80, align 8
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 3
  store i64 0, i64* %82, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
