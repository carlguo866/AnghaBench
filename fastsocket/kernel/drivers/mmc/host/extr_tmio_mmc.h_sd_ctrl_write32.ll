; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_tmio_mmc.h_sd_ctrl_write32.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_tmio_mmc.h_sd_ctrl_write32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmio_mmc_host = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tmio_mmc_host*, i32, i32)* @sd_ctrl_write32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sd_ctrl_write32(%struct.tmio_mmc_host* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.tmio_mmc_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tmio_mmc_host* %0, %struct.tmio_mmc_host** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %4, align 8
  %9 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %4, align 8
  %13 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = shl i32 %11, %14
  %16 = sext i32 %15 to i64
  %17 = add nsw i64 %10, %16
  %18 = call i32 @writew(i32 %7, i64 %17)
  %19 = load i32, i32* %6, align 4
  %20 = ashr i32 %19, 16
  %21 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %4, align 8
  %22 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %24, 2
  %26 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %4, align 8
  %27 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = shl i32 %25, %28
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %23, %30
  %32 = call i32 @writew(i32 %20, i64 %31)
  ret void
}

declare dso_local i32 @writew(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
