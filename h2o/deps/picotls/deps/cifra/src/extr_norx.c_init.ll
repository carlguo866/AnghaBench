; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_norx.c_init.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_norx.c_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@WORD_BITS = common dso_local global i32 0, align 4
@ROUNDS = common dso_local global i32 0, align 4
@DEGREE = common dso_local global i32 0, align 4
@TAG_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32*, i32*)* @init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init(%struct.TYPE_4__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load i32*, i32** %6, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  %9 = call i8* @read32_le(i32* %8)
  %10 = ptrtoint i8* %9 to i32
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  store i32 %10, i32* %14, align 4
  %15 = load i32*, i32** %6, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 4
  %17 = call i8* @read32_le(i32* %16)
  %18 = ptrtoint i8* %17 to i32
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  store i32 %18, i32* %22, align 4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 2
  store i32 -1224265169, i32* %26, align 4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 3
  store i32 -1597519603, i32* %30, align 4
  %31 = load i32*, i32** %5, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = call i8* @read32_le(i32* %32)
  %34 = ptrtoint i8* %33 to i32
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 4
  store i32 %34, i32* %38, align 4
  %39 = load i32*, i32** %5, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 4
  %41 = call i8* @read32_le(i32* %40)
  %42 = ptrtoint i8* %41 to i32
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 5
  store i32 %42, i32* %46, align 4
  %47 = load i32*, i32** %5, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 8
  %49 = call i8* @read32_le(i32* %48)
  %50 = ptrtoint i8* %49 to i32
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 6
  store i32 %50, i32* %54, align 4
  %55 = load i32*, i32** %5, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 12
  %57 = call i8* @read32_le(i32* %56)
  %58 = ptrtoint i8* %57 to i32
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 7
  store i32 %58, i32* %62, align 4
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 8
  store i32 -1546069712, i32* %66, align 4
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 9
  store i32 1068021548, i32* %70, align 4
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 10
  store i32 -310056119, i32* %74, align 4
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 11
  store i32 -305510521, i32* %78, align 4
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 12
  store i32 861168619, i32* %82, align 4
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 13
  store i32 -107732469, i32* %86, align 4
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 14
  store i32 -1106512439, i32* %90, align 4
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 15
  store i32 -674983676, i32* %94, align 4
  %95 = load i32, i32* @WORD_BITS, align 4
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 12
  %100 = load i32, i32* %99, align 4
  %101 = xor i32 %100, %95
  store i32 %101, i32* %99, align 4
  %102 = load i32, i32* @ROUNDS, align 4
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 13
  %107 = load i32, i32* %106, align 4
  %108 = xor i32 %107, %102
  store i32 %108, i32* %106, align 4
  %109 = load i32, i32* @DEGREE, align 4
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 14
  %114 = load i32, i32* %113, align 4
  %115 = xor i32 %114, %109
  store i32 %115, i32* %113, align 4
  %116 = load i32, i32* @TAG_BITS, align 4
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 15
  %121 = load i32, i32* %120, align 4
  %122 = xor i32 %121, %116
  store i32 %122, i32* %120, align 4
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %124 = call i32 @permute(%struct.TYPE_4__* %123)
  ret void
}

declare dso_local i8* @read32_le(i32*) #1

declare dso_local i32 @permute(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
