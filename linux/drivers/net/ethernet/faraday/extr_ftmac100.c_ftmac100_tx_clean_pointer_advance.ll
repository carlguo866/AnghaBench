; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/faraday/extr_ftmac100.c_ftmac100_tx_clean_pointer_advance.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/faraday/extr_ftmac100.c_ftmac100_tx_clean_pointer_advance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ftmac100 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ftmac100*)* @ftmac100_tx_clean_pointer_advance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ftmac100_tx_clean_pointer_advance(%struct.ftmac100* %0) #0 {
  %2 = alloca %struct.ftmac100*, align 8
  store %struct.ftmac100* %0, %struct.ftmac100** %2, align 8
  %3 = load %struct.ftmac100*, %struct.ftmac100** %2, align 8
  %4 = getelementptr inbounds %struct.ftmac100, %struct.ftmac100* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @ftmac100_next_tx_pointer(i32 %5)
  %7 = load %struct.ftmac100*, %struct.ftmac100** %2, align 8
  %8 = getelementptr inbounds %struct.ftmac100, %struct.ftmac100* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 4
  ret void
}

declare dso_local i32 @ftmac100_next_tx_pointer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
