; ModuleID = '/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_pragmaLocate.c'
source_filename = "/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_pragmaLocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@aPragmaName = common dso_local global %struct.TYPE_5__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_5__* (i8*)* @pragmaLocate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_5__* @pragmaLocate(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** @aPragmaName, align 8
  %8 = call i32 @ArraySize(%struct.TYPE_5__* %7)
  %9 = sub nsw i32 %8, 1
  store i32 %9, i32* %3, align 4
  br label %10

10:                                               ; preds = %39, %1
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp sle i32 %11, %12
  br i1 %13, label %14, label %40

14:                                               ; preds = %10
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* %3, align 4
  %17 = add nsw i32 %15, %16
  %18 = sdiv i32 %17, 2
  store i32 %18, i32* %5, align 4
  %19 = load i8*, i8** %2, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** @aPragmaName, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @sqlite3_stricmp(i8* %19, i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %14
  br label %40

30:                                               ; preds = %14
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i32, i32* %5, align 4
  %35 = sub nsw i32 %34, 1
  store i32 %35, i32* %3, align 4
  br label %39

36:                                               ; preds = %30
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %36, %33
  br label %10

40:                                               ; preds = %29, %10
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* %3, align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  br label %50

45:                                               ; preds = %40
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** @aPragmaName, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i64 %48
  br label %50

50:                                               ; preds = %45, %44
  %51 = phi %struct.TYPE_5__* [ null, %44 ], [ %49, %45 ]
  ret %struct.TYPE_5__* %51
}

declare dso_local i32 @ArraySize(%struct.TYPE_5__*) #1

declare dso_local i32 @sqlite3_stricmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
