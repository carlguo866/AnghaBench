; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_macsec.c_macsec_set_shortlen.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_macsec.c_macsec_set_shortlen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macsec_eth_header = type { i64 }

@MIN_NON_SHORT_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.macsec_eth_header*, i64)* @macsec_set_shortlen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @macsec_set_shortlen(%struct.macsec_eth_header* %0, i64 %1) #0 {
  %3 = alloca %struct.macsec_eth_header*, align 8
  %4 = alloca i64, align 8
  store %struct.macsec_eth_header* %0, %struct.macsec_eth_header** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @MIN_NON_SHORT_LEN, align 8
  %7 = icmp ult i64 %5, %6
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load i64, i64* %4, align 8
  %10 = load %struct.macsec_eth_header*, %struct.macsec_eth_header** %3, align 8
  %11 = getelementptr inbounds %struct.macsec_eth_header, %struct.macsec_eth_header* %10, i32 0, i32 0
  store i64 %9, i64* %11, align 8
  br label %12

12:                                               ; preds = %8, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
