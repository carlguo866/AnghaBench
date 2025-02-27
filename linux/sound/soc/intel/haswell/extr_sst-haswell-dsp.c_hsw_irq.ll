; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/haswell/extr_sst-haswell-dsp.c_hsw_irq.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/haswell/extr_sst-haswell-dsp.c_hsw_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_dsp = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@SST_ISRX = common dso_local global i32 0, align 4
@SST_ISRX_DONE = common dso_local global i32 0, align 4
@SST_IMRX = common dso_local global i32 0, align 4
@SST_IMRX_DONE = common dso_local global i32 0, align 4
@IRQ_WAKE_THREAD = common dso_local global i32 0, align 4
@SST_ISRX_BUSY = common dso_local global i32 0, align 4
@SST_IMRX_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @hsw_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hsw_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sst_dsp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.sst_dsp*
  store %struct.sst_dsp* %9, %struct.sst_dsp** %5, align 8
  %10 = load i32, i32* @IRQ_NONE, align 4
  store i32 %10, i32* %7, align 4
  %11 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %12 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %11, i32 0, i32 0
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %15 = load i32, i32* @SST_ISRX, align 4
  %16 = call i32 @sst_dsp_shim_read_unlocked(%struct.sst_dsp* %14, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @SST_ISRX_DONE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %2
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %24 = load i32, i32* @SST_IMRX, align 4
  %25 = call i32 @sst_dsp_shim_read_unlocked(%struct.sst_dsp* %23, i32 %24)
  %26 = call i32 @trace_sst_irq_done(i32 %22, i32 %25)
  %27 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %28 = load i32, i32* @SST_IMRX, align 4
  %29 = load i32, i32* @SST_IMRX_DONE, align 4
  %30 = load i32, i32* @SST_IMRX_DONE, align 4
  %31 = call i32 @sst_dsp_shim_update_bits_unlocked(%struct.sst_dsp* %27, i32 %28, i32 %29, i32 %30)
  %32 = load i32, i32* @IRQ_WAKE_THREAD, align 4
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %21, %2
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @SST_ISRX_BUSY, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %33
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %41 = load i32, i32* @SST_IMRX, align 4
  %42 = call i32 @sst_dsp_shim_read_unlocked(%struct.sst_dsp* %40, i32 %41)
  %43 = call i32 @trace_sst_irq_busy(i32 %39, i32 %42)
  %44 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %45 = load i32, i32* @SST_IMRX, align 4
  %46 = load i32, i32* @SST_IMRX_BUSY, align 4
  %47 = load i32, i32* @SST_IMRX_BUSY, align 4
  %48 = call i32 @sst_dsp_shim_update_bits_unlocked(%struct.sst_dsp* %44, i32 %45, i32 %46, i32 %47)
  %49 = load i32, i32* @IRQ_WAKE_THREAD, align 4
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %38, %33
  %51 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %52 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %51, i32 0, i32 0
  %53 = call i32 @spin_unlock(i32* %52)
  %54 = load i32, i32* %7, align 4
  ret i32 %54
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @sst_dsp_shim_read_unlocked(%struct.sst_dsp*, i32) #1

declare dso_local i32 @trace_sst_irq_done(i32, i32) #1

declare dso_local i32 @sst_dsp_shim_update_bits_unlocked(%struct.sst_dsp*, i32, i32, i32) #1

declare dso_local i32 @trace_sst_irq_busy(i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
