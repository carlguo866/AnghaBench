; ModuleID = '/home/carl/AnghaBench/wcdb/android/sqlcipher/extr_sqlite3.c_walUnlockExclusive.c'
source_filename = "/home/carl/AnghaBench/wcdb/android/sqlcipher/extr_sqlite3.c_walUnlockExclusive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }

@SQLITE_SHM_UNLOCK = common dso_local global i32 0, align 4
@SQLITE_SHM_EXCLUSIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"WAL%p: release EXCLUSIVE-%s cnt=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32, i32)* @walUnlockExclusive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @walUnlockExclusive(%struct.TYPE_3__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %29

12:                                               ; preds = %3
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @SQLITE_SHM_UNLOCK, align 4
  %19 = load i32, i32* @SQLITE_SHM_EXCLUSIVE, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @sqlite3OsShmLock(i32 %15, i32 %16, i32 %17, i32 %20)
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @walLockName(i32 %23)
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = inttoptr i64 %26 to i8*
  %28 = call i32 @WALTRACE(i8* %27)
  br label %29

29:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @sqlite3OsShmLock(i32, i32, i32, i32) #1

declare dso_local i32 @WALTRACE(i8*) #1

declare dso_local i32 @walLockName(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
