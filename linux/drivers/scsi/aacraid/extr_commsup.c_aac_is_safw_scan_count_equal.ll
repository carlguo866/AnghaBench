; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_commsup.c_aac_is_safw_scan_count_equal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_commsup.c_aac_is_safw_scan_count_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_dev = type { i64, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aac_dev*, i32, i32)* @aac_is_safw_scan_count_equal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aac_is_safw_scan_count_equal(%struct.aac_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.aac_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.aac_dev* %0, %struct.aac_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.aac_dev*, %struct.aac_dev** %4, align 8
  %8 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %9, i64 %11
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.aac_dev*, %struct.aac_dev** %4, align 8
  %20 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %18, %21
  %23 = zext i1 %22 to i32
  ret i32 %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
