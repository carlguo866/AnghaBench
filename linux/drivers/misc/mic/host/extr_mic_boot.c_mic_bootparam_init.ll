; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/host/extr_mic_boot.c_mic_bootparam_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/host/extr_mic_boot.c_mic_bootparam_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mic_device = type { i64, %struct.mic_bootparam* }
%struct.mic_bootparam = type { i32, i32, i32, i32, i32, i64, i32 }

@MIC_MAGIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mic_bootparam_init(%struct.mic_device* %0) #0 {
  %2 = alloca %struct.mic_device*, align 8
  %3 = alloca %struct.mic_bootparam*, align 8
  store %struct.mic_device* %0, %struct.mic_device** %2, align 8
  %4 = load %struct.mic_device*, %struct.mic_device** %2, align 8
  %5 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %4, i32 0, i32 1
  %6 = load %struct.mic_bootparam*, %struct.mic_bootparam** %5, align 8
  store %struct.mic_bootparam* %6, %struct.mic_bootparam** %3, align 8
  %7 = load i32, i32* @MIC_MAGIC, align 4
  %8 = call i32 @cpu_to_le32(i32 %7)
  %9 = load %struct.mic_bootparam*, %struct.mic_bootparam** %3, align 8
  %10 = getelementptr inbounds %struct.mic_bootparam, %struct.mic_bootparam* %9, i32 0, i32 6
  store i32 %8, i32* %10, align 8
  %11 = load %struct.mic_bootparam*, %struct.mic_bootparam** %3, align 8
  %12 = getelementptr inbounds %struct.mic_bootparam, %struct.mic_bootparam* %11, i32 0, i32 0
  store i32 -1, i32* %12, align 8
  %13 = load %struct.mic_device*, %struct.mic_device** %2, align 8
  %14 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %15, 1
  %17 = load %struct.mic_bootparam*, %struct.mic_bootparam** %3, align 8
  %18 = getelementptr inbounds %struct.mic_bootparam, %struct.mic_bootparam* %17, i32 0, i32 5
  store i64 %16, i64* %18, align 8
  %19 = load %struct.mic_bootparam*, %struct.mic_bootparam** %3, align 8
  %20 = getelementptr inbounds %struct.mic_bootparam, %struct.mic_bootparam* %19, i32 0, i32 1
  store i32 0, i32* %20, align 4
  %21 = load %struct.mic_bootparam*, %struct.mic_bootparam** %3, align 8
  %22 = getelementptr inbounds %struct.mic_bootparam, %struct.mic_bootparam* %21, i32 0, i32 2
  store i32 0, i32* %22, align 8
  %23 = load %struct.mic_bootparam*, %struct.mic_bootparam** %3, align 8
  %24 = getelementptr inbounds %struct.mic_bootparam, %struct.mic_bootparam* %23, i32 0, i32 3
  store i32 -1, i32* %24, align 4
  %25 = load %struct.mic_bootparam*, %struct.mic_bootparam** %3, align 8
  %26 = getelementptr inbounds %struct.mic_bootparam, %struct.mic_bootparam* %25, i32 0, i32 4
  store i32 -1, i32* %26, align 8
  ret void
}

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
