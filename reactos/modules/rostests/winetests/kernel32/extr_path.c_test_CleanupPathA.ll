; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_path.c_test_CleanupPathA.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_path.c_test_CleanupPathA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%s\\%s\\%s\00", align 1
@SHORTDIR = common dso_local global i8* null, align 8
@SHORTFILE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"DeleteFileA failed\0A\00", align 1
@LONGFILE = common dso_local global i8* null, align 8
@LONGDIR = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"%s\\%s\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"RemoveDirectoryA failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"SetCurrentDirectoryA failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @test_CleanupPathA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_CleanupPathA(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i32, i32* @MAX_PATH, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %5, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %6, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = load i8*, i8** @SHORTDIR, align 8
  %13 = load i8*, i8** @SHORTFILE, align 8
  %14 = call i32 (i8*, i8*, i8*, i8*, ...) @sprintf(i8* %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %11, i8* %12, i8* %13)
  %15 = call i32 @DeleteFileA(i8* %10)
  %16 = call i32 @ok(i32 %15, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %17 = load i8*, i8** %4, align 8
  %18 = load i8*, i8** @SHORTDIR, align 8
  %19 = load i8*, i8** @LONGFILE, align 8
  %20 = call i32 (i8*, i8*, i8*, i8*, ...) @sprintf(i8* %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %17, i8* %18, i8* %19)
  %21 = call i32 @DeleteFileA(i8* %10)
  %22 = call i32 @ok(i32 %21, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i8*, i8** %4, align 8
  %24 = load i8*, i8** @LONGDIR, align 8
  %25 = load i8*, i8** @SHORTFILE, align 8
  %26 = call i32 (i8*, i8*, i8*, i8*, ...) @sprintf(i8* %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %23, i8* %24, i8* %25)
  %27 = call i32 @DeleteFileA(i8* %10)
  %28 = call i32 @ok(i32 %27, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i8*, i8** %4, align 8
  %30 = load i8*, i8** @LONGDIR, align 8
  %31 = load i8*, i8** @LONGFILE, align 8
  %32 = call i32 (i8*, i8*, i8*, i8*, ...) @sprintf(i8* %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %29, i8* %30, i8* %31)
  %33 = call i32 @DeleteFileA(i8* %10)
  %34 = call i32 @ok(i32 %33, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i8*, i8** %4, align 8
  %36 = load i8*, i8** @SHORTDIR, align 8
  %37 = call i32 (i8*, i8*, i8*, i8*, ...) @sprintf(i8* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %35, i8* %36)
  %38 = call i32 @RemoveDirectoryA(i8* %10)
  %39 = call i32 @ok(i32 %38, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %40 = load i8*, i8** %4, align 8
  %41 = load i8*, i8** @LONGDIR, align 8
  %42 = call i32 (i8*, i8*, i8*, i8*, ...) @sprintf(i8* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %40, i8* %41)
  %43 = call i32 @RemoveDirectoryA(i8* %10)
  %44 = call i32 @ok(i32 %43, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %45 = load i8*, i8** %3, align 8
  %46 = call i32 @SetCurrentDirectoryA(i8* %45)
  %47 = call i32 @ok(i32 %46, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %48 = load i8*, i8** %4, align 8
  %49 = call i32 @RemoveDirectoryA(i8* %48)
  %50 = call i32 @ok(i32 %49, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %51 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %51)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*, ...) #2

declare dso_local i32 @ok(i32, i8*) #2

declare dso_local i32 @DeleteFileA(i8*) #2

declare dso_local i32 @RemoveDirectoryA(i8*) #2

declare dso_local i32 @SetCurrentDirectoryA(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
