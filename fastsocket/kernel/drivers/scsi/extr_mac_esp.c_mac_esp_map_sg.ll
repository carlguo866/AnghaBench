; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_mac_esp.c_mac_esp_map_sg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_mac_esp.c_mac_esp_map_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esp = type { i32 }
%struct.scatterlist = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.esp*, %struct.scatterlist*, i32, i32)* @mac_esp_map_sg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mac_esp_map_sg(%struct.esp* %0, %struct.scatterlist* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.esp*, align 8
  %6 = alloca %struct.scatterlist*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.esp* %0, %struct.esp** %5, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %25, %4
  %11 = load i32, i32* %9, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %28

14:                                               ; preds = %10
  %15 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %16 = load i32, i32* %9, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %15, i64 %17
  %19 = call i64 @sg_virt(%struct.scatterlist* %18)
  %20 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %20, i64 %22
  %24 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %23, i32 0, i32 0
  store i64 %19, i64* %24, align 8
  br label %25

25:                                               ; preds = %14
  %26 = load i32, i32* %9, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %9, align 4
  br label %10

28:                                               ; preds = %10
  %29 = load i32, i32* %7, align 4
  ret i32 %29
}

declare dso_local i64 @sg_virt(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
