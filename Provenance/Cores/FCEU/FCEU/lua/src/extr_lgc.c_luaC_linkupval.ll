; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/lua/src/extr_lgc.c_luaC_linkupval.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/lua/src/extr_lgc.c_luaC_linkupval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i64, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_17__* }

@GCSpropagate = common dso_local global i64 0, align 8
@GCSfinalize = common dso_local global i64 0, align 8
@GCSpause = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @luaC_linkupval(i32* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call %struct.TYPE_15__* @G(i32* %7)
  store %struct.TYPE_15__* %8, %struct.TYPE_15__** %5, align 8
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %10 = call %struct.TYPE_17__* @obj2gco(%struct.TYPE_16__* %9)
  store %struct.TYPE_17__* %10, %struct.TYPE_17__** %6, align 8
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 0
  store %struct.TYPE_17__* %13, %struct.TYPE_17__** %16, align 8
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 1
  store %struct.TYPE_17__* %17, %struct.TYPE_17__** %19, align 8
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %21 = call i64 @isgray(%struct.TYPE_17__* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %58

23:                                               ; preds = %2
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @GCSpropagate, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %23
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %31 = call i32 @gray2black(%struct.TYPE_17__* %30)
  %32 = load i32*, i32** %3, align 8
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @luaC_barrier(i32* %32, %struct.TYPE_16__* %33, i32 %36)
  br label %57

38:                                               ; preds = %23
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %41 = call i32 @makewhite(%struct.TYPE_15__* %39, %struct.TYPE_17__* %40)
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @GCSfinalize, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %38
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @GCSpause, align 8
  %52 = icmp ne i64 %50, %51
  br label %53

53:                                               ; preds = %47, %38
  %54 = phi i1 [ false, %38 ], [ %52, %47 ]
  %55 = zext i1 %54 to i32
  %56 = call i32 @lua_assert(i32 %55)
  br label %57

57:                                               ; preds = %53, %29
  br label %58

58:                                               ; preds = %57, %2
  ret void
}

declare dso_local %struct.TYPE_15__* @G(i32*) #1

declare dso_local %struct.TYPE_17__* @obj2gco(%struct.TYPE_16__*) #1

declare dso_local i64 @isgray(%struct.TYPE_17__*) #1

declare dso_local i32 @gray2black(%struct.TYPE_17__*) #1

declare dso_local i32 @luaC_barrier(i32*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @makewhite(%struct.TYPE_15__*, %struct.TYPE_17__*) #1

declare dso_local i32 @lua_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
