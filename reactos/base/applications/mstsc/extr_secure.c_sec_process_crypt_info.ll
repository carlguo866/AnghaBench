; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_secure.c_sec_process_crypt_info.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_secure.c_sec_process_crypt_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SEC_MAX_MODULUS_SIZE = common dso_local global i32 0, align 4
@SEC_EXPONENT_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Failed to parse crypt info\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Generating client random\0A\00", align 1
@g_client_random = common dso_local global i32 0, align 4
@g_sec_crypted_random = common dso_local global i32 0, align 4
@SEC_RANDOM_SIZE = common dso_local global i32 0, align 4
@g_server_public_key_len = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @sec_process_crypt_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sec_process_crypt_info(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32* null, i32** %3, align 8
  %9 = load i32, i32* @SEC_MAX_MODULUS_SIZE, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %4, align 8
  %12 = alloca i32, i64 %10, align 16
  store i64 %10, i64* %5, align 8
  %13 = load i32, i32* @SEC_EXPONENT_SIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %6, align 8
  %16 = mul nuw i64 4, %10
  %17 = trunc i64 %16 to i32
  %18 = call i32 @memset(i32* %12, i32 0, i32 %17)
  %19 = mul nuw i64 4, %14
  %20 = trunc i64 %19 to i32
  %21 = call i32 @memset(i32* %15, i32 0, i32 %20)
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @sec_parse_crypt_info(i32 %22, i32* %7, i32** %3, i32* %12, i32* %15)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %1
  %26 = call i32 @DEBUG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  br label %40

27:                                               ; preds = %1
  %28 = call i32 @DEBUG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* @g_client_random, align 4
  %30 = call i32 @generate_random(i32 %29)
  %31 = load i32, i32* @g_sec_crypted_random, align 4
  %32 = load i32, i32* @g_client_random, align 4
  %33 = load i32, i32* @SEC_RANDOM_SIZE, align 4
  %34 = load i32, i32* @g_server_public_key_len, align 4
  %35 = call i32 @sec_rsa_encrypt(i32 %31, i32 %32, i32 %33, i32 %34, i32* %12, i32* %15)
  %36 = load i32, i32* @g_client_random, align 4
  %37 = load i32*, i32** %3, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @sec_generate_keys(i32 %36, i32* %37, i32 %38)
  store i32 0, i32* %8, align 4
  br label %40

40:                                               ; preds = %27, %25
  %41 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %41)
  %42 = load i32, i32* %8, align 4
  switch i32 %42, label %44 [
    i32 0, label %43
    i32 1, label %43
  ]

43:                                               ; preds = %40, %40
  ret void

44:                                               ; preds = %40
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @sec_parse_crypt_info(i32, i32*, i32**, i32*, i32*) #2

declare dso_local i32 @DEBUG(i8*) #2

declare dso_local i32 @generate_random(i32) #2

declare dso_local i32 @sec_rsa_encrypt(i32, i32, i32, i32, i32*, i32*) #2

declare dso_local i32 @sec_generate_keys(i32, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
