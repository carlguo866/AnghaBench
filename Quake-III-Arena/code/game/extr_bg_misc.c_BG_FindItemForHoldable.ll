; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_bg_misc.c_BG_FindItemForHoldable.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_bg_misc.c_BG_FindItemForHoldable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }

@bg_numItems = common dso_local global i32 0, align 4
@bg_itemlist = common dso_local global %struct.TYPE_4__* null, align 8
@IT_HOLDABLE = common dso_local global i64 0, align 8
@ERR_DROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"HoldableItem not found\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @BG_FindItemForHoldable(i64 %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %33, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @bg_numItems, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %36

9:                                                ; preds = %5
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @bg_itemlist, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @IT_HOLDABLE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %32

18:                                               ; preds = %9
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @bg_itemlist, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %3, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %18
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** @bg_itemlist, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 %30
  store %struct.TYPE_4__* %31, %struct.TYPE_4__** %2, align 8
  br label %39

32:                                               ; preds = %18, %9
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %4, align 4
  br label %5

36:                                               ; preds = %5
  %37 = load i32, i32* @ERR_DROP, align 4
  %38 = call i32 @Com_Error(i32 %37, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %2, align 8
  br label %39

39:                                               ; preds = %36, %27
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  ret %struct.TYPE_4__* %40
}

declare dso_local i32 @Com_Error(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
