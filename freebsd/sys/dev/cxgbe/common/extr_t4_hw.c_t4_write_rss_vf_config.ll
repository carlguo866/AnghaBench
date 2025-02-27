; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_write_rss_vf_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_write_rss_vf_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

@CHELSIO_T5 = common dso_local global i64 0, align 8
@M_VFWRADDR = common dso_local global i32 0, align 4
@M_T6_VFWRADDR = common dso_local global i32 0, align 4
@A_TP_RSS_VFL_CONFIG = common dso_local global i32 0, align 4
@A_TP_RSS_VFH_CONFIG = common dso_local global i32 0, align 4
@A_TP_RSS_CONFIG_VRT = common dso_local global i32 0, align 4
@F_VFRDRG = common dso_local global i32 0, align 4
@F_VFWREN = common dso_local global i32 0, align 4
@F_KEYWREN = common dso_local global i32 0, align 4
@F_VFRDEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @t4_write_rss_vf_config(%struct.adapter* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load %struct.adapter*, %struct.adapter** %6, align 8
  %15 = call i64 @chip_id(%struct.adapter* %14)
  %16 = load i64, i64* @CHELSIO_T5, align 8
  %17 = icmp sle i64 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %5
  %19 = load i32, i32* @M_VFWRADDR, align 4
  %20 = call i32 @V_VFWRADDR(i32 %19)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @V_VFWRADDR(i32 %21)
  store i32 %22, i32* %13, align 4
  br label %28

23:                                               ; preds = %5
  %24 = load i32, i32* @M_T6_VFWRADDR, align 4
  %25 = call i32 @V_T6_VFWRADDR(i32 %24)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @V_T6_VFWRADDR(i32 %26)
  store i32 %27, i32* %13, align 4
  br label %28

28:                                               ; preds = %23, %18
  %29 = load %struct.adapter*, %struct.adapter** %6, align 8
  %30 = load i32, i32* @A_TP_RSS_VFL_CONFIG, align 4
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @t4_tp_pio_write(%struct.adapter* %29, i32* %8, i32 1, i32 %30, i32 %31)
  %33 = load %struct.adapter*, %struct.adapter** %6, align 8
  %34 = load i32, i32* @A_TP_RSS_VFH_CONFIG, align 4
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @t4_tp_pio_write(%struct.adapter* %33, i32* %9, i32 1, i32 %34, i32 %35)
  %37 = load %struct.adapter*, %struct.adapter** %6, align 8
  %38 = load i32, i32* @A_TP_RSS_CONFIG_VRT, align 4
  %39 = call i32 @t4_read_reg(%struct.adapter* %37, i32 %38)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* @F_VFRDRG, align 4
  %41 = load i32, i32* @F_VFWREN, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @F_KEYWREN, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* %12, align 4
  %46 = or i32 %44, %45
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %11, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* @F_VFRDEN, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* %11, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %11, align 4
  %55 = load %struct.adapter*, %struct.adapter** %6, align 8
  %56 = load i32, i32* @A_TP_RSS_CONFIG_VRT, align 4
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @t4_write_reg(%struct.adapter* %55, i32 %56, i32 %57)
  ret void
}

declare dso_local i64 @chip_id(%struct.adapter*) #1

declare dso_local i32 @V_VFWRADDR(i32) #1

declare dso_local i32 @V_T6_VFWRADDR(i32) #1

declare dso_local i32 @t4_tp_pio_write(%struct.adapter*, i32*, i32, i32, i32) #1

declare dso_local i32 @t4_read_reg(%struct.adapter*, i32) #1

declare dso_local i32 @t4_write_reg(%struct.adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
