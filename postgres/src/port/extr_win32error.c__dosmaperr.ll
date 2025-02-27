; ModuleID = '/home/carl/AnghaBench/postgres/src/port/extr_win32error.c__dosmaperr.c'
source_filename = "/home/carl/AnghaBench/postgres/src/port/extr_win32error.c__dosmaperr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@errno = common dso_local global i32 0, align 4
@doserrors = common dso_local global %struct.TYPE_3__* null, align 8
@DEBUG5 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"mapped win32 error code %lu to %d\00", align 1
@LOG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"unrecognized win32 error code: %lu\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_dosmaperr(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 0, i32* @errno, align 4
  br label %46

8:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %37, %8
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** @doserrors, align 8
  %12 = call i32 @lengthof(%struct.TYPE_3__* %11)
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %40

14:                                               ; preds = %9
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** @doserrors, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %2, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %14
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** @doserrors, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* @DEBUG5, align 4
  %31 = load i64, i64* %2, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i32 (i8*, i64, ...) @errmsg_internal(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %31, i32 %32)
  %34 = call i32 @ereport(i32 %30, i32 %33)
  %35 = load i32, i32* %4, align 4
  store i32 %35, i32* @errno, align 4
  br label %46

36:                                               ; preds = %14
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %3, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %3, align 4
  br label %9

40:                                               ; preds = %9
  %41 = load i32, i32* @LOG, align 4
  %42 = load i64, i64* %2, align 8
  %43 = call i32 (i8*, i64, ...) @errmsg_internal(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %42)
  %44 = call i32 @ereport(i32 %41, i32 %43)
  %45 = load i32, i32* @EINVAL, align 4
  store i32 %45, i32* @errno, align 4
  br label %46

46:                                               ; preds = %40, %23, %7
  ret void
}

declare dso_local i32 @lengthof(%struct.TYPE_3__*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg_internal(i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
