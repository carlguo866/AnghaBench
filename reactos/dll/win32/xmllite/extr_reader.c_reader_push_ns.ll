; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/xmllite/extr_reader.c_reader_push_ns.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/xmllite/extr_reader.c_reader_push_ns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.ns = type { i32, i32*, i32, i32 }

@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*, i32*, i64)* @reader_push_ns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reader_push_ns(%struct.TYPE_7__* %0, i32* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ns*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %13 = call %struct.ns* @reader_alloc(%struct.TYPE_7__* %12, i32 24)
  store %struct.ns* %13, %struct.ns** %10, align 8
  %14 = load %struct.ns*, %struct.ns** %10, align 8
  %15 = icmp ne %struct.ns* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %17, i32* %5, align 4
  br label %75

18:                                               ; preds = %4
  %19 = load i64, i64* %9, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load %struct.ns*, %struct.ns** %10, align 8
  %23 = getelementptr inbounds %struct.ns, %struct.ns* %22, i32 0, i32 2
  %24 = call i32 @memset(i32* %23, i32 0, i32 4)
  br label %40

25:                                               ; preds = %18
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = load %struct.ns*, %struct.ns** %10, align 8
  %29 = getelementptr inbounds %struct.ns, %struct.ns* %28, i32 0, i32 2
  %30 = call i32 @reader_strvaldup(%struct.TYPE_7__* %26, i32* %27, i32* %29)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = call i64 @FAILED(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %25
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %36 = load %struct.ns*, %struct.ns** %10, align 8
  %37 = call i32 @reader_free(%struct.TYPE_7__* %35, %struct.ns* %36)
  %38 = load i32, i32* %11, align 4
  store i32 %38, i32* %5, align 4
  br label %75

39:                                               ; preds = %25
  br label %40

40:                                               ; preds = %39, %21
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = load %struct.ns*, %struct.ns** %10, align 8
  %44 = getelementptr inbounds %struct.ns, %struct.ns* %43, i32 0, i32 3
  %45 = call i32 @reader_strvaldup(%struct.TYPE_7__* %41, i32* %42, i32* %44)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = call i64 @FAILED(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %40
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %51 = load %struct.ns*, %struct.ns** %10, align 8
  %52 = getelementptr inbounds %struct.ns, %struct.ns* %51, i32 0, i32 2
  %53 = call i32 @reader_free_strvalued(%struct.TYPE_7__* %50, i32* %52)
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %55 = load %struct.ns*, %struct.ns** %10, align 8
  %56 = call i32 @reader_free(%struct.TYPE_7__* %54, %struct.ns* %55)
  %57 = load i32, i32* %11, align 4
  store i32 %57, i32* %5, align 4
  br label %75

58:                                               ; preds = %40
  %59 = load %struct.ns*, %struct.ns** %10, align 8
  %60 = getelementptr inbounds %struct.ns, %struct.ns* %59, i32 0, i32 1
  store i32* null, i32** %60, align 8
  %61 = load i64, i64* %9, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  br label %69

66:                                               ; preds = %58
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  br label %69

69:                                               ; preds = %66, %63
  %70 = phi i32* [ %65, %63 ], [ %68, %66 ]
  %71 = load %struct.ns*, %struct.ns** %10, align 8
  %72 = getelementptr inbounds %struct.ns, %struct.ns* %71, i32 0, i32 0
  %73 = call i32 @list_add_head(i32* %70, i32* %72)
  %74 = load i32, i32* %11, align 4
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %69, %49, %34, %16
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local %struct.ns* @reader_alloc(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @reader_strvaldup(%struct.TYPE_7__*, i32*, i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @reader_free(%struct.TYPE_7__*, %struct.ns*) #1

declare dso_local i32 @reader_free_strvalued(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @list_add_head(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
