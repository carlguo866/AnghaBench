; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_patch.c_get_pf_file_size.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_patch.c_get_pf_file_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@PROG_FILES_DIR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\\\00", align 1
@GENERIC_READ = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@INVALID_FILE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @get_pf_file_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_pf_file_size(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %9 = load i32, i32* @MAX_PATH, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %4, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %5, align 8
  %13 = load i32, i32* @PROG_FILES_DIR, align 4
  %14 = call i32 @strcpy(i8* %12, i32 %13)
  %15 = call i32 @strcat(i8* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %16 = load i8*, i8** %3, align 8
  %17 = call i32 @strcat(i8* %12, i8* %16)
  %18 = load i32, i32* @GENERIC_READ, align 4
  %19 = load i32, i32* @FILE_SHARE_READ, align 4
  %20 = load i32, i32* @OPEN_EXISTING, align 4
  %21 = call i64 @CreateFileA(i8* %12, i32 %18, i32 %19, i32* null, i32 %20, i32 0, i32* null)
  store i64 %21, i64* %6, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = load i32, i32* @INVALID_FILE_SIZE, align 4
  store i32 %26, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %33

27:                                               ; preds = %1
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @GetFileSize(i64 %28, i32* null)
  store i32 %29, i32* %7, align 4
  %30 = load i64, i64* %6, align 8
  %31 = call i32 @CloseHandle(i64 %30)
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %33

33:                                               ; preds = %27, %25
  %34 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %34)
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strcpy(i8*, i32) #2

declare dso_local i32 @strcat(i8*, i8*) #2

declare dso_local i64 @CreateFileA(i8*, i32, i32, i32*, i32, i32, i32*) #2

declare dso_local i32 @GetFileSize(i64, i32*) #2

declare dso_local i32 @CloseHandle(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
