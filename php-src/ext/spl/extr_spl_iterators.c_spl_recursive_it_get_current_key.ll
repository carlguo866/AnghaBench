; ModuleID = '/home/carl/AnghaBench/php-src/ext/spl/extr_spl_iterators.c_spl_recursive_it_get_current_key.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/spl/extr_spl_iterators.c_spl_recursive_it_get_current_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32 (%struct.TYPE_10__*, i32*)* }
%struct.TYPE_11__ = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_10__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i32*)* @spl_recursive_it_get_current_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spl_recursive_it_get_current_key(%struct.TYPE_10__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 2
  %9 = call %struct.TYPE_11__* @Z_SPLRECURSIVE_IT_P(i32* %8)
  store %struct.TYPE_11__* %9, %struct.TYPE_11__** %5, align 8
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  store %struct.TYPE_10__* %18, %struct.TYPE_10__** %6, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32 (%struct.TYPE_10__*, i32*)*, i32 (%struct.TYPE_10__*, i32*)** %22, align 8
  %24 = icmp ne i32 (%struct.TYPE_10__*, i32*)* %23, null
  br i1 %24, label %25, label %34

25:                                               ; preds = %2
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32 (%struct.TYPE_10__*, i32*)*, i32 (%struct.TYPE_10__*, i32*)** %29, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 %30(%struct.TYPE_10__* %31, i32* %32)
  br label %40

34:                                               ; preds = %2
  %35 = load i32*, i32** %4, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @ZVAL_LONG(i32* %35, i32 %38)
  br label %40

40:                                               ; preds = %34, %25
  ret void
}

declare dso_local %struct.TYPE_11__* @Z_SPLRECURSIVE_IT_P(i32*) #1

declare dso_local i32 @ZVAL_LONG(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
