; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_a_md5encrypt.c_addr2refid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_a_md5encrypt.c_addr2refid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EVP_MAX_MD_SIZE = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"MD5 init failed\00", align 1
@EVP_MD_CTX_FLAG_NON_FIPS_ALLOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @addr2refid(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %10 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %4, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %5, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = call i64 @IS_IPV4(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @NSRCADR(i32* %18)
  store i32 %19, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %45

20:                                               ; preds = %1
  %21 = call i32 (...) @INIT_SSL()
  %22 = call i32* (...) @EVP_MD_CTX_new()
  store i32* %22, i32** %7, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = call i32 (...) @EVP_md5()
  %25 = call i32 @EVP_DigestInit_ex(i32* %23, i32 %24, i32* null)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %20
  %28 = load i32, i32* @LOG_ERR, align 4
  %29 = call i32 @msyslog(i32 %28, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %30 = load i32*, i32** %7, align 8
  %31 = call i32 @EVP_MD_CTX_free(i32* %30)
  %32 = call i32 @exit(i32 1) #4
  unreachable

33:                                               ; preds = %20
  %34 = load i32*, i32** %7, align 8
  %35 = load i32*, i32** %3, align 8
  %36 = call i64 @PSOCK_ADDR6(i32* %35)
  %37 = inttoptr i64 %36 to i32*
  %38 = call i32 @EVP_DigestUpdate(i32* %34, i32* %37, i32 4)
  %39 = load i32*, i32** %7, align 8
  %40 = call i32 @EVP_DigestFinal(i32* %39, i32* %13, i32* %8)
  %41 = load i32*, i32** %7, align 8
  %42 = call i32 @EVP_MD_CTX_free(i32* %41)
  %43 = call i32 @memcpy(i32* %6, i32* %13, i32 4)
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %45

45:                                               ; preds = %33, %17
  %46 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %46)
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @IS_IPV4(i32*) #2

declare dso_local i32 @NSRCADR(i32*) #2

declare dso_local i32 @INIT_SSL(...) #2

declare dso_local i32* @EVP_MD_CTX_new(...) #2

declare dso_local i32 @EVP_DigestInit_ex(i32*, i32, i32*) #2

declare dso_local i32 @EVP_md5(...) #2

declare dso_local i32 @msyslog(i32, i8*) #2

declare dso_local i32 @EVP_MD_CTX_free(i32*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @EVP_DigestUpdate(i32*, i32*, i32) #2

declare dso_local i64 @PSOCK_ADDR6(i32*) #2

declare dso_local i32 @EVP_DigestFinal(i32*, i32*, i32*) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
