; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lzma/C/extr_LzFindMt.c_MtSync_GetNextBlock.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lzma/C/extr_LzFindMt.c_MtSync_GetNextBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i32, i32, i32, i32, i32, i32, i8*, i8*, i8* }

@False = common dso_local global i8* null, align 8
@True = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MtSync_GetNextBlock(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %3 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 10
  %5 = load i8*, i8** %4, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %7, label %31

7:                                                ; preds = %1
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store i32 1, i32* %9, align 8
  %10 = load i8*, i8** @False, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 10
  store i8* %10, i8** %12, align 8
  %13 = load i8*, i8** @False, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 9
  store i8* %13, i8** %15, align 8
  %16 = load i8*, i8** @False, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 8
  store i8* %16, i8** %18, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 5
  %21 = call i32 @Event_Reset(i32* %20)
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 7
  %24 = call i32 @Event_Reset(i32* %23)
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 6
  %27 = call i32 @Event_Set(i32* %26)
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 5
  %30 = call i32 @Event_Wait(i32* %29)
  br label %45

31:                                               ; preds = %1
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  %34 = call i32 @CriticalSection_Leave(i32* %33)
  %35 = load i8*, i8** @False, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 4
  %44 = call i32 @Semaphore_Release1(i32* %43)
  br label %45

45:                                               ; preds = %31, %7
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 3
  %48 = call i32 @Semaphore_Wait(i32* %47)
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 2
  %51 = call i32 @CriticalSection_Enter(i32* %50)
  %52 = load i8*, i8** @True, align 8
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  store i8* %52, i8** %54, align 8
  ret void
}

declare dso_local i32 @Event_Reset(i32*) #1

declare dso_local i32 @Event_Set(i32*) #1

declare dso_local i32 @Event_Wait(i32*) #1

declare dso_local i32 @CriticalSection_Leave(i32*) #1

declare dso_local i32 @Semaphore_Release1(i32*) #1

declare dso_local i32 @Semaphore_Wait(i32*) #1

declare dso_local i32 @CriticalSection_Enter(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
