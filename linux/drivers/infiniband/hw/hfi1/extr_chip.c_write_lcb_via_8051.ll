; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_write_lcb_via_8051.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_write_lcb_via_8051.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i64, i64 }

@ICODE_FUNCTIONAL_SIMULATOR = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@DC_LCB_CFG_RUN = common dso_local global i32 0, align 4
@HCMD_WRITE_LCB_CSR = common dso_local global i32 0, align 4
@HCMD_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfi1_devdata*, i32, i32)* @write_lcb_via_8051 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_lcb_via_8051(%struct.hfi1_devdata* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hfi1_devdata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %11 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @ICODE_FUNCTIONAL_SIMULATOR, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %21, label %15

15:                                               ; preds = %3
  %16 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %17 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = call i64 @dc8051_ver(i32 0, i32 20, i32 0)
  %20 = icmp slt i64 %18, %19
  br i1 %20, label %21, label %35

21:                                               ; preds = %15, %3
  %22 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %23 = call i64 @acquire_lcb_access(%struct.hfi1_devdata* %22, i32 0)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %21
  %26 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @write_csr(%struct.hfi1_devdata* %26, i32 %27, i32 %28)
  %30 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %31 = call i32 @release_lcb_access(%struct.hfi1_devdata* %30, i32 0)
  store i32 0, i32* %4, align 4
  br label %51

32:                                               ; preds = %21
  %33 = load i32, i32* @EBUSY, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %51

35:                                               ; preds = %15
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @DC_LCB_CFG_RUN, align 4
  %38 = sub nsw i32 %36, %37
  %39 = ashr i32 %38, 3
  store i32 %39, i32* %8, align 4
  %40 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %41 = load i32, i32* @HCMD_WRITE_LCB_CSR, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @do_8051_command(%struct.hfi1_devdata* %40, i32 %41, i32 %42, i32* %7)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @HCMD_SUCCESS, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %35
  %48 = load i32, i32* @EBUSY, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %51

50:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %50, %47, %32, %25
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i64 @dc8051_ver(i32, i32, i32) #1

declare dso_local i64 @acquire_lcb_access(%struct.hfi1_devdata*, i32) #1

declare dso_local i32 @write_csr(%struct.hfi1_devdata*, i32, i32) #1

declare dso_local i32 @release_lcb_access(%struct.hfi1_devdata*, i32) #1

declare dso_local i32 @do_8051_command(%struct.hfi1_devdata*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
