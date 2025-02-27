; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/openbsd-compat/extr_glob.c_glob1.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/openbsd-compat/extr_glob.c_glob1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.glob_lim = type { i32 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@EOS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i64*, i32*, %struct.glob_lim*)* @glob1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @glob1(i64* %0, i64* %1, i32* %2, %struct.glob_lim* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.glob_lim*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i64* %0, i64** %6, align 8
  store i64* %1, i64** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.glob_lim* %3, %struct.glob_lim** %9, align 8
  %13 = load i32, i32* @MAXPATHLEN, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %10, align 8
  %16 = alloca i64, i64 %14, align 16
  store i64 %14, i64* %11, align 8
  %17 = load i64*, i64** %6, align 8
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @EOS, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  store i32 1, i32* %12, align 4
  br label %36

22:                                               ; preds = %4
  %23 = load i32, i32* @MAXPATHLEN, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %16, i64 %24
  %26 = getelementptr inbounds i64, i64* %25, i64 -1
  %27 = load i32, i32* @MAXPATHLEN, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %16, i64 %28
  %30 = getelementptr inbounds i64, i64* %29, i64 -1
  %31 = load i64*, i64** %6, align 8
  %32 = load i64*, i64** %7, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = load %struct.glob_lim*, %struct.glob_lim** %9, align 8
  %35 = call i32 @glob2(i64* %16, i64* %26, i64* %16, i64* %30, i64* %31, i64* %32, i32* %33, %struct.glob_lim* %34)
  store i32 %35, i32* %5, align 4
  store i32 1, i32* %12, align 4
  br label %36

36:                                               ; preds = %22, %21
  %37 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %37)
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @glob2(i64*, i64*, i64*, i64*, i64*, i64*, i32*, %struct.glob_lim*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
