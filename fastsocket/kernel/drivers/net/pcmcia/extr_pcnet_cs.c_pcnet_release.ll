; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pcmcia/extr_pcnet_cs.c_pcnet_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pcmcia/extr_pcnet_cs.c_pcnet_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"pcnet_release(0x%p)\0A\00", align 1
@USE_SHMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcmcia_device*)* @pcnet_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcnet_release(%struct.pcmcia_device* %0) #0 {
  %2 = alloca %struct.pcmcia_device*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %2, align 8
  %4 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %5 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.TYPE_3__* @PRIV(i32 %6)
  store %struct.TYPE_3__* %7, %struct.TYPE_3__** %3, align 8
  %8 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %9 = call i32 @DEBUG(i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), %struct.pcmcia_device* %8)
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @USE_SHMEM, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @iounmap(i32 %19)
  br label %21

21:                                               ; preds = %16, %1
  %22 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %23 = call i32 @pcmcia_disable_device(%struct.pcmcia_device* %22)
  ret void
}

declare dso_local %struct.TYPE_3__* @PRIV(i32) #1

declare dso_local i32 @DEBUG(i32, i8*, %struct.pcmcia_device*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @pcmcia_disable_device(%struct.pcmcia_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
