; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_norx.c_encrypt_body.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_norx.c_encrypt_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RATE_BYTES = common dso_local global i64 0, align 8
@DOMAIN_PAYLOAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i64)* @encrypt_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encrypt_body(i32* %0, i32* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load i64, i64* %8, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  br label %64

14:                                               ; preds = %4
  br label %15

15:                                               ; preds = %19, %14
  %16 = load i64, i64* %8, align 8
  %17 = load i64, i64* @RATE_BYTES, align 8
  %18 = icmp uge i64 %16, %17
  br i1 %18, label %19, label %36

19:                                               ; preds = %15
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* @DOMAIN_PAYLOAD, align 4
  %22 = call i32 @switch_domain(i32* %20, i32 %21)
  %23 = load i32*, i32** %5, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = call i32 @body_block_encrypt(i32* %23, i32* %24, i32* %25)
  %27 = load i64, i64* @RATE_BYTES, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 %27
  store i32* %29, i32** %6, align 8
  %30 = load i64, i64* @RATE_BYTES, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 %30
  store i32* %32, i32** %7, align 8
  %33 = load i64, i64* @RATE_BYTES, align 8
  %34 = load i64, i64* %8, align 8
  %35 = sub i64 %34, %33
  store i64 %35, i64* %8, align 8
  br label %15

36:                                               ; preds = %15
  %37 = load i64, i64* @RATE_BYTES, align 8
  %38 = call i8* @llvm.stacksave()
  store i8* %38, i8** %9, align 8
  %39 = alloca i32, i64 %37, align 16
  store i64 %37, i64* %10, align 8
  %40 = mul nuw i64 4, %37
  %41 = trunc i64 %40 to i32
  %42 = call i32 @memset(i32* %39, i32 0, i32 %41)
  %43 = load i32*, i32** %6, align 8
  %44 = load i64, i64* %8, align 8
  %45 = call i32 @memcpy(i32* %39, i32* %43, i64 %44)
  %46 = load i64, i64* %8, align 8
  %47 = getelementptr inbounds i32, i32* %39, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = xor i32 %48, 1
  store i32 %49, i32* %47, align 4
  %50 = mul nuw i64 4, %37
  %51 = sub i64 %50, 1
  %52 = getelementptr inbounds i32, i32* %39, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = xor i32 %53, 128
  store i32 %54, i32* %52, align 4
  %55 = load i32*, i32** %5, align 8
  %56 = load i32, i32* @DOMAIN_PAYLOAD, align 4
  %57 = call i32 @switch_domain(i32* %55, i32 %56)
  %58 = load i32*, i32** %5, align 8
  %59 = call i32 @body_block_encrypt(i32* %58, i32* %39, i32* %39)
  %60 = load i32*, i32** %7, align 8
  %61 = load i64, i64* %8, align 8
  %62 = call i32 @memcpy(i32* %60, i32* %39, i64 %61)
  %63 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %63)
  br label %64

64:                                               ; preds = %36, %13
  ret void
}

declare dso_local i32 @switch_domain(i32*, i32) #1

declare dso_local i32 @body_block_encrypt(i32*, i32*, i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
