; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_cim_read_ma_la.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_cim_read_ma_la.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

@CIM_DEBUGCFG_A = common dso_local global i32 0, align 4
@LADBGEN_F = common dso_local global i32 0, align 4
@CIM_MALA_SIZE = common dso_local global i32 0, align 4
@CIM_PO_LA_MADEBUGDATA_A = common dso_local global i32 0, align 4
@CIM_PI_LA_MADEBUGDATA_A = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @t4_cim_read_ma_la(%struct.adapter* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load %struct.adapter*, %struct.adapter** %4, align 8
  %12 = load i32, i32* @CIM_DEBUGCFG_A, align 4
  %13 = call i8* @t4_read_reg(%struct.adapter* %11, i32 %12)
  %14 = ptrtoint i8* %13 to i32
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @LADBGEN_F, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %3
  %20 = load %struct.adapter*, %struct.adapter** %4, align 8
  %21 = load i32, i32* @CIM_DEBUGCFG_A, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @LADBGEN_F, align 4
  %24 = xor i32 %22, %23
  %25 = call i32 @t4_write_reg(%struct.adapter* %20, i32 %21, i32 %24)
  br label %26

26:                                               ; preds = %19, %3
  store i32 0, i32* %8, align 4
  br label %27

27:                                               ; preds = %64, %26
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @CIM_MALA_SIZE, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %67

31:                                               ; preds = %27
  store i32 0, i32* %9, align 4
  br label %32

32:                                               ; preds = %60, %31
  %33 = load i32, i32* %9, align 4
  %34 = icmp slt i32 %33, 5
  br i1 %34, label %35, label %63

35:                                               ; preds = %32
  %36 = load i32, i32* %8, align 4
  %37 = mul nsw i32 8, %36
  %38 = load i32, i32* %9, align 4
  %39 = add nsw i32 %37, %38
  store i32 %39, i32* %10, align 4
  %40 = load %struct.adapter*, %struct.adapter** %4, align 8
  %41 = load i32, i32* @CIM_DEBUGCFG_A, align 4
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @POLADBGRDPTR_V(i32 %42)
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @PILADBGRDPTR_V(i32 %44)
  %46 = or i32 %43, %45
  %47 = call i32 @t4_write_reg(%struct.adapter* %40, i32 %41, i32 %46)
  %48 = load %struct.adapter*, %struct.adapter** %4, align 8
  %49 = load i32, i32* @CIM_PO_LA_MADEBUGDATA_A, align 4
  %50 = call i8* @t4_read_reg(%struct.adapter* %48, i32 %49)
  %51 = ptrtoint i8* %50 to i32
  %52 = load i32*, i32** %5, align 8
  %53 = getelementptr inbounds i32, i32* %52, i32 1
  store i32* %53, i32** %5, align 8
  store i32 %51, i32* %52, align 4
  %54 = load %struct.adapter*, %struct.adapter** %4, align 8
  %55 = load i32, i32* @CIM_PI_LA_MADEBUGDATA_A, align 4
  %56 = call i8* @t4_read_reg(%struct.adapter* %54, i32 %55)
  %57 = ptrtoint i8* %56 to i32
  %58 = load i32*, i32** %6, align 8
  %59 = getelementptr inbounds i32, i32* %58, i32 1
  store i32* %59, i32** %6, align 8
  store i32 %57, i32* %58, align 4
  br label %60

60:                                               ; preds = %35
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %9, align 4
  br label %32

63:                                               ; preds = %32
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %8, align 4
  br label %27

67:                                               ; preds = %27
  %68 = load %struct.adapter*, %struct.adapter** %4, align 8
  %69 = load i32, i32* @CIM_DEBUGCFG_A, align 4
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @t4_write_reg(%struct.adapter* %68, i32 %69, i32 %70)
  ret void
}

declare dso_local i8* @t4_read_reg(%struct.adapter*, i32) #1

declare dso_local i32 @t4_write_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @POLADBGRDPTR_V(i32) #1

declare dso_local i32 @PILADBGRDPTR_V(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
