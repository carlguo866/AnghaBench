; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_pio_write_4.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_pio_write_4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { i32 }
%struct.bwn_pio_txqueue = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwn_mac*, %struct.bwn_pio_txqueue*, i64, i32)* @bwn_pio_write_4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_pio_write_4(%struct.bwn_mac* %0, %struct.bwn_pio_txqueue* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.bwn_mac*, align 8
  %6 = alloca %struct.bwn_pio_txqueue*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.bwn_mac* %0, %struct.bwn_mac** %5, align 8
  store %struct.bwn_pio_txqueue* %1, %struct.bwn_pio_txqueue** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.bwn_mac*, %struct.bwn_mac** %5, align 8
  %10 = load %struct.bwn_pio_txqueue*, %struct.bwn_pio_txqueue** %6, align 8
  %11 = getelementptr inbounds %struct.bwn_pio_txqueue, %struct.bwn_pio_txqueue* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* %7, align 8
  %14 = add nsw i64 %12, %13
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @BWN_WRITE_4(%struct.bwn_mac* %9, i64 %14, i32 %15)
  ret void
}

declare dso_local i32 @BWN_WRITE_4(%struct.bwn_mac*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
