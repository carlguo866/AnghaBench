; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_process_utility.c_process_grant_and_revoke.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_process_utility.c_process_grant_and_revoke.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i64, i32, i64 }

@ACL_TARGET_OBJECT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @process_grant_and_revoke to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_grant_and_revoke(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %8, %struct.TYPE_7__** %4, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %10 = call i32 @prev_ProcessUtility(%struct.TYPE_6__* %9)
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %1
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @ACL_TARGET_OBJECT, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15, %1
  store i32 1, i32* %2, align 4
  br label %31

22:                                               ; preds = %15
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %29 [
    i32 128, label %26
  ]

26:                                               ; preds = %22
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %28 = call i32 @ts_tablespace_validate_revoke(%struct.TYPE_7__* %27)
  br label %30

29:                                               ; preds = %22
  br label %30

30:                                               ; preds = %29, %26
  store i32 1, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %21
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @prev_ProcessUtility(%struct.TYPE_6__*) #1

declare dso_local i32 @ts_tablespace_validate_revoke(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
