; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c___SetSURegs.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c___SetSURegs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32*, i32*, i32* }

@__gx = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @__SetSURegs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__SetSURegs(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load i64, i64* %3, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, 1023
  store i32 %16, i32* %6, align 4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i64, i64* %3, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call i8* @_SHIFTR(i32 %22, i32 10, i32 10)
  %24 = ptrtoint i8* %23 to i32
  store i32 %24, i32* %7, align 4
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i64, i64* %3, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, 3
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %8, align 8
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* %3, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @_SHIFTR(i32 %38, i32 2, i32 2)
  %40 = ptrtoint i8* %39 to i64
  store i64 %40, i64* %9, align 8
  %41 = load i64, i64* %4, align 8
  %42 = and i64 %41, 7
  store i64 %42, i64* %5, align 8
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = load i64, i64* %5, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, -65536
  %50 = load i32, i32* %6, align 4
  %51 = or i32 %49, %50
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = load i64, i64* %5, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  store i32 %51, i32* %56, align 4
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 3
  %59 = load i32*, i32** %58, align 8
  %60 = load i64, i64* %5, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, -65536
  %64 = load i32, i32* %7, align 4
  %65 = or i32 %63, %64
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 3
  %68 = load i32*, i32** %67, align 8
  %69 = load i64, i64* %5, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  store i32 %65, i32* %70, align 4
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 2
  %73 = load i32*, i32** %72, align 8
  %74 = load i64, i64* %5, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %76, -65537
  %78 = load i64, i64* %8, align 8
  %79 = call i32 @_SHIFTL(i64 %78, i32 16, i32 1)
  %80 = or i32 %77, %79
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 2
  %83 = load i32*, i32** %82, align 8
  %84 = load i64, i64* %5, align 8
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  store i32 %80, i32* %85, align 4
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 3
  %88 = load i32*, i32** %87, align 8
  %89 = load i64, i64* %5, align 8
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %91, -65537
  %93 = load i64, i64* %9, align 8
  %94 = call i32 @_SHIFTL(i64 %93, i32 16, i32 1)
  %95 = or i32 %92, %94
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 3
  %98 = load i32*, i32** %97, align 8
  %99 = load i64, i64* %5, align 8
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  store i32 %95, i32* %100, align 4
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 2
  %103 = load i32*, i32** %102, align 8
  %104 = load i64, i64* %5, align 8
  %105 = getelementptr inbounds i32, i32* %103, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @GX_LOAD_BP_REG(i32 %106)
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 3
  %110 = load i32*, i32** %109, align 8
  %111 = load i64, i64* %5, align 8
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @GX_LOAD_BP_REG(i32 %113)
  ret void
}

declare dso_local i8* @_SHIFTR(i32, i32, i32) #1

declare dso_local i32 @_SHIFTL(i64, i32, i32) #1

declare dso_local i32 @GX_LOAD_BP_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
