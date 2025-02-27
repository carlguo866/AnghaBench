; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/nvidia/extr_nv_i2c.c_nvidia_gpio_getsda.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/nvidia/extr_nv_i2c.c_nvidia_gpio_getsda.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvidia_i2c_chan = type { i32, %struct.nvidia_par* }
%struct.nvidia_par = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @nvidia_gpio_getsda to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvidia_gpio_getsda(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.nvidia_i2c_chan*, align 8
  %4 = alloca %struct.nvidia_par*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.nvidia_i2c_chan*
  store %struct.nvidia_i2c_chan* %7, %struct.nvidia_i2c_chan** %3, align 8
  %8 = load %struct.nvidia_i2c_chan*, %struct.nvidia_i2c_chan** %3, align 8
  %9 = getelementptr inbounds %struct.nvidia_i2c_chan, %struct.nvidia_i2c_chan* %8, i32 0, i32 1
  %10 = load %struct.nvidia_par*, %struct.nvidia_par** %9, align 8
  store %struct.nvidia_par* %10, %struct.nvidia_par** %4, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.nvidia_par*, %struct.nvidia_par** %4, align 8
  %12 = load %struct.nvidia_i2c_chan*, %struct.nvidia_i2c_chan** %3, align 8
  %13 = getelementptr inbounds %struct.nvidia_i2c_chan, %struct.nvidia_i2c_chan* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @NVReadCrtc(%struct.nvidia_par* %11, i32 %14)
  %16 = and i32 %15, 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 1, i32* %5, align 4
  br label %19

19:                                               ; preds = %18, %1
  %20 = load i32, i32* %5, align 4
  ret i32 %20
}

declare dso_local i32 @NVReadCrtc(%struct.nvidia_par*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
