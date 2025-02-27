; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Memory.c_CompressBuf.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Memory.c_CompressBuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @CompressBuf(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %8 = icmp eq %struct.TYPE_7__* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %2, align 8
  br label %45

10:                                               ; preds = %1
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @CalcCompress(i32 %13)
  store i64 %14, i64* %4, align 8
  %15 = load i64, i64* %4, align 8
  %16 = call i32* @Malloc(i64 %15)
  store i32* %16, i32** %5, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = load i64, i64* %4, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @Compress(i32* %17, i64 %18, i32 %21, i32 %24)
  store i64 %25, i64* %4, align 8
  %26 = load i64, i64* %4, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %10
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @Free(i32* %29)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %2, align 8
  br label %45

31:                                               ; preds = %10
  %32 = call %struct.TYPE_7__* (...) @NewBuf()
  store %struct.TYPE_7__* %32, %struct.TYPE_7__** %6, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @WriteBufInt(%struct.TYPE_7__* %33, i32 %36)
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = load i64, i64* %4, align 8
  %41 = call i32 @WriteBuf(%struct.TYPE_7__* %38, i32* %39, i64 %40)
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @Free(i32* %42)
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_7__* %44, %struct.TYPE_7__** %2, align 8
  br label %45

45:                                               ; preds = %31, %28, %9
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  ret %struct.TYPE_7__* %46
}

declare dso_local i64 @CalcCompress(i32) #1

declare dso_local i32* @Malloc(i64) #1

declare dso_local i64 @Compress(i32*, i64, i32, i32) #1

declare dso_local i32 @Free(i32*) #1

declare dso_local %struct.TYPE_7__* @NewBuf(...) #1

declare dso_local i32 @WriteBufInt(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @WriteBuf(%struct.TYPE_7__*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
