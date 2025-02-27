; ModuleID = '/home/carl/AnghaBench/h2o/lib/core/extr_configurator.c_on_config_mime_removetypes.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/core/extr_configurator.c_on_config_mime_removetypes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, %struct.TYPE_11__** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_12__*, %struct.TYPE_11__*)* @on_config_mime_removetypes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @on_config_mime_removetypes(i32* %0, %struct.TYPE_12__* %1, %struct.TYPE_11__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %7, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %11 = call i32 @clone_mimemap_if_clean(%struct.TYPE_12__* %10)
  store i64 0, i64* %8, align 8
  br label %12

12:                                               ; preds = %45, %3
  %13 = load i64, i64* %8, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %13, %18
  br i1 %19, label %20, label %48

20:                                               ; preds = %12
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %24, align 8
  %26 = load i64, i64* %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %25, i64 %26
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %27, align 8
  store %struct.TYPE_11__* %28, %struct.TYPE_11__** %9, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %31 = call i64 @assert_is_extension(i32* %29, %struct.TYPE_11__* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %20
  store i32 -1, i32* %4, align 4
  br label %49

34:                                               ; preds = %20
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, 1
  %44 = call i32 @h2o_mimemap_remove_type(i32 %38, i64 %43)
  br label %45

45:                                               ; preds = %34
  %46 = load i64, i64* %8, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %8, align 8
  br label %12

48:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %48, %33
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @clone_mimemap_if_clean(%struct.TYPE_12__*) #1

declare dso_local i64 @assert_is_extension(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @h2o_mimemap_remove_type(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
