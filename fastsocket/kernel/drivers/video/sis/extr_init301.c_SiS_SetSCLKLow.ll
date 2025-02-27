; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/sis/extr_init301.c_SiS_SetSCLKLow.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/sis/extr_init301.c_SiS_SetSCLKLow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i32, i32, i32 }

@SiS_I2CDELAYSHORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.SiS_Private*)* @SiS_SetSCLKLow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @SiS_SetSCLKLow(%struct.SiS_Private* %0) #0 {
  %2 = alloca %struct.SiS_Private*, align 8
  store %struct.SiS_Private* %0, %struct.SiS_Private** %2, align 8
  %3 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %4 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %7 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %10 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @SiS_SetRegANDOR(i32 %5, i32 %8, i32 %11, i32 0)
  %13 = load %struct.SiS_Private*, %struct.SiS_Private** %2, align 8
  %14 = load i32, i32* @SiS_I2CDELAYSHORT, align 4
  %15 = call i32 @SiS_DDC2Delay(%struct.SiS_Private* %13, i32 %14)
  ret i16 0
}

declare dso_local i32 @SiS_SetRegANDOR(i32, i32, i32, i32) #1

declare dso_local i32 @SiS_DDC2Delay(%struct.SiS_Private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
