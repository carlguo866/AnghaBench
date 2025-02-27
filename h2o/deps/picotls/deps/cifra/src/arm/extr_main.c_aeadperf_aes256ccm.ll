; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/arm/extr_main.c_aeadperf_aes256ccm.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/arm/extr_main.c_aeadperf_aes256ccm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@aead_key = common dso_local global i32 0, align 4
@cf_aes = common dso_local global i32 0, align 4
@aead_msg = common dso_local global i32 0, align 4
@bracket = common dso_local global i32 0, align 4
@aead_aad = common dso_local global i32 0, align 4
@aead_nonce = common dso_local global i32 0, align 4
@aead_cipher = common dso_local global i32 0, align 4
@aead_tag = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @aeadperf_aes256ccm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aeadperf_aes256ccm() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @aead_key, align 4
  %3 = call i32 @cf_aes_init(i32* %1, i32 %2, i32 32)
  %4 = load i32, i32* @aead_msg, align 4
  %5 = load i32, i32* @bracket, align 4
  %6 = load i32, i32* @aead_aad, align 4
  %7 = load i32, i32* @aead_nonce, align 4
  %8 = load i32, i32* @aead_cipher, align 4
  %9 = load i32, i32* @aead_tag, align 4
  %10 = call i32 @cf_ccm_encrypt(i32* @cf_aes, i32* %1, i32 %4, i32 %5, i32 4, i32 %6, i32 4, i32 %7, i32 11, i32 %8, i32 %9, i32 16)
  ret void
}

declare dso_local i32 @cf_aes_init(i32*, i32, i32) #1

declare dso_local i32 @cf_ccm_encrypt(i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
