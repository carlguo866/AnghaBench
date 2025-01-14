; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_envy24ht.c_envy24ht_gpiord.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_envy24ht.c_envy24ht_gpiord.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@ENVY24HT_CCS_GPIO_LDATA = common dso_local global i32 0, align 4
@ENVY24HT_CCS_GPIO_HDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sc_info*)* @envy24ht_gpiord to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @envy24ht_gpiord(%struct.sc_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sc_info*, align 8
  store %struct.sc_info* %0, %struct.sc_info** %3, align 8
  %4 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %5 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp eq i32 %8, 5435
  br i1 %9, label %10, label %21

10:                                               ; preds = %1
  %11 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %12 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 4432
  br i1 %16, label %17, label %21

17:                                               ; preds = %10
  %18 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %19 = load i32, i32* @ENVY24HT_CCS_GPIO_LDATA, align 4
  %20 = call i32 @envy24ht_rdcs(%struct.sc_info* %18, i32 %19, i32 2)
  store i32 %20, i32* %2, align 4
  br label %30

21:                                               ; preds = %10, %1
  %22 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %23 = load i32, i32* @ENVY24HT_CCS_GPIO_HDATA, align 4
  %24 = call i32 @envy24ht_rdcs(%struct.sc_info* %22, i32 %23, i32 1)
  %25 = shl i32 %24, 16
  %26 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %27 = load i32, i32* @ENVY24HT_CCS_GPIO_LDATA, align 4
  %28 = call i32 @envy24ht_rdcs(%struct.sc_info* %26, i32 %27, i32 2)
  %29 = or i32 %25, %28
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %21, %17
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @envy24ht_rdcs(%struct.sc_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
