; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_vnic_sdma.c_hfi1_vnic_update_pad.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_vnic_sdma.c_hfi1_vnic_update_pad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OPA_VNIC_ICRC_TAIL_LEN = common dso_local global i8 0, align 1
@HFI1_VNIC_MAX_PAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8)* @hfi1_vnic_update_pad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hfi1_vnic_update_pad(i8* %0, i8 zeroext %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store i8 %1, i8* %4, align 1
  %5 = load i8, i8* %4, align 1
  %6 = zext i8 %5 to i32
  %7 = load i8, i8* @OPA_VNIC_ICRC_TAIL_LEN, align 1
  %8 = zext i8 %7 to i32
  %9 = sub nsw i32 %6, %8
  %10 = trunc i32 %9 to i8
  %11 = load i8*, i8** %3, align 8
  %12 = load i32, i32* @HFI1_VNIC_MAX_PAD, align 4
  %13 = sub nsw i32 %12, 1
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, i8* %11, i64 %14
  store i8 %10, i8* %15, align 1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
