; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/arcnet/extr_com20020_cs.c_com20020_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/arcnet/extr_com20020_cs.c_com20020_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"com20020_release\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcmcia_device*)* @com20020_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @com20020_release(%struct.pcmcia_device* %0) #0 {
  %2 = alloca %struct.pcmcia_device*, align 8
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %2, align 8
  %3 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %4 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %3, i32 0, i32 0
  %5 = call i32 @dev_dbg(i32* %4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %7 = call i32 @pcmcia_disable_device(%struct.pcmcia_device* %6)
  ret void
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @pcmcia_disable_device(%struct.pcmcia_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
