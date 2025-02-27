; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/cxlflash/extr_common.h_get_hwq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/cxlflash/extr_common.h_get_hwq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hwq = type { i32 }
%struct.afu = type { %struct.hwq* }

@CXLFLASH_MAX_HWQS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hwq* (%struct.afu*, i64)* @get_hwq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hwq* @get_hwq(%struct.afu* %0, i64 %1) #0 {
  %3 = alloca %struct.afu*, align 8
  %4 = alloca i64, align 8
  store %struct.afu* %0, %struct.afu** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @CXLFLASH_MAX_HWQS, align 8
  %7 = icmp uge i64 %5, %6
  %8 = zext i1 %7 to i32
  %9 = call i32 @WARN_ON(i32 %8)
  %10 = load %struct.afu*, %struct.afu** %3, align 8
  %11 = getelementptr inbounds %struct.afu, %struct.afu* %10, i32 0, i32 0
  %12 = load %struct.hwq*, %struct.hwq** %11, align 8
  %13 = load i64, i64* %4, align 8
  %14 = getelementptr inbounds %struct.hwq, %struct.hwq* %12, i64 %13
  ret %struct.hwq* %14
}

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
