; ModuleID = '/home/carl/AnghaBench/lede/tools/wrt350nv2-builder/src/extr_md5.c_md5_init.c'
source_filename = "/home/carl/AnghaBench/lede/tools/wrt350nv2-builder/src/extr_md5.c_md5_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i64* }

@T_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @md5_init(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %3 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %5 = load i64*, i64** %4, align 8
  %6 = getelementptr inbounds i64, i64* %5, i64 1
  store i64 0, i64* %6, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %9 = load i64*, i64** %8, align 8
  %10 = getelementptr inbounds i64, i64* %9, i64 0
  store i64 0, i64* %10, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  store i32 1732584193, i32* %14, align 4
  %15 = load i32, i32* @T_MASK, align 4
  %16 = xor i32 %15, 271733878
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  store i32 %16, i32* %20, align 4
  %21 = load i32, i32* @T_MASK, align 4
  %22 = xor i32 %21, 1732584193
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 2
  store i32 %22, i32* %26, align 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 3
  store i32 271733878, i32* %30, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
