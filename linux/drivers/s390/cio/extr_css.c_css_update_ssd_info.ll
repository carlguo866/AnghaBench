; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_css.c_css_update_ssd_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_css.c_css_update_ssd_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.subchannel = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @css_update_ssd_info(%struct.subchannel* %0) #0 {
  %2 = alloca %struct.subchannel*, align 8
  %3 = alloca i32, align 4
  store %struct.subchannel* %0, %struct.subchannel** %2, align 8
  %4 = load %struct.subchannel*, %struct.subchannel** %2, align 8
  %5 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.subchannel*, %struct.subchannel** %2, align 8
  %8 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %7, i32 0, i32 0
  %9 = call i32 @chsc_get_ssd_info(i32 %6, i32* %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.subchannel*, %struct.subchannel** %2, align 8
  %14 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %13, i32 0, i32 0
  %15 = load %struct.subchannel*, %struct.subchannel** %2, align 8
  %16 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = call i32 @ssd_from_pmcw(i32* %14, i32* %17)
  br label %19

19:                                               ; preds = %12, %1
  %20 = load %struct.subchannel*, %struct.subchannel** %2, align 8
  %21 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %20, i32 0, i32 0
  %22 = call i32 @ssd_register_chpids(i32* %21)
  ret void
}

declare dso_local i32 @chsc_get_ssd_info(i32, i32*) #1

declare dso_local i32 @ssd_from_pmcw(i32*, i32*) #1

declare dso_local i32 @ssd_register_chpids(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
