; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Cedar.c_CheckSignatureByCaLinkMode.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Cedar.c_CheckSignatureByCaLinkMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CheckSignatureByCaLinkMode(%struct.TYPE_7__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %11 = icmp eq %struct.TYPE_7__* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32*, i32** %5, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %2
  store i32 0, i32* %3, align 4
  br label %61

16:                                               ; preds = %12
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  store %struct.TYPE_8__* %24, %struct.TYPE_8__** %6, align 8
  %25 = icmp eq %struct.TYPE_8__* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %21, %16
  store i32 0, i32* %3, align 4
  br label %61

27:                                               ; preds = %21
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  store %struct.TYPE_9__* %30, %struct.TYPE_9__** %7, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = icmp ne %struct.TYPE_6__* %33, null
  br i1 %34, label %35, label %59

35:                                               ; preds = %27
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @LockList(i32 %40)
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %5, align 8
  %48 = call i32* @GetIssuerFromList(i32 %46, i32* %47)
  store i32* %48, i32** %9, align 8
  %49 = load i32*, i32** %9, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %35
  store i32 1, i32* %8, align 4
  br label %52

52:                                               ; preds = %51, %35
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @UnlockList(i32 %57)
  br label %59

59:                                               ; preds = %52, %27
  %60 = load i32, i32* %8, align 4
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %59, %26, %15
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @LockList(i32) #1

declare dso_local i32* @GetIssuerFromList(i32, i32*) #1

declare dso_local i32 @UnlockList(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
