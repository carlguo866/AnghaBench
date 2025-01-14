; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_mailbox-altera.c_altera_mbox_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_mailbox-altera.c_altera_mbox_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbox_chan = type { i32 }
%struct.altera_mbox = type { i32, i32, i32, i64, i64 }

@MAILBOX_INTMASK_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mbox_chan*)* @altera_mbox_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @altera_mbox_shutdown(%struct.mbox_chan* %0) #0 {
  %2 = alloca %struct.mbox_chan*, align 8
  %3 = alloca %struct.altera_mbox*, align 8
  store %struct.mbox_chan* %0, %struct.mbox_chan** %2, align 8
  %4 = load %struct.mbox_chan*, %struct.mbox_chan** %2, align 8
  %5 = call %struct.altera_mbox* @mbox_chan_to_altera_mbox(%struct.mbox_chan* %4)
  store %struct.altera_mbox* %5, %struct.altera_mbox** %3, align 8
  %6 = load %struct.altera_mbox*, %struct.altera_mbox** %3, align 8
  %7 = getelementptr inbounds %struct.altera_mbox, %struct.altera_mbox* %6, i32 0, i32 4
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %22

10:                                               ; preds = %1
  %11 = load %struct.altera_mbox*, %struct.altera_mbox** %3, align 8
  %12 = getelementptr inbounds %struct.altera_mbox, %struct.altera_mbox* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @MAILBOX_INTMASK_REG, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @writel_relaxed(i32 -1, i64 %15)
  %17 = load %struct.altera_mbox*, %struct.altera_mbox** %3, align 8
  %18 = getelementptr inbounds %struct.altera_mbox, %struct.altera_mbox* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.mbox_chan*, %struct.mbox_chan** %2, align 8
  %21 = call i32 @free_irq(i32 %19, %struct.mbox_chan* %20)
  br label %32

22:                                               ; preds = %1
  %23 = load %struct.altera_mbox*, %struct.altera_mbox** %3, align 8
  %24 = getelementptr inbounds %struct.altera_mbox, %struct.altera_mbox* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %22
  %28 = load %struct.altera_mbox*, %struct.altera_mbox** %3, align 8
  %29 = getelementptr inbounds %struct.altera_mbox, %struct.altera_mbox* %28, i32 0, i32 0
  %30 = call i32 @del_timer_sync(i32* %29)
  br label %31

31:                                               ; preds = %27, %22
  br label %32

32:                                               ; preds = %31, %10
  ret void
}

declare dso_local %struct.altera_mbox* @mbox_chan_to_altera_mbox(%struct.mbox_chan*) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @free_irq(i32, %struct.mbox_chan*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
