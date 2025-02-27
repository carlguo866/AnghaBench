; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-nvm-parse.c_iwl_nvm_fixups.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-nvm-parse.c_iwl_nvm_fixups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NVM_SECTION_TYPE_PHY_SKU = common dso_local global i32 0, align 4
@ANT_B = common dso_local global i32 0, align 4
@IWL_4165_DEVICE_ID = common dso_local global i64 0, align 8
@NVM_SKU_CAP_MIMO_DISABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_nvm_fixups(i64 %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @NVM_SECTION_TYPE_PHY_SKU, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %35

12:                                               ; preds = %4
  %13 = load i64, i64* %5, align 8
  %14 = icmp eq i64 %13, 21761
  br i1 %14, label %15, label %35

15:                                               ; preds = %12
  %16 = load i32*, i32** %7, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %35

18:                                               ; preds = %15
  %19 = load i32, i32* %8, align 4
  %20 = icmp uge i32 %19, 5
  br i1 %20, label %21, label %35

21:                                               ; preds = %18
  %22 = load i32*, i32** %7, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 4
  %24 = load i32, i32* %23, align 4
  %25 = call i32 (i32, ...) bitcast (i32 (...)* @BIT to i32 (i32, ...)*)(i32 5)
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %21
  %29 = load i32, i32* @ANT_B, align 4
  %30 = load i32, i32* @ANT_B, align 4
  %31 = shl i32 %30, 4
  %32 = or i32 %29, %31
  %33 = load i32*, i32** %7, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 3
  store i32 %32, i32* %34, align 4
  br label %35

35:                                               ; preds = %28, %21, %18, %15, %12, %4
  ret void
}

declare dso_local i32 @BIT(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
