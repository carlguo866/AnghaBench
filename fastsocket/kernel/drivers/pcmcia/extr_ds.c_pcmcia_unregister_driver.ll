; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_ds.c_pcmcia_unregister_driver.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_ds.c_pcmcia_unregister_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_driver = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"unregistering driver %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pcmcia_unregister_driver(%struct.pcmcia_driver* %0) #0 {
  %2 = alloca %struct.pcmcia_driver*, align 8
  store %struct.pcmcia_driver* %0, %struct.pcmcia_driver** %2, align 8
  %3 = load %struct.pcmcia_driver*, %struct.pcmcia_driver** %2, align 8
  %4 = getelementptr inbounds %struct.pcmcia_driver, %struct.pcmcia_driver* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @ds_dbg(i32 3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = load %struct.pcmcia_driver*, %struct.pcmcia_driver** %2, align 8
  %9 = getelementptr inbounds %struct.pcmcia_driver, %struct.pcmcia_driver* %8, i32 0, i32 0
  %10 = call i32 @driver_unregister(%struct.TYPE_2__* %9)
  %11 = load %struct.pcmcia_driver*, %struct.pcmcia_driver** %2, align 8
  %12 = call i32 @pcmcia_free_dynids(%struct.pcmcia_driver* %11)
  ret void
}

declare dso_local i32 @ds_dbg(i32, i8*, i32) #1

declare dso_local i32 @driver_unregister(%struct.TYPE_2__*) #1

declare dso_local i32 @pcmcia_free_dynids(%struct.pcmcia_driver*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
