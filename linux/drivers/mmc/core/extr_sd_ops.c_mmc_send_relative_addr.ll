; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sd_ops.c_mmc_send_relative_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sd_ops.c_mmc_send_relative_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_command = type { i32, i32*, i64, i32 }

@SD_SEND_RELATIVE_ADDR = common dso_local global i32 0, align 4
@MMC_RSP_R6 = common dso_local global i32 0, align 4
@MMC_CMD_BCR = common dso_local global i32 0, align 4
@MMC_CMD_RETRIES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mmc_send_relative_addr(%struct.mmc_host* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mmc_host*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mmc_command, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = bitcast %struct.mmc_command* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 32, i1 false)
  %9 = load i32, i32* @SD_SEND_RELATIVE_ADDR, align 4
  %10 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %7, i32 0, i32 3
  store i32 %9, i32* %10, align 8
  %11 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %7, i32 0, i32 2
  store i64 0, i64* %11, align 8
  %12 = load i32, i32* @MMC_RSP_R6, align 4
  %13 = load i32, i32* @MMC_CMD_BCR, align 4
  %14 = or i32 %12, %13
  %15 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %7, i32 0, i32 0
  store i32 %14, i32* %15, align 8
  %16 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %17 = load i32, i32* @MMC_CMD_RETRIES, align 4
  %18 = call i32 @mmc_wait_for_cmd(%struct.mmc_host* %16, %struct.mmc_command* %7, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %3, align 4
  br label %30

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %7, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = ashr i32 %27, 16
  %29 = load i32*, i32** %5, align 8
  store i32 %28, i32* %29, align 4
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %23, %21
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mmc_wait_for_cmd(%struct.mmc_host*, %struct.mmc_command*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
