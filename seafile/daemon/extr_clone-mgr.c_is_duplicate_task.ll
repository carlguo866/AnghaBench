; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_clone-mgr.c_is_duplicate_task.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_clone-mgr.c_is_duplicate_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i64 }

@CLONE_STATE_DONE = common dso_local global i64 0, align 8
@CLONE_STATE_CANCELED = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i8*)* @is_duplicate_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_duplicate_task(%struct.TYPE_5__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = call %struct.TYPE_6__* @g_hash_table_lookup(i32 %9, i8* %10)
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** %6, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %13 = icmp ne %struct.TYPE_6__* %12, null
  br i1 %13, label %14, label %28

14:                                               ; preds = %2
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @CLONE_STATE_DONE, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %14
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @CLONE_STATE_CANCELED, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* @TRUE, align 4
  store i32 %27, i32* %3, align 4
  br label %30

28:                                               ; preds = %20, %14, %2
  %29 = load i32, i32* @FALSE, align 4
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %28, %26
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local %struct.TYPE_6__* @g_hash_table_lookup(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
