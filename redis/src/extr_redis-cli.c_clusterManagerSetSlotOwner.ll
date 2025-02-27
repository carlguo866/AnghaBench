; ModuleID = '/home/carl/AnghaBench/redis/src/extr_redis-cli.c_clusterManagerSetSlotOwner.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_redis-cli.c_clusterManagerSetSlotOwner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@clusterManagerOnSetOwnerErr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32)* @clusterManagerSetSlotOwner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clusterManagerSetSlotOwner(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32*, i32** %5, align 8
  %10 = call i32 @clusterManagerStartTransaction(i32* %9)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %34

14:                                               ; preds = %3
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @clusterManagerDelSlot(i32* %15, i32 %16, i32 1)
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @clusterManagerAddSlot(i32* %18, i32 %19)
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %14
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @clusterManagerClearSlotStatus(i32* %24, i32 %25)
  br label %27

27:                                               ; preds = %23, %14
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @clusterManagerBumpEpoch(i32* %28)
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* @clusterManagerOnSetOwnerErr, align 4
  %32 = call i32 @clusterManagerExecTransaction(i32* %30, i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %27, %13
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @clusterManagerStartTransaction(i32*) #1

declare dso_local i32 @clusterManagerDelSlot(i32*, i32, i32) #1

declare dso_local i32 @clusterManagerAddSlot(i32*, i32) #1

declare dso_local i32 @clusterManagerClearSlotStatus(i32*, i32) #1

declare dso_local i32 @clusterManagerBumpEpoch(i32*) #1

declare dso_local i32 @clusterManagerExecTransaction(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
