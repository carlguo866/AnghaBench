; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/executive/extr_cvmx-interrupt-decodes.c___cvmx_interrupt_stxx_int_msk_enable.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/executive/extr_cvmx-interrupt-decodes.c___cvmx_interrupt_stxx_int_msk_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.cvmx_stxx_int_msk = type { i64, [24 x i8] }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@OCTEON_CN38XX = common dso_local global i32 0, align 4
@OCTEON_CN58XX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__cvmx_interrupt_stxx_int_msk_enable(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.cvmx_stxx_int_msk, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @CVMX_STXX_INT_REG(i32 %4)
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @CVMX_STXX_INT_REG(i32 %6)
  %8 = call i64 @cvmx_read_csr(i32 %7)
  %9 = call i32 @cvmx_write_csr(i32 %5, i64 %8)
  %10 = bitcast %union.cvmx_stxx_int_msk* %3 to i64*
  store i64 0, i64* %10, align 8
  %11 = load i32, i32* @OCTEON_CN38XX, align 4
  %12 = call i64 @OCTEON_IS_MODEL(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %31

14:                                               ; preds = %1
  %15 = bitcast %union.cvmx_stxx_int_msk* %3 to %struct.TYPE_2__*
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = bitcast %union.cvmx_stxx_int_msk* %3 to %struct.TYPE_2__*
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  store i32 1, i32* %18, align 4
  %19 = bitcast %union.cvmx_stxx_int_msk* %3 to %struct.TYPE_2__*
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  store i32 1, i32* %20, align 8
  %21 = bitcast %union.cvmx_stxx_int_msk* %3 to %struct.TYPE_2__*
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 3
  store i32 1, i32* %22, align 4
  %23 = bitcast %union.cvmx_stxx_int_msk* %3 to %struct.TYPE_2__*
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 4
  store i32 1, i32* %24, align 8
  %25 = bitcast %union.cvmx_stxx_int_msk* %3 to %struct.TYPE_2__*
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 5
  store i32 1, i32* %26, align 4
  %27 = bitcast %union.cvmx_stxx_int_msk* %3 to %struct.TYPE_2__*
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 6
  store i32 1, i32* %28, align 8
  %29 = bitcast %union.cvmx_stxx_int_msk* %3 to %struct.TYPE_2__*
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 7
  store i32 1, i32* %30, align 4
  br label %31

31:                                               ; preds = %14, %1
  %32 = load i32, i32* @OCTEON_CN58XX, align 4
  %33 = call i64 @OCTEON_IS_MODEL(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %52

35:                                               ; preds = %31
  %36 = bitcast %union.cvmx_stxx_int_msk* %3 to %struct.TYPE_2__*
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i32 1, i32* %37, align 8
  %38 = bitcast %union.cvmx_stxx_int_msk* %3 to %struct.TYPE_2__*
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  store i32 1, i32* %39, align 4
  %40 = bitcast %union.cvmx_stxx_int_msk* %3 to %struct.TYPE_2__*
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  store i32 1, i32* %41, align 8
  %42 = bitcast %union.cvmx_stxx_int_msk* %3 to %struct.TYPE_2__*
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 3
  store i32 1, i32* %43, align 4
  %44 = bitcast %union.cvmx_stxx_int_msk* %3 to %struct.TYPE_2__*
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 4
  store i32 1, i32* %45, align 8
  %46 = bitcast %union.cvmx_stxx_int_msk* %3 to %struct.TYPE_2__*
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 5
  store i32 1, i32* %47, align 4
  %48 = bitcast %union.cvmx_stxx_int_msk* %3 to %struct.TYPE_2__*
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 6
  store i32 1, i32* %49, align 8
  %50 = bitcast %union.cvmx_stxx_int_msk* %3 to %struct.TYPE_2__*
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 7
  store i32 1, i32* %51, align 4
  br label %52

52:                                               ; preds = %35, %31
  %53 = load i32, i32* %2, align 4
  %54 = call i32 @CVMX_STXX_INT_MSK(i32 %53)
  %55 = bitcast %union.cvmx_stxx_int_msk* %3 to i64*
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @cvmx_write_csr(i32 %54, i64 %56)
  ret void
}

declare dso_local i32 @cvmx_write_csr(i32, i64) #1

declare dso_local i32 @CVMX_STXX_INT_REG(i32) #1

declare dso_local i64 @cvmx_read_csr(i32) #1

declare dso_local i64 @OCTEON_IS_MODEL(i32) #1

declare dso_local i32 @CVMX_STXX_INT_MSK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
