; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-scsi.c_nvme_trans_get_blk_desc_len.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-scsi.c_nvme_trans_get_blk_desc_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MODE_SENSE_BLK_DESC_ENABLED = common dso_local global i64 0, align 8
@MODE_SENSE_BLK_DESC_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64)* @nvme_trans_get_blk_desc_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_trans_get_blk_desc_len(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* @MODE_SENSE_BLK_DESC_ENABLED, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = load i64, i64* %5, align 8
  %11 = add nsw i64 %10, 1
  %12 = mul nsw i64 8, %11
  %13 = load i32, i32* @MODE_SENSE_BLK_DESC_COUNT, align 4
  %14 = sext i32 %13 to i64
  %15 = mul nsw i64 %12, %14
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %3, align 4
  br label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %17, %9
  %19 = load i32, i32* %3, align 4
  ret i32 %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
