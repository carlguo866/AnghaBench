; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_hda.c_hda_enable_hd_dacs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_hda.c_hda_enable_hd_dacs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sti_hda = type { i64 }

@DAC_CFG_HD_HZUVW_OFF_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sti_hda*, i32)* @hda_enable_hd_dacs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hda_enable_hd_dacs(%struct.sti_hda* %0, i32 %1) #0 {
  %3 = alloca %struct.sti_hda*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sti_hda* %0, %struct.sti_hda** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.sti_hda*, %struct.sti_hda** %3, align 8
  %7 = getelementptr inbounds %struct.sti_hda, %struct.sti_hda* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %32

10:                                               ; preds = %2
  %11 = load %struct.sti_hda*, %struct.sti_hda** %3, align 8
  %12 = getelementptr inbounds %struct.sti_hda, %struct.sti_hda* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @readl(i64 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %10
  %18 = load i32, i32* @DAC_CFG_HD_HZUVW_OFF_MASK, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %5, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %5, align 4
  br label %26

22:                                               ; preds = %10
  %23 = load i32, i32* @DAC_CFG_HD_HZUVW_OFF_MASK, align 4
  %24 = load i32, i32* %5, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %22, %17
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.sti_hda*, %struct.sti_hda** %3, align 8
  %29 = getelementptr inbounds %struct.sti_hda, %struct.sti_hda* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @writel(i32 %27, i64 %30)
  br label %32

32:                                               ; preds = %26, %2
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
