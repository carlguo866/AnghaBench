; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_btmrvl_sdio.c_btmrvl_sdio_init_module.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_btmrvl_sdio.c_btmrvl_sdio_init_module.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bt_mrvl_sdio = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"SDIO Driver Registration Failed\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@user_rmmod = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @btmrvl_sdio_init_module to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btmrvl_sdio_init_module() #0 {
  %1 = alloca i32, align 4
  %2 = call i64 @sdio_register_driver(i32* @bt_mrvl_sdio)
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %0
  %5 = call i32 @BT_ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* @ENODEV, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %1, align 4
  br label %9

8:                                                ; preds = %0
  store i64 0, i64* @user_rmmod, align 8
  store i32 0, i32* %1, align 4
  br label %9

9:                                                ; preds = %8, %4
  %10 = load i32, i32* %1, align 4
  ret i32 %10
}

declare dso_local i64 @sdio_register_driver(i32*) #1

declare dso_local i32 @BT_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
