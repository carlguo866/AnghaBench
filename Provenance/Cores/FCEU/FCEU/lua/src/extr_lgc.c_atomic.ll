; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/lua/src/extr_lgc.c_atomic.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/lua/src/extr_lgc.c_atomic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, i32, i32, i32*, i64, i32, i32*, i32*, i32*, i32 }

@GCSsweepstring = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @atomic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atomic(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = call %struct.TYPE_9__* @G(i32* %5)
  store %struct.TYPE_9__* %6, %struct.TYPE_9__** %3, align 8
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %8 = call i32 @remarkupvals(%struct.TYPE_9__* %7)
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %10 = call i64 @propagateall(%struct.TYPE_9__* %9)
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 7
  %13 = load i32*, i32** %12, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 9
  store i32* %13, i32** %15, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 7
  store i32* null, i32** %17, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 10
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @obj2gco(i32 %20)
  %22 = call i32 @iswhite(i32 %21)
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @lua_assert(i32 %25)
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %28 = load i32*, i32** %2, align 8
  %29 = call i32 @markobject(%struct.TYPE_9__* %27, i32* %28)
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %31 = call i32 @markmt(%struct.TYPE_9__* %30)
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %33 = call i64 @propagateall(%struct.TYPE_9__* %32)
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 8
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 9
  store i32* %36, i32** %38, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 8
  store i32* null, i32** %40, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %42 = call i64 @propagateall(%struct.TYPE_9__* %41)
  %43 = load i32*, i32** %2, align 8
  %44 = call i64 @luaC_separateudata(i32* %43, i32 0)
  store i64 %44, i64* %4, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %46 = call i32 @marktmu(%struct.TYPE_9__* %45)
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %48 = call i64 @propagateall(%struct.TYPE_9__* %47)
  %49 = load i64, i64* %4, align 8
  %50 = add i64 %49, %48
  store i64 %50, i64* %4, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 7
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @cleartable(i32* %53)
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %56 = call i32 @otherwhite(%struct.TYPE_9__* %55)
  %57 = call i32 @cast_byte(i32 %56)
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 6
  store i32 %57, i32* %59, align 8
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 5
  store i64 0, i64* %61, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 3
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 4
  store i32* %63, i32** %65, align 8
  %66 = load i32, i32* @GCSsweepstring, align 4
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 8
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %4, align 8
  %73 = sub i64 %71, %72
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 1
  store i64 %73, i64* %75, align 8
  ret void
}

declare dso_local %struct.TYPE_9__* @G(i32*) #1

declare dso_local i32 @remarkupvals(%struct.TYPE_9__*) #1

declare dso_local i64 @propagateall(%struct.TYPE_9__*) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @iswhite(i32) #1

declare dso_local i32 @obj2gco(i32) #1

declare dso_local i32 @markobject(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @markmt(%struct.TYPE_9__*) #1

declare dso_local i64 @luaC_separateudata(i32*, i32) #1

declare dso_local i32 @marktmu(%struct.TYPE_9__*) #1

declare dso_local i32 @cleartable(i32*) #1

declare dso_local i32 @cast_byte(i32) #1

declare dso_local i32 @otherwhite(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
