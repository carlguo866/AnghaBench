; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_create.c_create_fileref.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_create.c_create_fileref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @create_fileref(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %5 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %7 = call %struct.TYPE_10__* @ExAllocateFromPagedLookasideList(i32* %6)
  store %struct.TYPE_10__* %7, %struct.TYPE_10__** %4, align 8
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %9 = icmp ne %struct.TYPE_10__* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = call i32 @ERR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %2, align 8
  br label %42

12:                                               ; preds = %1
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %14 = call i32 @RtlZeroMemory(%struct.TYPE_10__* %13, i32 24)
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 1
  %17 = call %struct.TYPE_12__* @ExAllocateFromNPagedLookasideList(i32* %16)
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 1
  store %struct.TYPE_12__* %17, %struct.TYPE_12__** %19, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %23 = icmp ne %struct.TYPE_12__* %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %12
  %25 = call i32 @ERR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %29 = call i32 @ExFreeToPagedLookasideList(i32* %27, %struct.TYPE_10__* %28)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %2, align 8
  br label %42

30:                                               ; preds = %12
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 2
  %35 = call i32 @InitializeListHead(i32* %34)
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = call i32 @ExInitializeResourceLite(i32* %39)
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_10__* %41, %struct.TYPE_10__** %2, align 8
  br label %42

42:                                               ; preds = %30, %24, %10
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  ret %struct.TYPE_10__* %43
}

declare dso_local %struct.TYPE_10__* @ExAllocateFromPagedLookasideList(i32*) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @RtlZeroMemory(%struct.TYPE_10__*, i32) #1

declare dso_local %struct.TYPE_12__* @ExAllocateFromNPagedLookasideList(i32*) #1

declare dso_local i32 @ExFreeToPagedLookasideList(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @InitializeListHead(i32*) #1

declare dso_local i32 @ExInitializeResourceLite(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
