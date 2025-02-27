; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_thunder_bgx.c_bgx_set_dmac_cam_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_thunder_bgx.c_bgx_set_dmac_cam_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bgx = type { %struct.lmac* }
%struct.lmac = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bgx_set_dmac_cam_filter(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.bgx*, align 8
  %12 = alloca %struct.lmac*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call %struct.bgx* @get_bgx(i32 %13, i32 %14)
  store %struct.bgx* %15, %struct.bgx** %11, align 8
  store %struct.lmac* null, %struct.lmac** %12, align 8
  %16 = load %struct.bgx*, %struct.bgx** %11, align 8
  %17 = icmp ne %struct.bgx* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %5
  br label %38

19:                                               ; preds = %5
  %20 = load %struct.bgx*, %struct.bgx** %11, align 8
  %21 = getelementptr inbounds %struct.bgx, %struct.bgx* %20, i32 0, i32 0
  %22 = load %struct.lmac*, %struct.lmac** %21, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.lmac, %struct.lmac* %22, i64 %24
  store %struct.lmac* %25, %struct.lmac** %12, align 8
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %19
  %29 = load %struct.lmac*, %struct.lmac** %12, align 8
  %30 = getelementptr inbounds %struct.lmac, %struct.lmac* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ether_addr_to_u64(i32 %31)
  store i32 %32, i32* %9, align 4
  br label %33

33:                                               ; preds = %28, %19
  %34 = load %struct.lmac*, %struct.lmac** %12, align 8
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @bgx_lmac_save_filter(%struct.lmac* %34, i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %33, %18
  ret void
}

declare dso_local %struct.bgx* @get_bgx(i32, i32) #1

declare dso_local i32 @ether_addr_to_u64(i32) #1

declare dso_local i32 @bgx_lmac_save_filter(%struct.lmac*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
