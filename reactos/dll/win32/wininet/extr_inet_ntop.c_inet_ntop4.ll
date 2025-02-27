; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_inet_ntop.c_inet_ntop4.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_inet_ntop.c_inet_ntop4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@inet_ntop4.fmt = internal constant [12 x i8] c"%u.%u.%u.%u\00", align 1
@WSAEINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i8*, i64)* @inet_ntop4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @inet_ntop4(i32* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca [16 x i8], align 16
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %10 = load i32*, i32** %5, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 2
  %18 = load i32, i32* %17, align 4
  %19 = load i32*, i32** %5, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 3
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to i8*
  %24 = call i64 @SPRINTF(i8* %23)
  %25 = load i64, i64* %7, align 8
  %26 = icmp sgt i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load i32, i32* @WSAEINVAL, align 4
  %29 = call i32 @WSASetLastError(i32 %28)
  store i8* null, i8** %4, align 8
  br label %35

30:                                               ; preds = %3
  %31 = load i8*, i8** %6, align 8
  %32 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %33 = call i32 @strcpy(i8* %31, i8* %32)
  %34 = load i8*, i8** %6, align 8
  store i8* %34, i8** %4, align 8
  br label %35

35:                                               ; preds = %30, %27
  %36 = load i8*, i8** %4, align 8
  ret i8* %36
}

declare dso_local i64 @SPRINTF(i8*) #1

declare dso_local i32 @WSASetLastError(i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
