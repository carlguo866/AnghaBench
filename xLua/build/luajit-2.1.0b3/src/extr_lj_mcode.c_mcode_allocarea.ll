; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_mcode.c_mcode_allocarea.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_mcode.c_mcode_allocarea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i32*, i32*, i32*, i32, i64* }
%struct.TYPE_6__ = type { i64, i32* }

@JIT_P_sizemcode = common dso_local global i64 0, align 8
@LJ_PAGESIZE = common dso_local global i64 0, align 8
@MCPROT_GEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @mcode_allocarea to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mcode_allocarea(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 2
  %7 = load i32*, i32** %6, align 8
  store i32* %7, i32** %3, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 6
  %10 = load i64*, i64** %9, align 8
  %11 = load i64, i64* @JIT_P_sizemcode, align 8
  %12 = getelementptr inbounds i64, i64* %10, i64 %11
  %13 = load i64, i64* %12, align 8
  %14 = shl i64 %13, 10
  store i64 %14, i64* %4, align 8
  %15 = load i64, i64* %4, align 8
  %16 = load i64, i64* @LJ_PAGESIZE, align 8
  %17 = add i64 %15, %16
  %18 = sub i64 %17, 1
  %19 = load i64, i64* @LJ_PAGESIZE, align 8
  %20 = sub i64 %19, 1
  %21 = xor i64 %20, -1
  %22 = and i64 %18, %21
  store i64 %22, i64* %4, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %24 = load i64, i64* %4, align 8
  %25 = call i64 @mcode_alloc(%struct.TYPE_5__* %23, i64 %24)
  %26 = inttoptr i64 %25 to i32*
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 2
  store i32* %26, i32** %28, align 8
  %29 = load i64, i64* %4, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load i32, i32* @MCPROT_GEN, align 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 5
  store i32 %32, i32* %34, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = bitcast i32* %37 to i8*
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds i8, i8* %38, i64 %41
  %43 = bitcast i8* %42 to i32*
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 4
  store i32* %43, i32** %45, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = bitcast i32* %48 to i8*
  %50 = getelementptr inbounds i8, i8* %49, i64 16
  %51 = bitcast i8* %50 to i32*
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 3
  store i32* %51, i32** %53, align 8
  %54 = load i32*, i32** %3, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = bitcast i32* %57 to %struct.TYPE_6__*
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  store i32* %54, i32** %59, align 8
  %60 = load i64, i64* %4, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = bitcast i32* %63 to %struct.TYPE_6__*
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  store i64 %60, i64* %65, align 8
  %66 = load i64, i64* %4, align 8
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = add i64 %69, %66
  store i64 %70, i64* %68, align 8
  ret void
}

declare dso_local i64 @mcode_alloc(%struct.TYPE_5__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
