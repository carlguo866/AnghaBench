; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xact.c_AtSubCommit_Memory.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xact.c_AtSubCommit_Memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@CurrentTransactionState = common dso_local global %struct.TYPE_5__* null, align 8
@CurTransactionContext = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @AtSubCommit_Memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @AtSubCommit_Memory() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = load %struct.TYPE_5__*, %struct.TYPE_5__** @CurrentTransactionState, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %1, align 8
  %3 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %4 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %6 = icmp ne %struct.TYPE_4__* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @Assert(i32 %7)
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* @CurTransactionContext, align 4
  %14 = load i32, i32* @CurTransactionContext, align 4
  %15 = call i32 @MemoryContextSwitchTo(i32 %14)
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = call i64 @MemoryContextIsEmpty(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @MemoryContextDelete(i32* %24)
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  store i32* null, i32** %27, align 8
  br label %28

28:                                               ; preds = %21, %0
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i64 @MemoryContextIsEmpty(i32*) #1

declare dso_local i32 @MemoryContextDelete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
