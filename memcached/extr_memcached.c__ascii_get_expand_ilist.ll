; ModuleID = '/home/carl/AnghaBench/memcached/extr_memcached.c__ascii_get_expand_ilist.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_memcached.c__ascii_get_expand_ilist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32** }

@stats = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32)* @_ascii_get_expand_ilist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_ascii_get_expand_ilist(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp sge i32 %7, %10
  br i1 %11, label %12, label %40

12:                                               ; preds = %2
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i32**, i32*** %14, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = mul i64 8, %19
  %21 = mul i64 %20, 2
  %22 = trunc i64 %21 to i32
  %23 = call i32** @realloc(i32** %15, i32 %22)
  store i32** %23, i32*** %6, align 8
  %24 = load i32**, i32*** %6, align 8
  %25 = icmp ne i32** %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %12
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = mul nsw i32 %29, 2
  store i32 %30, i32* %28, align 8
  %31 = load i32**, i32*** %6, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  store i32** %31, i32*** %33, align 8
  br label %39

34:                                               ; preds = %12
  %35 = call i32 (...) @STATS_LOCK()
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @stats, i32 0, i32 0), align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @stats, i32 0, i32 0), align 4
  %38 = call i32 (...) @STATS_UNLOCK()
  store i32 -1, i32* %3, align 4
  br label %41

39:                                               ; preds = %26
  br label %40

40:                                               ; preds = %39, %2
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %40, %34
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32** @realloc(i32**, i32) #1

declare dso_local i32 @STATS_LOCK(...) #1

declare dso_local i32 @STATS_UNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
