; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Memory.c_NewFifoEx2.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Memory.c_NewFifoEx2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i64, i64, i32*, i32* }

@FIFO_INIT_MEM_SIZE = common dso_local global i32 0, align 4
@KS_NEWFIFO_COUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @NewFifoEx2(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = call %struct.TYPE_4__* @ZeroMalloc(i32 48)
  store %struct.TYPE_4__* %6, %struct.TYPE_4__** %5, align 8
  %7 = load i32, i32* %3, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = call i32* (...) @NewLock()
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 6
  store i32* %10, i32** %12, align 8
  %13 = call i32* (...) @NewRef()
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 5
  store i32* %13, i32** %15, align 8
  br label %21

16:                                               ; preds = %2
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 6
  store i32* null, i32** %18, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 5
  store i32* null, i32** %20, align 8
  br label %21

21:                                               ; preds = %16, %9
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 3
  store i64 0, i64* %23, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 4
  store i64 0, i64* %25, align 8
  %26 = load i32, i32* @FIFO_INIT_MEM_SIZE, align 4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* @FIFO_INIT_MEM_SIZE, align 4
  %30 = call i32 @Malloc(i32 %29)
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i32 0, i32* %34, align 8
  %35 = load i32, i32* @KS_NEWFIFO_COUNT, align 4
  %36 = call i32 @KS_INC(i32 %35)
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  ret %struct.TYPE_4__* %37
}

declare dso_local %struct.TYPE_4__* @ZeroMalloc(i32) #1

declare dso_local i32* @NewLock(...) #1

declare dso_local i32* @NewRef(...) #1

declare dso_local i32 @Malloc(i32) #1

declare dso_local i32 @KS_INC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
