; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-video.c_res_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-video.c_res_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx_fh = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx231xx_fh*)* @res_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @res_check(%struct.cx231xx_fh* %0) #0 {
  %2 = alloca %struct.cx231xx_fh*, align 8
  store %struct.cx231xx_fh* %0, %struct.cx231xx_fh** %2, align 8
  %3 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %2, align 8
  %4 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  ret i32 %5
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
