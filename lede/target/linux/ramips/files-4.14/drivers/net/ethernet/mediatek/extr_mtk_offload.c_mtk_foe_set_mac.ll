; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mtk_offload.c_mtk_foe_set_mac.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mtk_offload.c_mtk_foe_set_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_foe_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_foe_entry*, i32*, i32*)* @mtk_foe_set_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_foe_set_mac(%struct.mtk_foe_entry* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.mtk_foe_entry*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %struct.mtk_foe_entry* %0, %struct.mtk_foe_entry** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load i32*, i32** %6, align 8
  %8 = load i32, i32* %7, align 4
  %9 = call i8* @swab32(i32 %8)
  %10 = load %struct.mtk_foe_entry*, %struct.mtk_foe_entry** %4, align 8
  %11 = getelementptr inbounds %struct.mtk_foe_entry, %struct.mtk_foe_entry* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 3
  store i8* %9, i8** %12, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 4
  %15 = load i32, i32* %14, align 4
  %16 = call i8* @swab16(i32 %15)
  %17 = load %struct.mtk_foe_entry*, %struct.mtk_foe_entry** %4, align 8
  %18 = getelementptr inbounds %struct.mtk_foe_entry, %struct.mtk_foe_entry* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  store i8* %16, i8** %19, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* %20, align 4
  %22 = call i8* @swab32(i32 %21)
  %23 = load %struct.mtk_foe_entry*, %struct.mtk_foe_entry** %4, align 8
  %24 = getelementptr inbounds %struct.mtk_foe_entry, %struct.mtk_foe_entry* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  store i8* %22, i8** %25, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 4
  %28 = load i32, i32* %27, align 4
  %29 = call i8* @swab16(i32 %28)
  %30 = load %struct.mtk_foe_entry*, %struct.mtk_foe_entry** %4, align 8
  %31 = getelementptr inbounds %struct.mtk_foe_entry, %struct.mtk_foe_entry* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i8* %29, i8** %32, align 8
  ret void
}

declare dso_local i8* @swab32(i32) #1

declare dso_local i8* @swab16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
