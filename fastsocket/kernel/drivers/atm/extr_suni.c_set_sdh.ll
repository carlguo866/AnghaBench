; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_suni.c_set_sdh.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_suni.c_set_sdh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_dev = type { i32 }
%struct.TYPE_2__ = type { i64 }

@SUNI_MRI_TYPE_PM5355 = common dso_local global i64 0, align 8
@RPOP_RC = common dso_local global i32 0, align 4
@SUNI_RPOP_RC_ENSS = common dso_local global i32 0, align 4
@SSTB_CTRL = common dso_local global i32 0, align 4
@SUNI_SSTB_CTRL_LEN16 = common dso_local global i32 0, align 4
@SPTB_CTRL = common dso_local global i32 0, align 4
@SUNI_SPTB_CTRL_LEN16 = common dso_local global i32 0, align 4
@SUNI_TPOP_APM_S = common dso_local global i32 0, align 4
@SUNI_TPOP_APM_S_SHIFT = common dso_local global i32 0, align 4
@SUNI_TPOP_S_SDH = common dso_local global i32 0, align 4
@TPOP_APM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atm_dev*)* @set_sdh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_sdh(%struct.atm_dev* %0) #0 {
  %2 = alloca %struct.atm_dev*, align 8
  store %struct.atm_dev* %0, %struct.atm_dev** %2, align 8
  %3 = load %struct.atm_dev*, %struct.atm_dev** %2, align 8
  %4 = call %struct.TYPE_2__* @PRIV(%struct.atm_dev* %3)
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @SUNI_MRI_TYPE_PM5355, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %28

9:                                                ; preds = %1
  %10 = load i32, i32* @RPOP_RC, align 4
  %11 = call i32 @GET(i32 %10)
  %12 = load i32, i32* @SUNI_RPOP_RC_ENSS, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @RPOP_RC, align 4
  %15 = call i32 @PUT(i32 %13, i32 %14)
  %16 = load i32, i32* @SSTB_CTRL, align 4
  %17 = call i32 @GET(i32 %16)
  %18 = load i32, i32* @SUNI_SSTB_CTRL_LEN16, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @SSTB_CTRL, align 4
  %21 = call i32 @PUT(i32 %19, i32 %20)
  %22 = load i32, i32* @SPTB_CTRL, align 4
  %23 = call i32 @GET(i32 %22)
  %24 = load i32, i32* @SUNI_SPTB_CTRL_LEN16, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @SPTB_CTRL, align 4
  %27 = call i32 @PUT(i32 %25, i32 %26)
  br label %28

28:                                               ; preds = %9, %1
  %29 = load i32, i32* @SUNI_TPOP_APM_S, align 4
  %30 = load i32, i32* @SUNI_TPOP_APM_S_SHIFT, align 4
  %31 = load i32, i32* @SUNI_TPOP_S_SDH, align 4
  %32 = load i32, i32* @TPOP_APM, align 4
  %33 = call i32 @REG_CHANGE(i32 %29, i32 %30, i32 %31, i32 %32)
  ret i32 0
}

declare dso_local %struct.TYPE_2__* @PRIV(%struct.atm_dev*) #1

declare dso_local i32 @PUT(i32, i32) #1

declare dso_local i32 @GET(i32) #1

declare dso_local i32 @REG_CHANGE(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
