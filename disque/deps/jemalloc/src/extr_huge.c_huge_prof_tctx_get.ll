; ModuleID = '/home/carl/AnghaBench/disque/deps/jemalloc/src/extr_huge.c_huge_prof_tctx_get.c'
source_filename = "/home/carl/AnghaBench/disque/deps/jemalloc/src/extr_huge.c_huge_prof_tctx_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @huge_prof_tctx_get(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = call i32* @huge_node_get(i8* %6)
  store i32* %7, i32** %4, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call %struct.TYPE_3__* @extent_node_arena_get(i32* %8)
  store %struct.TYPE_3__* %9, %struct.TYPE_3__** %5, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = call i32 @malloc_mutex_lock(i32* %11)
  %13 = load i32*, i32** %4, align 8
  %14 = call i32* @extent_node_prof_tctx_get(i32* %13)
  store i32* %14, i32** %3, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = call i32 @malloc_mutex_unlock(i32* %16)
  %18 = load i32*, i32** %3, align 8
  ret i32* %18
}

declare dso_local i32* @huge_node_get(i8*) #1

declare dso_local %struct.TYPE_3__* @extent_node_arena_get(i32*) #1

declare dso_local i32 @malloc_mutex_lock(i32*) #1

declare dso_local i32* @extent_node_prof_tctx_get(i32*) #1

declare dso_local i32 @malloc_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
