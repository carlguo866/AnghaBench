; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_wd33c93.c_read_1_byte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_wd33c93.c_read_1_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WD_CONTROL = common dso_local global i32 0, align 4
@CTRL_IDI = common dso_local global i32 0, align 4
@CTRL_EDI = common dso_local global i32 0, align 4
@CTRL_POLLED = common dso_local global i32 0, align 4
@WD_CMD_TRANS_INFO = common dso_local global i32 0, align 4
@ASR_DBR = common dso_local global i32 0, align 4
@WD_DATA = common dso_local global i32 0, align 4
@ASR_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @read_1_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_1_byte(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @WD_CONTROL, align 4
  %7 = load i32, i32* @CTRL_IDI, align 4
  %8 = load i32, i32* @CTRL_EDI, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @CTRL_POLLED, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @write_wd33c93(i32 %5, i32 %6, i32 %11)
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* @WD_CMD_TRANS_INFO, align 4
  %15 = or i32 %14, 128
  %16 = call i32 @write_wd33c93_cmd(i32 %13, i32 %15)
  br label %17

17:                                               ; preds = %29, %1
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @read_aux_stat(i32 %18)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @ASR_DBR, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %17
  %25 = load i32, i32* %2, align 4
  %26 = load i32, i32* @WD_DATA, align 4
  %27 = call i32 @read_wd33c93(i32 %25, i32 %26)
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %24, %17
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @ASR_INT, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  br i1 %34, label %17, label %35

35:                                               ; preds = %29
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32 @write_wd33c93(i32, i32, i32) #1

declare dso_local i32 @write_wd33c93_cmd(i32, i32) #1

declare dso_local i32 @read_aux_stat(i32) #1

declare dso_local i32 @read_wd33c93(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
