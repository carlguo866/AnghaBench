; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ui/extr_ui_util.c_ui_dup_method_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ui/extr_ui_util.c_ui_dup_method_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8*, i32, i64, i8*)* @ui_dup_method_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ui_dup_method_data(i32* %0, i32* %1, i8* %2, i32 %3, i64 %4, i8* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8**, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  store i8* %5, i8** %12, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = bitcast i8* %14 to i8**
  store i8** %15, i8*** %13, align 8
  %16 = load i8**, i8*** %13, align 8
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %6
  %20 = load i8**, i8*** %13, align 8
  %21 = load i8*, i8** %20, align 8
  %22 = call i8* @OPENSSL_memdup(i8* %21, i32 4)
  %23 = load i8**, i8*** %13, align 8
  store i8* %22, i8** %23, align 8
  br label %24

24:                                               ; preds = %19, %6
  ret i32 1
}

declare dso_local i8* @OPENSSL_memdup(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
