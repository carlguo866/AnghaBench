; ModuleID = '/home/carl/AnghaBench/ish/kernel/extr_fs.c_sys_unlinkat.c'
source_filename = "/home/carl/AnghaBench/ish/kernel/extr_fs.c_sys_unlinkat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fd = type { i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@_EFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"unlinkat(%d, \22%s\22, %d)\00", align 1
@_EBADF = common dso_local global i32 0, align 4
@AT_REMOVEDIR_ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_unlinkat(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.fd*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* @MAX_PATH, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  %16 = load i32, i32* %6, align 4
  %17 = trunc i64 %13 to i32
  %18 = call i64 @user_read_string(i32 %16, i8* %15, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @_EFAULT, align 4
  store i32 %21, i32* %4, align 4
  store i32 1, i32* %10, align 4
  br label %43

22:                                               ; preds = %3
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @STRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %23, i8* %15, i32 %24)
  %26 = load i32, i32* %5, align 4
  %27 = call %struct.fd* @at_fd(i32 %26)
  store %struct.fd* %27, %struct.fd** %11, align 8
  %28 = load %struct.fd*, %struct.fd** %11, align 8
  %29 = icmp eq %struct.fd* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load i32, i32* @_EBADF, align 4
  store i32 %31, i32* %4, align 4
  store i32 1, i32* %10, align 4
  br label %43

32:                                               ; preds = %22
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @AT_REMOVEDIR_, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load %struct.fd*, %struct.fd** %11, align 8
  %39 = call i32 @generic_rmdirat(%struct.fd* %38, i8* %15)
  store i32 %39, i32* %4, align 4
  store i32 1, i32* %10, align 4
  br label %43

40:                                               ; preds = %32
  %41 = load %struct.fd*, %struct.fd** %11, align 8
  %42 = call i32 @generic_unlinkat(%struct.fd* %41, i8* %15)
  store i32 %42, i32* %4, align 4
  store i32 1, i32* %10, align 4
  br label %43

43:                                               ; preds = %40, %37, %30, %20
  %44 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %44)
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @user_read_string(i32, i8*, i32) #2

declare dso_local i32 @STRACE(i8*, i32, i8*, i32) #2

declare dso_local %struct.fd* @at_fd(i32) #2

declare dso_local i32 @generic_rmdirat(%struct.fd*, i8*) #2

declare dso_local i32 @generic_unlinkat(%struct.fd*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
