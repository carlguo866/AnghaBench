; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_change_l2_filter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_change_l2_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@QLCNIC_MAC_ADD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qlcnic_83xx_change_l2_filter(%struct.qlcnic_adapter* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.qlcnic_adapter*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @ETH_ALEN, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %7, align 8
  %12 = alloca i32, i64 %10, align 16
  store i64 %10, i64* %8, align 8
  %13 = bitcast i32* %12 to i32**
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* @ETH_ALEN, align 4
  %16 = call i32 @memcpy(i32** %13, i32* %14, i32 %15)
  %17 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @QLCNIC_MAC_ADD, align 4
  %20 = call i32 @qlcnic_83xx_sre_macaddr_change(%struct.qlcnic_adapter* %17, i32* %12, i32 %18, i32 %19)
  %21 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %21)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i32**, i32*, i32) #2

declare dso_local i32 @qlcnic_83xx_sre_macaddr_change(%struct.qlcnic_adapter*, i32*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
