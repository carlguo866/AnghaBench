; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_wr_sp_sb_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_wr_sp_sb_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }
%struct.hc_sp_status_block_data = type { i32 }

@BAR_CSTRORM_INTMEM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*, %struct.hc_sp_status_block_data*)* @bxe_wr_sp_sb_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxe_wr_sp_sb_data(%struct.bxe_softc* %0, %struct.hc_sp_status_block_data* %1) #0 {
  %3 = alloca %struct.bxe_softc*, align 8
  %4 = alloca %struct.hc_sp_status_block_data*, align 8
  %5 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %3, align 8
  store %struct.hc_sp_status_block_data* %1, %struct.hc_sp_status_block_data** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %28, %2
  %7 = load i32, i32* %5, align 4
  %8 = sext i32 %7 to i64
  %9 = icmp ult i64 %8, 1
  br i1 %9, label %10, label %31

10:                                               ; preds = %6
  %11 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %12 = load i64, i64* @BAR_CSTRORM_INTMEM, align 8
  %13 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %14 = call i32 @SC_FUNC(%struct.bxe_softc* %13)
  %15 = call i64 @CSTORM_SP_STATUS_BLOCK_DATA_OFFSET(i32 %14)
  %16 = add nsw i64 %12, %15
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 4
  %20 = add i64 %16, %19
  %21 = load %struct.hc_sp_status_block_data*, %struct.hc_sp_status_block_data** %4, align 8
  %22 = bitcast %struct.hc_sp_status_block_data* %21 to i32*
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @REG_WR(%struct.bxe_softc* %11, i64 %20, i32 %26)
  br label %28

28:                                               ; preds = %10
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %5, align 4
  br label %6

31:                                               ; preds = %6
  ret void
}

declare dso_local i32 @REG_WR(%struct.bxe_softc*, i64, i32) #1

declare dso_local i64 @CSTORM_SP_STATUS_BLOCK_DATA_OFFSET(i32) #1

declare dso_local i32 @SC_FUNC(%struct.bxe_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
