; ModuleID = '/home/carl/AnghaBench/esp-idf/components/mbedtls/port/esp32/extr_esp_bignum.c_esp_mpi_acquire_hardware.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/mbedtls/port/esp32/extr_esp_bignum.c_esp_mpi_acquire_hardware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mpi_lock = common dso_local global i32 0, align 4
@PERIPH_RSA_MODULE = common dso_local global i32 0, align 4
@DPORT_RSA_PD_CTRL_REG = common dso_local global i32 0, align 4
@DPORT_RSA_PD = common dso_local global i32 0, align 4
@RSA_CLEAN_REG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @esp_mpi_acquire_hardware() #0 {
  %1 = call i32 @_lock_acquire(i32* @mpi_lock)
  %2 = load i32, i32* @PERIPH_RSA_MODULE, align 4
  %3 = call i32 @periph_module_enable(i32 %2)
  %4 = load i32, i32* @DPORT_RSA_PD_CTRL_REG, align 4
  %5 = load i32, i32* @DPORT_RSA_PD, align 4
  %6 = call i32 @DPORT_REG_CLR_BIT(i32 %4, i32 %5)
  br label %7

7:                                                ; preds = %11, %0
  %8 = load i32, i32* @RSA_CLEAN_REG, align 4
  %9 = call i32 @DPORT_REG_READ(i32 %8)
  %10 = icmp ne i32 %9, 1
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  br label %7

12:                                               ; preds = %7
  ret void
}

declare dso_local i32 @_lock_acquire(i32*) #1

declare dso_local i32 @periph_module_enable(i32) #1

declare dso_local i32 @DPORT_REG_CLR_BIT(i32, i32) #1

declare dso_local i32 @DPORT_REG_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
