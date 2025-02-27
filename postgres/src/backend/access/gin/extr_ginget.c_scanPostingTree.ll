; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_ginget.c_scanPostingTree.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_ginget.c_scanPostingTree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@GIN_DELETED = common dso_local global i32 0, align 4
@GIN_SHARE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_7__*, i32, i32)* @scanPostingTree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scanPostingTree(i32 %0, %struct.TYPE_7__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call %struct.TYPE_8__* @ginScanBeginPostingTree(i32* %9, i32 %14, i32 %15, i32 %16)
  store %struct.TYPE_8__* %17, %struct.TYPE_8__** %10, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = call i32 @IncrBufferRefCount(i32 %21)
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %24 = call i32 @freeGinBtreeStack(%struct.TYPE_8__* %23)
  br label %25

25:                                               ; preds = %51, %4
  %26 = load i32, i32* %11, align 4
  %27 = call i32 @BufferGetPage(i32 %26)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = call %struct.TYPE_9__* @GinPageGetOpaque(i32 %28)
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @GIN_DELETED, align 4
  %33 = and i32 %31, %32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %25
  %36 = load i32, i32* %12, align 4
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @GinDataLeafPageGetItemsToTbm(i32 %36, i32 %39)
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %13, align 4
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, %41
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %35, %25
  %47 = load i32, i32* %12, align 4
  %48 = call i64 @GinPageRightMost(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  br label %56

51:                                               ; preds = %46
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @GIN_SHARE, align 4
  %55 = call i32 @ginStepRight(i32 %52, i32 %53, i32 %54)
  store i32 %55, i32* %11, align 4
  br label %25

56:                                               ; preds = %50
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @UnlockReleaseBuffer(i32 %57)
  ret void
}

declare dso_local %struct.TYPE_8__* @ginScanBeginPostingTree(i32*, i32, i32, i32) #1

declare dso_local i32 @IncrBufferRefCount(i32) #1

declare dso_local i32 @freeGinBtreeStack(%struct.TYPE_8__*) #1

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local %struct.TYPE_9__* @GinPageGetOpaque(i32) #1

declare dso_local i32 @GinDataLeafPageGetItemsToTbm(i32, i32) #1

declare dso_local i64 @GinPageRightMost(i32) #1

declare dso_local i32 @ginStepRight(i32, i32, i32) #1

declare dso_local i32 @UnlockReleaseBuffer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
