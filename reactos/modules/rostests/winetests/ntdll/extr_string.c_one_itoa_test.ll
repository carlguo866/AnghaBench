; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_string.c_one_itoa_test.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_string.c_one_itoa_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i32 }

@LARGE_STRI_BUFFER_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"(test %d): _itoa(%d, [out], %d) has result %p, expected: %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [69 x i8] c"(test %d): _itoa(%d, [out], %d) assigns string \22%s\22, expected: \22%s\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_3__*)* @one_itoa_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @one_itoa_test(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %9 = load i32, i32* @LARGE_STRI_BUFFER_LENGTH, align 4
  %10 = add nsw i32 %9, 1
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %5, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %6, align 8
  %14 = load i32, i32* @LARGE_STRI_BUFFER_LENGTH, align 4
  %15 = call i32 @memset(i8* %13, i8 signext 45, i32 %14)
  %16 = load i32, i32* @LARGE_STRI_BUFFER_LENGTH, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %13, i64 %17
  store i8 0, i8* %18, align 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i8* @p_itoa(i32 %22, i8* %13, i32 %25)
  store i8* %26, i8** %8, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = icmp eq i8* %27, %13
  %29 = zext i1 %28 to i32
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = call i32 @ok(i32 %29, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %31, i32 %34, i8* %35, i8* %13)
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = load i32, i32* @LARGE_STRI_BUFFER_LENGTH, align 4
  %41 = call i64 @memcmp(i8* %13, i8* %39, i32 %40)
  %42 = icmp eq i64 %41, 0
  %43 = zext i1 %42 to i32
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @ok(i32 %43, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i32 %44, i32 %45, i32 %48, i8* %13, i8* %51)
  %53 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %53)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i8 signext, i32) #2

declare dso_local i8* @p_itoa(i32, i8*, i32) #2

declare dso_local i32 @ok(i32, i8*, i32, i32, i32, i8*, i8*) #2

declare dso_local i64 @memcmp(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
