; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_bcm2835.c_bcm2835_busy_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_bcm2835.c_bcm2835_busy_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm2835_host = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm2835_host*)* @bcm2835_busy_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm2835_busy_irq(%struct.bcm2835_host* %0) #0 {
  %2 = alloca %struct.bcm2835_host*, align 8
  store %struct.bcm2835_host* %0, %struct.bcm2835_host** %2, align 8
  %3 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %4 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i64 @WARN_ON(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %13 = call i32 @bcm2835_dumpregs(%struct.bcm2835_host* %12)
  br label %31

14:                                               ; preds = %1
  %15 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %16 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i64 @WARN_ON(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %14
  %24 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %25 = call i32 @bcm2835_dumpregs(%struct.bcm2835_host* %24)
  br label %31

26:                                               ; preds = %14
  %27 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %28 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %27, i32 0, i32 0
  store i32 0, i32* %28, align 4
  %29 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %30 = call i32 @bcm2835_finish_command(%struct.bcm2835_host* %29)
  br label %31

31:                                               ; preds = %26, %23, %11
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @bcm2835_dumpregs(%struct.bcm2835_host*) #1

declare dso_local i32 @bcm2835_finish_command(%struct.bcm2835_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
