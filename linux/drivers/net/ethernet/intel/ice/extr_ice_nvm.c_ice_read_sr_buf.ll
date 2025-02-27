; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_nvm.c_ice_read_sr_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_nvm.c_ice_read_sr_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { i32 }

@ICE_RES_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ice_read_sr_buf(%struct.ice_hw* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.ice_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.ice_hw* %0, %struct.ice_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %11 = load i32, i32* @ICE_RES_READ, align 4
  %12 = call i32 @ice_acquire_nvm(%struct.ice_hw* %10, i32 %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %4
  %16 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i32*, i32** %7, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = call i32 @ice_read_sr_buf_aq(%struct.ice_hw* %16, i32 %17, i32* %18, i32* %19)
  store i32 %20, i32* %9, align 4
  %21 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %22 = call i32 @ice_release_nvm(%struct.ice_hw* %21)
  br label %23

23:                                               ; preds = %15, %4
  %24 = load i32, i32* %9, align 4
  ret i32 %24
}

declare dso_local i32 @ice_acquire_nvm(%struct.ice_hw*, i32) #1

declare dso_local i32 @ice_read_sr_buf_aq(%struct.ice_hw*, i32, i32*, i32*) #1

declare dso_local i32 @ice_release_nvm(%struct.ice_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
