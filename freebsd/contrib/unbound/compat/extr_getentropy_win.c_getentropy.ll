; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/compat/extr_getentropy_win.c_getentropy.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/compat/extr_getentropy_win.c_getentropy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EIO = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@PROV_RSA_FULL = common dso_local global i32 0, align 4
@CRYPT_VERIFYCONTEXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getentropy(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = icmp ugt i64 %7, 256
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32, i32* @EIO, align 4
  store i32 %10, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %31

11:                                               ; preds = %2
  %12 = load i32, i32* @PROV_RSA_FULL, align 4
  %13 = load i32, i32* @CRYPT_VERIFYCONTEXT, align 4
  %14 = call i64 @CryptAcquireContext(i32* %6, i32* null, i32* null, i32 %12, i32 %13)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  br label %29

17:                                               ; preds = %11
  %18 = load i32, i32* %6, align 4
  %19 = load i64, i64* %5, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = call i64 @CryptGenRandom(i32 %18, i64 %19, i8* %20)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @CryptReleaseContext(i32 %24, i32 0)
  br label %29

26:                                               ; preds = %17
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @CryptReleaseContext(i32 %27, i32 0)
  store i32 0, i32* %3, align 4
  br label %31

29:                                               ; preds = %23, %16
  %30 = load i32, i32* @EIO, align 4
  store i32 %30, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %31

31:                                               ; preds = %29, %26, %9
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i64 @CryptAcquireContext(i32*, i32*, i32*, i32, i32) #1

declare dso_local i64 @CryptGenRandom(i32, i64, i8*) #1

declare dso_local i32 @CryptReleaseContext(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
