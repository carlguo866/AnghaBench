; ModuleID = '/home/carl/AnghaBench/openwrt/package/kernel/lantiq/ltq-deu/src/extr_ifxmips_deu_danube.c_aes_chip_init.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/kernel/lantiq/ltq-deu/src/extr_ifxmips_deu_danube.c_aes_chip_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aes_t = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@AES_START = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aes_chip_init() #0 {
  %1 = alloca %struct.aes_t*, align 8
  %2 = load i64, i64* @AES_START, align 8
  %3 = inttoptr i64 %2 to %struct.aes_t*
  store %struct.aes_t* %3, %struct.aes_t** %1, align 8
  %4 = load %struct.aes_t*, %struct.aes_t** %1, align 8
  %5 = getelementptr inbounds %struct.aes_t, %struct.aes_t* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  store volatile i32 1, i32* %6, align 4
  %7 = load %struct.aes_t*, %struct.aes_t** %1, align 8
  %8 = getelementptr inbounds %struct.aes_t, %struct.aes_t* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  store volatile i32 1, i32* %9, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
