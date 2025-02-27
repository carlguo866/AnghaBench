; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cimax2.c_netup_ci_slot_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cimax2.c_netup_ci_slot_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_ca_en50221 = type { %struct.netup_ci_state* }
%struct.netup_ci_state = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netup_ci_slot_reset(%struct.dvb_ca_en50221* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_ca_en50221*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.netup_ci_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dvb_ca_en50221* %0, %struct.dvb_ca_en50221** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.dvb_ca_en50221*, %struct.dvb_ca_en50221** %4, align 8
  %10 = getelementptr inbounds %struct.dvb_ca_en50221, %struct.dvb_ca_en50221* %9, i32 0, i32 0
  %11 = load %struct.netup_ci_state*, %struct.netup_ci_state** %10, align 8
  store %struct.netup_ci_state* %11, %struct.netup_ci_state** %6, align 8
  store i32 128, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 0, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %43

17:                                               ; preds = %2
  %18 = call i32 @udelay(i32 500)
  %19 = load %struct.netup_ci_state*, %struct.netup_ci_state** %6, align 8
  %20 = getelementptr inbounds %struct.netup_ci_state, %struct.netup_ci_state* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.netup_ci_state*, %struct.netup_ci_state** %6, align 8
  %23 = getelementptr inbounds %struct.netup_ci_state, %struct.netup_ci_state* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @netup_write_i2c(i32 %21, i32 %24, i32 0, i32* %7, i32 1)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %17
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %3, align 4
  br label %43

30:                                               ; preds = %17
  %31 = call i32 @udelay(i32 500)
  store i32 0, i32* %7, align 4
  %32 = load %struct.netup_ci_state*, %struct.netup_ci_state** %6, align 8
  %33 = getelementptr inbounds %struct.netup_ci_state, %struct.netup_ci_state* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.netup_ci_state*, %struct.netup_ci_state** %6, align 8
  %36 = getelementptr inbounds %struct.netup_ci_state, %struct.netup_ci_state* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @netup_write_i2c(i32 %34, i32 %37, i32 0, i32* %7, i32 1)
  store i32 %38, i32* %8, align 4
  %39 = call i32 @msleep(i32 1000)
  %40 = load %struct.netup_ci_state*, %struct.netup_ci_state** %6, align 8
  %41 = getelementptr inbounds %struct.netup_ci_state, %struct.netup_ci_state* %40, i32 0, i32 0
  %42 = call i32 @dvb_ca_en50221_camready_irq(i32* %41, i32 0)
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %30, %28, %14
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @netup_write_i2c(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dvb_ca_en50221_camready_irq(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
