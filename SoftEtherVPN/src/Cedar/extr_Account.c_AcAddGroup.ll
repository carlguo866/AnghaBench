; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Account.c_AcAddGroup.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Account.c_AcAddGroup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }

@MAX_GROUPS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AcAddGroup(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  %6 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %7 = icmp eq %struct.TYPE_11__* %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %2
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %10 = icmp eq %struct.TYPE_10__* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %13 = call i64 @NO_ACCOUNT_DB(%struct.TYPE_11__* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11, %8, %2
  store i32 0, i32* %3, align 4
  br label %46

16:                                               ; preds = %11
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @LIST_NUM(i32 %21)
  %23 = load i64, i64* @MAX_GROUPS, align 8
  %24 = icmp sge i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %46

26:                                               ; preds = %16
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @AcIsGroup(%struct.TYPE_11__* %27, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %46

34:                                               ; preds = %26
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %41 = call i32 @Insert(i32 %39, %struct.TYPE_10__* %40)
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @AddRef(i32 %44)
  store i32 1, i32* %3, align 4
  br label %46

46:                                               ; preds = %34, %33, %25, %15
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i64 @NO_ACCOUNT_DB(%struct.TYPE_11__*) #1

declare dso_local i64 @LIST_NUM(i32) #1

declare dso_local i32 @AcIsGroup(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @Insert(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @AddRef(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
