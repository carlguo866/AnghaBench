; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_davinci_emac.c_emac_stop_txch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_davinci_emac.c_emac_stop_txch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emac_priv = type { %struct.emac_txch** }
%struct.emac_txch = type { i32 }

@EMAC_TXTEARDOWN = common dso_local global i32 0, align 4
@EMAC_TXINTMASKCLEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.emac_priv*, i64)* @emac_stop_txch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emac_stop_txch(%struct.emac_priv* %0, i64 %1) #0 {
  %3 = alloca %struct.emac_priv*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.emac_txch*, align 8
  store %struct.emac_priv* %0, %struct.emac_priv** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.emac_priv*, %struct.emac_priv** %3, align 8
  %7 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %6, i32 0, i32 0
  %8 = load %struct.emac_txch**, %struct.emac_txch*** %7, align 8
  %9 = load i64, i64* %4, align 8
  %10 = getelementptr inbounds %struct.emac_txch*, %struct.emac_txch** %8, i64 %9
  %11 = load %struct.emac_txch*, %struct.emac_txch** %10, align 8
  store %struct.emac_txch* %11, %struct.emac_txch** %5, align 8
  %12 = load %struct.emac_txch*, %struct.emac_txch** %5, align 8
  %13 = icmp ne %struct.emac_txch* %12, null
  br i1 %13, label %14, label %28

14:                                               ; preds = %2
  %15 = load %struct.emac_txch*, %struct.emac_txch** %5, align 8
  %16 = getelementptr inbounds %struct.emac_txch, %struct.emac_txch* %15, i32 0, i32 0
  store i32 1, i32* %16, align 4
  %17 = load i32, i32* @EMAC_TXTEARDOWN, align 4
  %18 = call i32 @emac_write(i32 %17, i32 0)
  %19 = load %struct.emac_priv*, %struct.emac_priv** %3, align 8
  %20 = load i64, i64* %4, align 8
  %21 = call i32 @emac_txch_teardown(%struct.emac_priv* %19, i64 %20)
  %22 = load %struct.emac_txch*, %struct.emac_txch** %5, align 8
  %23 = getelementptr inbounds %struct.emac_txch, %struct.emac_txch* %22, i32 0, i32 0
  store i32 0, i32* %23, align 4
  %24 = load i32, i32* @EMAC_TXINTMASKCLEAR, align 4
  %25 = load i64, i64* %4, align 8
  %26 = call i32 @BIT(i64 %25)
  %27 = call i32 @emac_write(i32 %24, i32 %26)
  br label %28

28:                                               ; preds = %14, %2
  ret void
}

declare dso_local i32 @emac_write(i32, i32) #1

declare dso_local i32 @emac_txch_teardown(%struct.emac_priv*, i64) #1

declare dso_local i32 @BIT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
