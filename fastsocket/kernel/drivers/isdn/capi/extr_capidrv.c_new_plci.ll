; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/capi/extr_capidrv.c_new_plci.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/capi/extr_capidrv.c_new_plci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_8__*, i64, i64, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_7__*, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ST_PLCI_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (%struct.TYPE_9__*, i32)* @new_plci to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @new_plci(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @GFP_ATOMIC, align 4
  %8 = call %struct.TYPE_8__* @kzalloc(i32 40, i32 %7)
  store %struct.TYPE_8__* %8, %struct.TYPE_8__** %6, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %10 = icmp eq %struct.TYPE_8__* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %3, align 8
  br label %40

12:                                               ; preds = %2
  %13 = load i32, i32* @ST_PLCI_NONE, align 4
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 4
  store i32 %13, i32* %15, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 3
  store i64 0, i64* %17, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 2
  store i64 0, i64* %19, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  store %struct.TYPE_8__* %25, %struct.TYPE_8__** %27, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  store %struct.TYPE_8__* %28, %struct.TYPE_8__** %30, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  store %struct.TYPE_8__* %31, %struct.TYPE_8__** %38, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_8__* %39, %struct.TYPE_8__** %3, align 8
  br label %40

40:                                               ; preds = %12, %11
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  ret %struct.TYPE_8__* %41
}

declare dso_local %struct.TYPE_8__* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
