; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlog.c_InstallXLogFileSegment.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlog.c_InstallXLogFileSegment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@MAXPGPATH = common dso_local global i32 0, align 4
@ThisTimeLineID = common dso_local global i32 0, align 4
@wal_segment_size = common dso_local global i32 0, align 4
@ControlFileLock = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@DEBUG1 = common dso_local global i32 0, align 4
@LOG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i8*, i32, i64, i32)* @InstallXLogFileSegment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @InstallXLogFileSegment(i64* %0, i8* %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.stat, align 4
  %15 = alloca i32, align 4
  store i64* %0, i64** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load i32, i32* @MAXPGPATH, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %12, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %13, align 8
  %20 = load i32, i32* @ThisTimeLineID, align 4
  %21 = load i64*, i64** %7, align 8
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* @wal_segment_size, align 4
  %24 = call i32 @XLogFilePath(i8* %19, i32 %20, i64 %22, i32 %23)
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %5
  %28 = load i32, i32* @ControlFileLock, align 4
  %29 = load i32, i32* @LW_EXCLUSIVE, align 4
  %30 = call i32 @LWLockAcquire(i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %27, %5
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* @DEBUG1, align 4
  %36 = call i32 @durable_unlink(i8* %19, i32 %35)
  br label %63

37:                                               ; preds = %31
  br label %38

38:                                               ; preds = %53, %37
  %39 = call i64 @stat(i8* %19, %struct.stat* %14)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %62

41:                                               ; preds = %38
  %42 = load i64*, i64** %7, align 8
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %10, align 8
  %45 = icmp sge i64 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i32, i32* @ControlFileLock, align 4
  %51 = call i32 @LWLockRelease(i32 %50)
  br label %52

52:                                               ; preds = %49, %46
  store i32 0, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %82

53:                                               ; preds = %41
  %54 = load i64*, i64** %7, align 8
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %55, 1
  store i64 %56, i64* %54, align 8
  %57 = load i32, i32* @ThisTimeLineID, align 4
  %58 = load i64*, i64** %7, align 8
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* @wal_segment_size, align 4
  %61 = call i32 @XLogFilePath(i8* %19, i32 %57, i64 %59, i32 %60)
  br label %38

62:                                               ; preds = %38
  br label %63

63:                                               ; preds = %62, %34
  %64 = load i8*, i8** %8, align 8
  %65 = load i32, i32* @LOG, align 4
  %66 = call i64 @durable_link_or_rename(i8* %64, i8* %19, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %63
  %69 = load i32, i32* %11, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i32, i32* @ControlFileLock, align 4
  %73 = call i32 @LWLockRelease(i32 %72)
  br label %74

74:                                               ; preds = %71, %68
  store i32 0, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %82

75:                                               ; preds = %63
  %76 = load i32, i32* %11, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i32, i32* @ControlFileLock, align 4
  %80 = call i32 @LWLockRelease(i32 %79)
  br label %81

81:                                               ; preds = %78, %75
  store i32 1, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %82

82:                                               ; preds = %81, %74, %52
  %83 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %83)
  %84 = load i32, i32* %6, align 4
  ret i32 %84
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @XLogFilePath(i8*, i32, i64, i32) #2

declare dso_local i32 @LWLockAcquire(i32, i32) #2

declare dso_local i32 @durable_unlink(i8*, i32) #2

declare dso_local i64 @stat(i8*, %struct.stat*) #2

declare dso_local i32 @LWLockRelease(i32) #2

declare dso_local i64 @durable_link_or_rename(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
