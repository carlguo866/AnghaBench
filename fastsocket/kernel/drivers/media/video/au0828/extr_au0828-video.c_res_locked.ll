; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/au0828/extr_au0828-video.c_res_locked.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/au0828/extr_au0828-video.c_res_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au0828_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.au0828_dev*, i32)* @res_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @res_locked(%struct.au0828_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.au0828_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.au0828_dev* %0, %struct.au0828_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.au0828_dev*, %struct.au0828_dev** %3, align 8
  %6 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = and i32 %7, %8
  ret i32 %9
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
