; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-v4l2.c_erase_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-v4l2.c_erase_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.solo_dev = type { i32, i64 }

@SOLO_VO_DISP_ERASE = common dso_local global i32 0, align 4
@SOLO_VO_DISP_ERASE_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.solo_dev*)* @erase_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @erase_on(%struct.solo_dev* %0) #0 {
  %2 = alloca %struct.solo_dev*, align 8
  store %struct.solo_dev* %0, %struct.solo_dev** %2, align 8
  %3 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %4 = load i32, i32* @SOLO_VO_DISP_ERASE, align 4
  %5 = load i32, i32* @SOLO_VO_DISP_ERASE_ON, align 4
  %6 = call i32 @solo_reg_write(%struct.solo_dev* %3, i32 %4, i32 %5)
  %7 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %8 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %7, i32 0, i32 0
  store i32 1, i32* %8, align 8
  %9 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %10 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %9, i32 0, i32 1
  store i64 0, i64* %10, align 8
  ret void
}

declare dso_local i32 @solo_reg_write(%struct.solo_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
