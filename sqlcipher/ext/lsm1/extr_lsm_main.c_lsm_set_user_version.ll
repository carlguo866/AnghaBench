; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_main.c_lsm_set_user_version.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_main.c_lsm_set_user_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@LSM_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lsm_set_user_version(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @LSM_OK, align 4
  store i32 %7, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %14 = call i32 @lsm_begin(%struct.TYPE_8__* %13, i32 1)
  store i32 %14, i32* %5, align 4
  br label %15

15:                                               ; preds = %12, %2
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @LSM_OK, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 8
  br label %24

24:                                               ; preds = %19, %15
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %24
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @LSM_OK, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %33 = call i32 @lsm_commit(%struct.TYPE_8__* %32, i32 0)
  store i32 %33, i32* %5, align 4
  br label %37

34:                                               ; preds = %27
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %36 = call i32 @lsm_rollback(%struct.TYPE_8__* %35, i32 0)
  br label %37

37:                                               ; preds = %34, %31
  br label %38

38:                                               ; preds = %37, %24
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local i32 @lsm_begin(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @lsm_commit(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @lsm_rollback(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
