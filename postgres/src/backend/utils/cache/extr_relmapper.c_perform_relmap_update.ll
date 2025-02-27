; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_relmapper.c_perform_relmap_update.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_relmapper.c_perform_relmap_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RelationMappingLock = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@shared_map = common dso_local global i32 0, align 4
@local_map = common dso_local global i32 0, align 4
@allowSystemTableMods = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4
@MyDatabaseId = common dso_local global i32 0, align 4
@GLOBALTABLESPACE_OID = common dso_local global i32 0, align 4
@MyDatabaseTableSpace = common dso_local global i32 0, align 4
@DatabasePath = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*)* @perform_relmap_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perform_relmap_update(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %6 = load i32, i32* @RelationMappingLock, align 4
  %7 = load i32, i32* @LW_EXCLUSIVE, align 4
  %8 = call i32 @LWLockAcquire(i32 %6, i32 %7)
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @load_relmap_file(i32 %9)
  %11 = load i32, i32* %3, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = call i32 @memcpy(i32* %5, i32* @shared_map, i32 4)
  br label %17

15:                                               ; preds = %2
  %16 = call i32 @memcpy(i32* %5, i32* @local_map, i32 4)
  br label %17

17:                                               ; preds = %15, %13
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* @allowSystemTableMods, align 4
  %20 = call i32 @merge_map_updates(i32* %5, i32* %18, i32 %19)
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i32, i32* @InvalidOid, align 4
  br label %28

26:                                               ; preds = %17
  %27 = load i32, i32* @MyDatabaseId, align 4
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i32 [ %25, %24 ], [ %27, %26 ]
  %30 = load i32, i32* %3, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, i32* @GLOBALTABLESPACE_OID, align 4
  br label %36

34:                                               ; preds = %28
  %35 = load i32, i32* @MyDatabaseTableSpace, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  %38 = load i32, i32* @DatabasePath, align 4
  %39 = call i32 @write_relmap_file(i32 %21, i32* %5, i32 1, i32 1, i32 1, i32 %29, i32 %37, i32 %38)
  %40 = load i32, i32* @RelationMappingLock, align 4
  %41 = call i32 @LWLockRelease(i32 %40)
  ret void
}

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i32 @load_relmap_file(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @merge_map_updates(i32*, i32*, i32) #1

declare dso_local i32 @write_relmap_file(i32, i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @LWLockRelease(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
