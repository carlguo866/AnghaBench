; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlogarchive.c_XLogArchiveIsReadyOrDone.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlogarchive.c_XLogArchiveIsReadyOrDone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@MAXPGPATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c".done\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c".ready\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @XLogArchiveIsReadyOrDone(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.stat, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = load i32, i32* @MAXPGPATH, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %4, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %5, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = call i32 @StatusFilePath(i8* %11, i8* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %14 = call i64 @stat(i8* %11, %struct.stat* %6)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %30

17:                                               ; preds = %1
  %18 = load i8*, i8** %3, align 8
  %19 = call i32 @StatusFilePath(i8* %11, i8* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %20 = call i64 @stat(i8* %11, %struct.stat* %6)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i32 1, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %30

23:                                               ; preds = %17
  %24 = load i8*, i8** %3, align 8
  %25 = call i32 @StatusFilePath(i8* %11, i8* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %26 = call i64 @stat(i8* %11, %struct.stat* %6)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 1, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %30

29:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %30

30:                                               ; preds = %29, %28, %22, %16
  %31 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %31)
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @StatusFilePath(i8*, i8*, i8*) #2

declare dso_local i64 @stat(i8*, %struct.stat*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
