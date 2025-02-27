; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_kexc25519.c_kexc25519_shared_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_kexc25519.c_kexc25519_shared_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshbuf = type { i32 }

@CURVE25519_SIZE = common dso_local global i32 0, align 4
@SSH_ERR_KEY_INVALID_EC_VALUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kexc25519_shared_key(i32* %0, i32* %1, %struct.sshbuf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.sshbuf*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.sshbuf* %2, %struct.sshbuf** %7, align 8
  %12 = load i32, i32* @CURVE25519_SIZE, align 4
  %13 = zext i32 %12 to i64
  %14 = load i32, i32* @CURVE25519_SIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = load i32, i32* @CURVE25519_SIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %8, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %9, align 8
  %20 = load i32, i32* @CURVE25519_SIZE, align 4
  %21 = call i32 @explicit_bzero(i32* %19, i32 %20)
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* @CURVE25519_SIZE, align 4
  %24 = call i64 @timingsafe_bcmp(i32* %22, i32* %19, i32 %23)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i32, i32* @SSH_ERR_KEY_INVALID_EC_VALUE, align 4
  store i32 %27, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %40

28:                                               ; preds = %3
  %29 = load i32*, i32** %5, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = call i32 @crypto_scalarmult_curve25519(i32* %19, i32* %29, i32* %30)
  %32 = load %struct.sshbuf*, %struct.sshbuf** %7, align 8
  %33 = call i32 @sshbuf_reset(%struct.sshbuf* %32)
  %34 = load %struct.sshbuf*, %struct.sshbuf** %7, align 8
  %35 = load i32, i32* @CURVE25519_SIZE, align 4
  %36 = call i32 @sshbuf_put_bignum2_bytes(%struct.sshbuf* %34, i32* %19, i32 %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* @CURVE25519_SIZE, align 4
  %38 = call i32 @explicit_bzero(i32* %19, i32 %37)
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %40

40:                                               ; preds = %28, %26
  %41 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %41)
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @explicit_bzero(i32*, i32) #2

declare dso_local i64 @timingsafe_bcmp(i32*, i32*, i32) #2

declare dso_local i32 @crypto_scalarmult_curve25519(i32*, i32*, i32*) #2

declare dso_local i32 @sshbuf_reset(%struct.sshbuf*) #2

declare dso_local i32 @sshbuf_put_bignum2_bytes(%struct.sshbuf*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
