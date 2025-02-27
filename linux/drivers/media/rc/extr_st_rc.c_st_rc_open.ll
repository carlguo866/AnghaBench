; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_st_rc.c_st_rc_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_st_rc.c_st_rc_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_dev = type { %struct.st_rc_device* }
%struct.st_rc_device = type { i64 }

@IRB_RX_INTS = common dso_local global i32 0, align 4
@IRB_RX_INT_EN = common dso_local global i64 0, align 8
@IRB_RX_EN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rc_dev*)* @st_rc_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_rc_open(%struct.rc_dev* %0) #0 {
  %2 = alloca %struct.rc_dev*, align 8
  %3 = alloca %struct.st_rc_device*, align 8
  %4 = alloca i64, align 8
  store %struct.rc_dev* %0, %struct.rc_dev** %2, align 8
  %5 = load %struct.rc_dev*, %struct.rc_dev** %2, align 8
  %6 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %5, i32 0, i32 0
  %7 = load %struct.st_rc_device*, %struct.st_rc_device** %6, align 8
  store %struct.st_rc_device* %7, %struct.st_rc_device** %3, align 8
  %8 = load i64, i64* %4, align 8
  %9 = call i32 @local_irq_save(i64 %8)
  %10 = load i32, i32* @IRB_RX_INTS, align 4
  %11 = load %struct.st_rc_device*, %struct.st_rc_device** %3, align 8
  %12 = getelementptr inbounds %struct.st_rc_device, %struct.st_rc_device* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @IRB_RX_INT_EN, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @writel(i32 %10, i64 %15)
  %17 = load %struct.st_rc_device*, %struct.st_rc_device** %3, align 8
  %18 = getelementptr inbounds %struct.st_rc_device, %struct.st_rc_device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @IRB_RX_EN, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @writel(i32 1, i64 %21)
  %23 = load i64, i64* %4, align 8
  %24 = call i32 @local_irq_restore(i64 %23)
  ret i32 0
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
