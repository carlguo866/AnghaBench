; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btmrvl_sdio.c_btmrvl_sdio_disable_host_int.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btmrvl_sdio.c_btmrvl_sdio_disable_host_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btmrvl_sdio_card = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@HIM_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btmrvl_sdio_card*)* @btmrvl_sdio_disable_host_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btmrvl_sdio_disable_host_int(%struct.btmrvl_sdio_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.btmrvl_sdio_card*, align 8
  %4 = alloca i32, align 4
  store %struct.btmrvl_sdio_card* %0, %struct.btmrvl_sdio_card** %3, align 8
  %5 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %3, align 8
  %6 = icmp ne %struct.btmrvl_sdio_card* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %3, align 8
  %9 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %7, %1
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %28

15:                                               ; preds = %7
  %16 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %3, align 8
  %17 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @sdio_claim_host(i32 %18)
  %20 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %3, align 8
  %21 = load i32, i32* @HIM_DISABLE, align 4
  %22 = call i32 @btmrvl_sdio_disable_host_int_mask(%struct.btmrvl_sdio_card* %20, i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %3, align 8
  %24 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @sdio_release_host(i32 %25)
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %15, %12
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @sdio_claim_host(i32) #1

declare dso_local i32 @btmrvl_sdio_disable_host_int_mask(%struct.btmrvl_sdio_card*, i32) #1

declare dso_local i32 @sdio_release_host(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
