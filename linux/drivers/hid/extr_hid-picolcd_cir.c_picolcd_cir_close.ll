; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-picolcd_cir.c_picolcd_cir_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-picolcd_cir.c_picolcd_cir_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_dev = type { %struct.picolcd_data* }
%struct.picolcd_data = type { i32, i32 }

@PICOLCD_CIR_SHUN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rc_dev*)* @picolcd_cir_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @picolcd_cir_close(%struct.rc_dev* %0) #0 {
  %2 = alloca %struct.rc_dev*, align 8
  %3 = alloca %struct.picolcd_data*, align 8
  %4 = alloca i64, align 8
  store %struct.rc_dev* %0, %struct.rc_dev** %2, align 8
  %5 = load %struct.rc_dev*, %struct.rc_dev** %2, align 8
  %6 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %5, i32 0, i32 0
  %7 = load %struct.picolcd_data*, %struct.picolcd_data** %6, align 8
  store %struct.picolcd_data* %7, %struct.picolcd_data** %3, align 8
  %8 = load %struct.picolcd_data*, %struct.picolcd_data** %3, align 8
  %9 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %8, i32 0, i32 0
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load i32, i32* @PICOLCD_CIR_SHUN, align 4
  %13 = load %struct.picolcd_data*, %struct.picolcd_data** %3, align 8
  %14 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = or i32 %15, %12
  store i32 %16, i32* %14, align 4
  %17 = load %struct.picolcd_data*, %struct.picolcd_data** %3, align 8
  %18 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %17, i32 0, i32 0
  %19 = load i64, i64* %4, align 8
  %20 = call i32 @spin_unlock_irqrestore(i32* %18, i64 %19)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
