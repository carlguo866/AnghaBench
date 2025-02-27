; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_skcipher.c_free_src_sglist.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_skcipher.c_free_src_sglist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skcipher_request = type { i32 }
%struct.nitrox_kcrypt_request = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.skcipher_request*)* @free_src_sglist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_src_sglist(%struct.skcipher_request* %0) #0 {
  %2 = alloca %struct.skcipher_request*, align 8
  %3 = alloca %struct.nitrox_kcrypt_request*, align 8
  store %struct.skcipher_request* %0, %struct.skcipher_request** %2, align 8
  %4 = load %struct.skcipher_request*, %struct.skcipher_request** %2, align 8
  %5 = call %struct.nitrox_kcrypt_request* @skcipher_request_ctx(%struct.skcipher_request* %4)
  store %struct.nitrox_kcrypt_request* %5, %struct.nitrox_kcrypt_request** %3, align 8
  %6 = load %struct.nitrox_kcrypt_request*, %struct.nitrox_kcrypt_request** %3, align 8
  %7 = getelementptr inbounds %struct.nitrox_kcrypt_request, %struct.nitrox_kcrypt_request* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @kfree(i32 %8)
  ret void
}

declare dso_local %struct.nitrox_kcrypt_request* @skcipher_request_ctx(%struct.skcipher_request*) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
