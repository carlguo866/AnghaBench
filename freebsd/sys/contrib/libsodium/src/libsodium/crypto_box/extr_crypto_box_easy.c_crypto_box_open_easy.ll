; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_box/extr_crypto_box_easy.c_crypto_box_open_easy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_box/extr_crypto_box_easy.c_crypto_box_open_easy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crypto_box_MACBYTES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_box_open_easy(i8* %0, i8* %1, i64 %2, i8* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  %14 = load i64, i64* %10, align 8
  %15 = load i64, i64* @crypto_box_MACBYTES, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %31

18:                                               ; preds = %6
  %19 = load i8*, i8** %8, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = load i64, i64* @crypto_box_MACBYTES, align 8
  %22 = getelementptr inbounds i8, i8* %20, i64 %21
  %23 = load i8*, i8** %9, align 8
  %24 = load i64, i64* %10, align 8
  %25 = load i64, i64* @crypto_box_MACBYTES, align 8
  %26 = sub i64 %24, %25
  %27 = load i8*, i8** %11, align 8
  %28 = load i8*, i8** %12, align 8
  %29 = load i8*, i8** %13, align 8
  %30 = call i32 @crypto_box_open_detached(i8* %19, i8* %22, i8* %23, i64 %26, i8* %27, i8* %28, i8* %29)
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %18, %17
  %32 = load i32, i32* %7, align 4
  ret i32 %32
}

declare dso_local i32 @crypto_box_open_detached(i8*, i8*, i8*, i64, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
