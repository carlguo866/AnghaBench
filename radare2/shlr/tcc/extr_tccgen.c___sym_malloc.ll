; ModuleID = '/home/carl/AnghaBench/radare2/shlr/tcc/extr_tccgen.c___sym_malloc.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/tcc/extr_tccgen.c___sym_malloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_7__* }

@SYM_POOL_NB = common dso_local global i32 0, align 4
@sym_pools = common dso_local global i32 0, align 4
@nb_sym_pools = common dso_local global i32 0, align 4
@sym_free_first = common dso_local global %struct.TYPE_7__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_7__* ()* @__sym_malloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_7__* @__sym_malloc() #0 {
  %1 = alloca %struct.TYPE_7__*, align 8
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32, i32* @SYM_POOL_NB, align 4
  %7 = sext i32 %6 to i64
  %8 = mul i64 %7, 8
  %9 = trunc i64 %8 to i32
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.TYPE_7__* @malloc(i32 %10)
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %1, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @memset(%struct.TYPE_7__* %12, i32 0, i32 %13)
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %16 = call i32 @dynarray_add(i32* @sym_pools, i32* @nb_sym_pools, %struct.TYPE_7__* %15)
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** @sym_free_first, align 8
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %3, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  store %struct.TYPE_7__* %18, %struct.TYPE_7__** %2, align 8
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %30, %0
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @SYM_POOL_NB, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %19
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  store %struct.TYPE_7__* %24, %struct.TYPE_7__** %26, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  store %struct.TYPE_7__* %27, %struct.TYPE_7__** %3, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 1
  store %struct.TYPE_7__* %29, %struct.TYPE_7__** %2, align 8
  br label %30

30:                                               ; preds = %23
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %4, align 4
  br label %19

33:                                               ; preds = %19
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  store %struct.TYPE_7__* %34, %struct.TYPE_7__** @sym_free_first, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  ret %struct.TYPE_7__* %35
}

declare dso_local %struct.TYPE_7__* @malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @dynarray_add(i32*, i32*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
