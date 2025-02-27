; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_cipher-chachapoly.c_chachapoly_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_cipher-chachapoly.c_chachapoly_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chachapoly_ctx = type { i32, i32 }

@SSH_ERR_INVALID_ARGUMENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @chachapoly_init(%struct.chachapoly_ctx* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.chachapoly_ctx*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.chachapoly_ctx* %0, %struct.chachapoly_ctx** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 64
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = load i32, i32* @SSH_ERR_INVALID_ARGUMENT, align 4
  store i32 %11, i32* %4, align 4
  br label %22

12:                                               ; preds = %3
  %13 = load %struct.chachapoly_ctx*, %struct.chachapoly_ctx** %5, align 8
  %14 = getelementptr inbounds %struct.chachapoly_ctx, %struct.chachapoly_ctx* %13, i32 0, i32 1
  %15 = load i32*, i32** %6, align 8
  %16 = call i32 @chacha_keysetup(i32* %14, i32* %15, i32 256)
  %17 = load %struct.chachapoly_ctx*, %struct.chachapoly_ctx** %5, align 8
  %18 = getelementptr inbounds %struct.chachapoly_ctx, %struct.chachapoly_ctx* %17, i32 0, i32 0
  %19 = load i32*, i32** %6, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 32
  %21 = call i32 @chacha_keysetup(i32* %18, i32* %20, i32 256)
  store i32 0, i32* %4, align 4
  br label %22

22:                                               ; preds = %12, %10
  %23 = load i32, i32* %4, align 4
  ret i32 %23
}

declare dso_local i32 @chacha_keysetup(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
