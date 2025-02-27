; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_bcm2835-mailbox.c_bcm2835_startup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_bcm2835-mailbox.c_bcm2835_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbox_chan = type { i32 }
%struct.bcm2835_mbox = type { i64 }

@ARM_MC_IHAVEDATAIRQEN = common dso_local global i32 0, align 4
@MAIL0_CNF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mbox_chan*)* @bcm2835_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm2835_startup(%struct.mbox_chan* %0) #0 {
  %2 = alloca %struct.mbox_chan*, align 8
  %3 = alloca %struct.bcm2835_mbox*, align 8
  store %struct.mbox_chan* %0, %struct.mbox_chan** %2, align 8
  %4 = load %struct.mbox_chan*, %struct.mbox_chan** %2, align 8
  %5 = call %struct.bcm2835_mbox* @bcm2835_link_mbox(%struct.mbox_chan* %4)
  store %struct.bcm2835_mbox* %5, %struct.bcm2835_mbox** %3, align 8
  %6 = load i32, i32* @ARM_MC_IHAVEDATAIRQEN, align 4
  %7 = load %struct.bcm2835_mbox*, %struct.bcm2835_mbox** %3, align 8
  %8 = getelementptr inbounds %struct.bcm2835_mbox, %struct.bcm2835_mbox* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @MAIL0_CNF, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @writel(i32 %6, i64 %11)
  ret i32 0
}

declare dso_local %struct.bcm2835_mbox* @bcm2835_link_mbox(%struct.mbox_chan*) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
