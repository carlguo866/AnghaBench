; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_diff/extr_diff_memory.c_svn_diff_mem_string_diff4.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_diff/extr_diff_memory.c_svn_diff_mem_string_diff4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32* }

@svn_diff__mem_vtable = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_diff_mem_string_diff4(i32** %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_4__, align 8
  store i32** %0, i32*** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32*, i32** %9, align 8
  %20 = load i32*, i32** %14, align 8
  %21 = call i32 @fill_source_tokens(i32* %18, i32* %19, i32* %20)
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = load i32*, i32** %10, align 8
  %26 = load i32*, i32** %14, align 8
  %27 = call i32 @fill_source_tokens(i32* %24, i32* %25, i32* %26)
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 2
  %31 = load i32*, i32** %11, align 8
  %32 = load i32*, i32** %14, align 8
  %33 = call i32 @fill_source_tokens(i32* %30, i32* %31, i32* %32)
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 3
  %37 = load i32*, i32** %12, align 8
  %38 = load i32*, i32** %14, align 8
  %39 = call i32 @fill_source_tokens(i32* %36, i32* %37, i32* %38)
  %40 = load i32*, i32** %14, align 8
  %41 = call i32 @alloc_normalization_bufs(%struct.TYPE_4__* %15, i32 4, i32* %40)
  %42 = load i32*, i32** %13, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store i32* %42, i32** %43, align 8
  %44 = load i32**, i32*** %8, align 8
  %45 = load i32*, i32** %14, align 8
  %46 = call i32* @svn_diff_diff4_2(i32** %44, %struct.TYPE_4__* %15, i32* @svn_diff__mem_vtable, i32* %45)
  ret i32* %46
}

declare dso_local i32 @fill_source_tokens(i32*, i32*, i32*) #1

declare dso_local i32 @alloc_normalization_bufs(%struct.TYPE_4__*, i32, i32*) #1

declare dso_local i32* @svn_diff_diff4_2(i32**, %struct.TYPE_4__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
