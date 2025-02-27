; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/jemalloc/src/extr_extent.c_extent_alloc_wrapper_hard.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/jemalloc/src/extr_extent.c_extent_alloc_wrapper_hard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i8* (%struct.TYPE_16__*, i8*, i64, i64, i32*, i32*, i32)* }
%struct.TYPE_17__ = type { i32 }

@extent_hooks_default = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@extent_state_active = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_17__*, %struct.TYPE_16__**, i8*, i64, i64, i64, i32, i32, i32*, i32*)* @extent_alloc_wrapper_hard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @extent_alloc_wrapper_hard(i32* %0, %struct.TYPE_17__* %1, %struct.TYPE_16__** %2, i8* %3, i64 %4, i64 %5, i64 %6, i32 %7, i32 %8, i32* %9, i32* %10) #0 {
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_17__*, align 8
  %15 = alloca %struct.TYPE_16__**, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i8*, align 8
  store i32* %0, i32** %13, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %14, align 8
  store %struct.TYPE_16__** %2, %struct.TYPE_16__*** %15, align 8
  store i8* %3, i8** %16, align 8
  store i64 %4, i64* %17, align 8
  store i64 %5, i64* %18, align 8
  store i64 %6, i64* %19, align 8
  store i32 %7, i32* %20, align 4
  store i32 %8, i32* %21, align 4
  store i32* %9, i32** %22, align 8
  store i32* %10, i32** %23, align 8
  %27 = load i64, i64* %17, align 8
  %28 = load i64, i64* %18, align 8
  %29 = add i64 %27, %28
  store i64 %29, i64* %24, align 8
  %30 = load i32*, i32** %13, align 8
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %32 = call i32* @extent_alloc(i32* %30, %struct.TYPE_17__* %31)
  store i32* %32, i32** %25, align 8
  %33 = load i32*, i32** %25, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %11
  store i32* null, i32** %12, align 8
  br label %114

36:                                               ; preds = %11
  %37 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %15, align 8
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %37, align 8
  %39 = icmp eq %struct.TYPE_16__* %38, @extent_hooks_default
  br i1 %39, label %40, label %49

40:                                               ; preds = %36
  %41 = load i32*, i32** %13, align 8
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %43 = load i8*, i8** %16, align 8
  %44 = load i64, i64* %24, align 8
  %45 = load i64, i64* %19, align 8
  %46 = load i32*, i32** %22, align 8
  %47 = load i32*, i32** %23, align 8
  %48 = call i8* @extent_alloc_default_impl(i32* %41, %struct.TYPE_17__* %42, i8* %43, i64 %44, i64 %45, i32* %46, i32* %47)
  store i8* %48, i8** %26, align 8
  br label %69

49:                                               ; preds = %36
  %50 = load i32*, i32** %13, align 8
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %52 = call i32 @extent_hook_pre_reentrancy(i32* %50, %struct.TYPE_17__* %51)
  %53 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %15, align 8
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 0
  %56 = load i8* (%struct.TYPE_16__*, i8*, i64, i64, i32*, i32*, i32)*, i8* (%struct.TYPE_16__*, i8*, i64, i64, i32*, i32*, i32)** %55, align 8
  %57 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %15, align 8
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %57, align 8
  %59 = load i8*, i8** %16, align 8
  %60 = load i64, i64* %24, align 8
  %61 = load i64, i64* %19, align 8
  %62 = load i32*, i32** %22, align 8
  %63 = load i32*, i32** %23, align 8
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %65 = call i32 @arena_ind_get(%struct.TYPE_17__* %64)
  %66 = call i8* %56(%struct.TYPE_16__* %58, i8* %59, i64 %60, i64 %61, i32* %62, i32* %63, i32 %65)
  store i8* %66, i8** %26, align 8
  %67 = load i32*, i32** %13, align 8
  %68 = call i32 @extent_hook_post_reentrancy(i32* %67)
  br label %69

69:                                               ; preds = %49, %40
  %70 = load i8*, i8** %26, align 8
  %71 = icmp eq i8* %70, null
  br i1 %71, label %72, label %77

72:                                               ; preds = %69
  %73 = load i32*, i32** %13, align 8
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %75 = load i32*, i32** %25, align 8
  %76 = call i32 @extent_dalloc(i32* %73, %struct.TYPE_17__* %74, i32* %75)
  store i32* null, i32** %12, align 8
  br label %114

77:                                               ; preds = %69
  %78 = load i32*, i32** %25, align 8
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %80 = load i8*, i8** %26, align 8
  %81 = load i64, i64* %24, align 8
  %82 = load i32, i32* %20, align 4
  %83 = load i32, i32* %21, align 4
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %85 = call i32 @arena_extent_sn_next(%struct.TYPE_17__* %84)
  %86 = load i32, i32* @extent_state_active, align 4
  %87 = load i32*, i32** %22, align 8
  %88 = load i32, i32* %87, align 4
  %89 = load i32*, i32** %23, align 8
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @extent_init(i32* %78, %struct.TYPE_17__* %79, i8* %80, i64 %81, i32 %82, i32 %83, i32 %85, i32 %86, i32 %88, i32 %90, i32 1)
  %92 = load i64, i64* %18, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %77
  %95 = load i32*, i32** %13, align 8
  %96 = load i32*, i32** %25, align 8
  %97 = load i64, i64* %19, align 8
  %98 = call i32 @extent_addr_randomize(i32* %95, i32* %96, i64 %97)
  br label %99

99:                                               ; preds = %94, %77
  %100 = load i32*, i32** %13, align 8
  %101 = load i32*, i32** %25, align 8
  %102 = call i64 @extent_register(i32* %100, i32* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %99
  %105 = load i32*, i32** %13, align 8
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %107 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %15, align 8
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 0
  %110 = load i32*, i32** %25, align 8
  %111 = call i32 @extents_leak(i32* %105, %struct.TYPE_17__* %106, %struct.TYPE_16__** %107, i32* %109, i32* %110, i32 0)
  store i32* null, i32** %12, align 8
  br label %114

112:                                              ; preds = %99
  %113 = load i32*, i32** %25, align 8
  store i32* %113, i32** %12, align 8
  br label %114

114:                                              ; preds = %112, %104, %72, %35
  %115 = load i32*, i32** %12, align 8
  ret i32* %115
}

declare dso_local i32* @extent_alloc(i32*, %struct.TYPE_17__*) #1

declare dso_local i8* @extent_alloc_default_impl(i32*, %struct.TYPE_17__*, i8*, i64, i64, i32*, i32*) #1

declare dso_local i32 @extent_hook_pre_reentrancy(i32*, %struct.TYPE_17__*) #1

declare dso_local i32 @arena_ind_get(%struct.TYPE_17__*) #1

declare dso_local i32 @extent_hook_post_reentrancy(i32*) #1

declare dso_local i32 @extent_dalloc(i32*, %struct.TYPE_17__*, i32*) #1

declare dso_local i32 @extent_init(i32*, %struct.TYPE_17__*, i8*, i64, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @arena_extent_sn_next(%struct.TYPE_17__*) #1

declare dso_local i32 @extent_addr_randomize(i32*, i32*, i64) #1

declare dso_local i64 @extent_register(i32*, i32*) #1

declare dso_local i32 @extents_leak(i32*, %struct.TYPE_17__*, %struct.TYPE_16__**, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
