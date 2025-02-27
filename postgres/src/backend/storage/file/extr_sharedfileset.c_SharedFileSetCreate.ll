; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/file/extr_sharedfileset.c_SharedFileSetCreate.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/file/extr_sharedfileset.c_SharedFileSetCreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXPGPATH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @SharedFileSetCreate(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = load i32, i32* @MAXPGPATH, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %5, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %6, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @SharedFilePath(i8* %15, i32* %16, i8* %17)
  %19 = call i64 @PathNameCreateTemporaryFile(i8* %15, i32 0)
  store i64 %19, i64* %7, align 8
  %20 = load i64, i64* %7, align 8
  %21 = icmp sle i64 %20, 0
  br i1 %21, label %22, label %41

22:                                               ; preds = %2
  %23 = load i32, i32* @MAXPGPATH, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %8, align 8
  %26 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %9, align 8
  %27 = load i32, i32* @MAXPGPATH, align 4
  %28 = zext i32 %27 to i64
  %29 = alloca i8, i64 %28, align 16
  store i64 %28, i64* %10, align 8
  %30 = load i32*, i32** %3, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 @ChooseTablespace(i32* %30, i8* %31)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @TempTablespacePath(i8* %26, i32 %33)
  %35 = load i32*, i32** %3, align 8
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @SharedFileSetPath(i8* %29, i32* %35, i32 %36)
  %38 = call i32 @PathNameCreateTemporaryDir(i8* %26, i8* %29)
  %39 = call i64 @PathNameCreateTemporaryFile(i8* %15, i32 1)
  store i64 %39, i64* %7, align 8
  %40 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %40)
  br label %41

41:                                               ; preds = %22, %2
  %42 = load i64, i64* %7, align 8
  %43 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %43)
  ret i64 %42
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @SharedFilePath(i8*, i32*, i8*) #2

declare dso_local i64 @PathNameCreateTemporaryFile(i8*, i32) #2

declare dso_local i32 @ChooseTablespace(i32*, i8*) #2

declare dso_local i32 @TempTablespacePath(i8*, i32) #2

declare dso_local i32 @SharedFileSetPath(i8*, i32*, i32) #2

declare dso_local i32 @PathNameCreateTemporaryDir(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
