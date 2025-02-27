; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ath79/files/drivers/mtd/nand/raw/extr_ar934x_nand.c_ar934x_nfc_send_write.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ath79/files/drivers/mtd/nand/raw/extr_ar934x_nand.c_ar934x_nfc_send_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar934x_nfc = type { i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"write, column=%d page=%d len=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"[data] \00", align 1
@NAND_CMD_SEQIN = common dso_local global i32 0, align 4
@AR934X_NFC_CMD_CMD0_S = common dso_local global i32 0, align 4
@AR934X_NFC_CMD_CMD1_S = common dso_local global i32 0, align 4
@AR934X_NFC_CMD_SEQ_12 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ar934x_nfc*, i32, i32, i32, i32)* @ar934x_nfc_send_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar934x_nfc_send_write(%struct.ar934x_nfc* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ar934x_nfc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ar934x_nfc* %0, %struct.ar934x_nfc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %6, align 8
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* %10, align 4
  %16 = call i32 @nfc_dbg(%struct.ar934x_nfc* %12, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14, i32 %15)
  %17 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %6, align 8
  %18 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %10, align 4
  %21 = call i32 @nfc_debug_data(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %19, i32 %20)
  %22 = load i32, i32* @NAND_CMD_SEQIN, align 4
  %23 = load i32, i32* @AR934X_NFC_CMD_CMD0_S, align 4
  %24 = shl i32 %22, %23
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @AR934X_NFC_CMD_CMD1_S, align 4
  %27 = shl i32 %25, %26
  %28 = load i32, i32* %11, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* @AR934X_NFC_CMD_SEQ_12, align 4
  %31 = load i32, i32* %11, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %11, align 4
  %33 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %6, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %6, align 8
  %39 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @ar934x_nfc_do_rw_command(%struct.ar934x_nfc* %33, i32 %34, i32 %35, i32 %36, i32 %37, i32 %40, i32 1)
  ret i32 %41
}

declare dso_local i32 @nfc_dbg(%struct.ar934x_nfc*, i8*, i32, i32, i32) #1

declare dso_local i32 @nfc_debug_data(i8*, i32, i32) #1

declare dso_local i32 @ar934x_nfc_do_rw_command(%struct.ar934x_nfc*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
