; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rts5227.c_rts522a_init_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rts5227.c_rts522a_init_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_pcr = type { %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@RTS522A_PM_CTRL3 = common dso_local global i32 0, align 4
@SD_OC_INT_EN = common dso_local global i32 0, align 4
@SD_OCP_GLITCH_10M = common dso_local global i32 0, align 4
@RTS522A_OCP_THD_800 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rts522a_init_params(%struct.rtsx_pcr* %0) #0 {
  %2 = alloca %struct.rtsx_pcr*, align 8
  store %struct.rtsx_pcr* %0, %struct.rtsx_pcr** %2, align 8
  %3 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %4 = call i32 @rts5227_init_params(%struct.rtsx_pcr* %3)
  %5 = load i32, i32* @RTS522A_PM_CTRL3, align 4
  %6 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %7 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %6, i32 0, i32 2
  store i32 %5, i32* %7, align 4
  %8 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %9 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store i32 1, i32* %10, align 4
  %11 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %12 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load i32, i32* @SD_OC_INT_EN, align 4
  %18 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %19 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %17
  store i32 %22, i32* %20, align 4
  br label %23

23:                                               ; preds = %16, %1
  %24 = load i32, i32* @SD_OCP_GLITCH_10M, align 4
  %25 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %26 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 4
  %28 = load i32, i32* @RTS522A_OCP_THD_800, align 4
  %29 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %30 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  store i32 %28, i32* %31, align 4
  ret void
}

declare dso_local i32 @rts5227_init_params(%struct.rtsx_pcr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
