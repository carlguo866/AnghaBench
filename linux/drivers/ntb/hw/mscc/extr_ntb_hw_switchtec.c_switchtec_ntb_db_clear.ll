; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/hw/mscc/extr_ntb_hw_switchtec.c_switchtec_ntb_db_clear.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/hw/mscc/extr_ntb_hw_switchtec.c_switchtec_ntb_db_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_dev = type { i32 }
%struct.switchtec_ntb = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ntb_dev*, i32)* @switchtec_ntb_db_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @switchtec_ntb_db_clear(%struct.ntb_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.ntb_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.switchtec_ntb*, align 8
  store %struct.ntb_dev* %0, %struct.ntb_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ntb_dev*, %struct.ntb_dev** %3, align 8
  %7 = call %struct.switchtec_ntb* @ntb_sndev(%struct.ntb_dev* %6)
  store %struct.switchtec_ntb* %7, %struct.switchtec_ntb** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %5, align 8
  %10 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = shl i32 %8, %11
  %13 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %5, align 8
  %14 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i32 @iowrite64(i32 %12, i32* %16)
  ret i32 0
}

declare dso_local %struct.switchtec_ntb* @ntb_sndev(%struct.ntb_dev*) #1

declare dso_local i32 @iowrite64(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
