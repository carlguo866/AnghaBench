; ModuleID = '/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_codeCompare.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_codeCompare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@P4_COLLSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32*, i32*, i32, i32, i32, i32, i32)* @codeCompare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @codeCompare(%struct.TYPE_4__* %0, i32* %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %21 = load i32*, i32** %10, align 8
  %22 = load i32*, i32** %11, align 8
  %23 = call i32* @sqlite3BinaryCompareCollSeq(%struct.TYPE_4__* %20, i32* %21, i32* %22)
  store i32* %23, i32** %19, align 8
  %24 = load i32*, i32** %10, align 8
  %25 = load i32*, i32** %11, align 8
  %26 = load i32, i32* %16, align 4
  %27 = call i32 @binaryCompareP5(i32* %24, i32* %25, i32 %26)
  store i32 %27, i32* %17, align 4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* %14, align 4
  %33 = load i32, i32* %15, align 4
  %34 = load i32, i32* %13, align 4
  %35 = load i32*, i32** %19, align 8
  %36 = bitcast i32* %35 to i8*
  %37 = load i32, i32* @P4_COLLSEQ, align 4
  %38 = call i32 @sqlite3VdbeAddOp4(i32 %30, i32 %31, i32 %32, i32 %33, i32 %34, i8* %36, i32 %37)
  store i32 %38, i32* %18, align 4
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %17, align 4
  %43 = call i32 @sqlite3VdbeChangeP5(i32 %41, i32 %42)
  %44 = load i32, i32* %18, align 4
  ret i32 %44
}

declare dso_local i32* @sqlite3BinaryCompareCollSeq(%struct.TYPE_4__*, i32*, i32*) #1

declare dso_local i32 @binaryCompareP5(i32*, i32*, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp4(i32, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @sqlite3VdbeChangeP5(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
