; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_ms_funcs.c_nt_password_hash_encrypted_with_block.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_ms_funcs.c_nt_password_hash_encrypted_with_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nt_password_hash_encrypted_with_block(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = load i32*, i32** %7, align 8
  %11 = call i64 @des_encrypt(i32* %8, i32* %9, i32* %10)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %3
  %14 = load i32*, i32** %5, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 8
  %16 = load i32*, i32** %6, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 7
  %18 = load i32*, i32** %7, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 8
  %20 = call i64 @des_encrypt(i32* %15, i32* %17, i32* %19)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %13, %3
  store i32 -1, i32* %4, align 4
  br label %24

23:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %23, %22
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

declare dso_local i64 @des_encrypt(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
