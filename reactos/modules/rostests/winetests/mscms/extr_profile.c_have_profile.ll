; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mscms/extr_profile.c_have_profile.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mscms/extr_profile.c_have_profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"\\*.icm\00", align 1
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @have_profile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @have_profile() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = load i32, i32* @MAX_PATH, align 4
  %9 = sext i32 %8 to i64
  %10 = add i64 %9, 7
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %2, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %3, align 8
  %13 = load i32, i32* @MAX_PATH, align 4
  store i32 %13, i32* %4, align 4
  %14 = call i32 @pGetColorDirectoryA(i32* null, i8* %12, i32* %4)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %0
  %17 = load i32, i32* @FALSE, align 4
  store i32 %17, i32* %1, align 4
  store i32 1, i32* %7, align 4
  br label %30

18:                                               ; preds = %0
  %19 = call i32 @lstrcatA(i8* %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %20 = call i64 @FindFirstFileA(i8* %12, i32* %6)
  store i64 %20, i64* %5, align 8
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* @FALSE, align 4
  store i32 %25, i32* %1, align 4
  store i32 1, i32* %7, align 4
  br label %30

26:                                               ; preds = %18
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @FindClose(i64 %27)
  %29 = load i32, i32* @TRUE, align 4
  store i32 %29, i32* %1, align 4
  store i32 1, i32* %7, align 4
  br label %30

30:                                               ; preds = %26, %24, %16
  %31 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %31)
  %32 = load i32, i32* %1, align 4
  ret i32 %32
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @pGetColorDirectoryA(i32*, i8*, i32*) #2

declare dso_local i32 @lstrcatA(i8*, i8*) #2

declare dso_local i64 @FindFirstFileA(i8*, i32*) #2

declare dso_local i32 @FindClose(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
