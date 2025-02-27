; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/large_object/extr_inv_api.c_open_lo_relation.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/large_object/extr_inv_api.c_open_lo_relation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lo_heap_r = common dso_local global i32* null, align 8
@lo_index_r = common dso_local global i32* null, align 8
@CurrentResourceOwner = common dso_local global i32 0, align 4
@TopTransactionResourceOwner = common dso_local global i32 0, align 4
@LargeObjectRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@LargeObjectLOidPNIndexId = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @open_lo_relation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @open_lo_relation() #0 {
  %1 = alloca i32, align 4
  %2 = load i32*, i32** @lo_heap_r, align 8
  %3 = icmp ne i32* %2, null
  br i1 %3, label %4, label %8

4:                                                ; preds = %0
  %5 = load i32*, i32** @lo_index_r, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  br label %26

8:                                                ; preds = %4, %0
  %9 = load i32, i32* @CurrentResourceOwner, align 4
  store i32 %9, i32* %1, align 4
  %10 = load i32, i32* @TopTransactionResourceOwner, align 4
  store i32 %10, i32* @CurrentResourceOwner, align 4
  %11 = load i32*, i32** @lo_heap_r, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %8
  %14 = load i32, i32* @LargeObjectRelationId, align 4
  %15 = load i32, i32* @RowExclusiveLock, align 4
  %16 = call i32* @table_open(i32 %14, i32 %15)
  store i32* %16, i32** @lo_heap_r, align 8
  br label %17

17:                                               ; preds = %13, %8
  %18 = load i32*, i32** @lo_index_r, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load i32, i32* @LargeObjectLOidPNIndexId, align 4
  %22 = load i32, i32* @RowExclusiveLock, align 4
  %23 = call i32* @index_open(i32 %21, i32 %22)
  store i32* %23, i32** @lo_index_r, align 8
  br label %24

24:                                               ; preds = %20, %17
  %25 = load i32, i32* %1, align 4
  store i32 %25, i32* @CurrentResourceOwner, align 4
  br label %26

26:                                               ; preds = %24, %7
  ret void
}

declare dso_local i32* @table_open(i32, i32) #1

declare dso_local i32* @index_open(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
