; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ecp_curves.c_ecp_use_curve25519.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ecp_curves.c_ecp_use_curve25519.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"01DB42\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @ecp_use_curve25519 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecp_use_curve25519(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 4
  %6 = call i32 @mbedtls_mpi_read_string(i32* %5, i32 16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %7 = call i32 @MBEDTLS_MPI_CHK(i32 %6)
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 2
  %10 = call i32 @mbedtls_mpi_lset(i32* %9, i32 1)
  %11 = call i32 @MBEDTLS_MPI_CHK(i32 %10)
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 2
  %14 = call i32 @mbedtls_mpi_shift_l(i32* %13, i32 255)
  %15 = call i32 @MBEDTLS_MPI_CHK(i32 %14)
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 2
  %20 = call i32 @mbedtls_mpi_sub_int(i32* %17, i32* %19, i32 19)
  %21 = call i32 @MBEDTLS_MPI_CHK(i32 %20)
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 2
  %24 = call i32 @mbedtls_mpi_bitlen(i32* %23)
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 2
  %30 = call i32 @mbedtls_mpi_lset(i32* %29, i32 9)
  %31 = call i32 @MBEDTLS_MPI_CHK(i32 %30)
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = call i32 @mbedtls_mpi_lset(i32* %34, i32 1)
  %36 = call i32 @MBEDTLS_MPI_CHK(i32 %35)
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = call i32 @mbedtls_mpi_free(i32* %39)
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  store i32 254, i32* %42, align 4
  br label %43

43:                                               ; preds = %1
  %44 = load i32, i32* %3, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %48 = call i32 @mbedtls_ecp_group_free(%struct.TYPE_6__* %47)
  br label %49

49:                                               ; preds = %46, %43
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @MBEDTLS_MPI_CHK(i32) #1

declare dso_local i32 @mbedtls_mpi_read_string(i32*, i32, i8*) #1

declare dso_local i32 @mbedtls_mpi_lset(i32*, i32) #1

declare dso_local i32 @mbedtls_mpi_shift_l(i32*, i32) #1

declare dso_local i32 @mbedtls_mpi_sub_int(i32*, i32*, i32) #1

declare dso_local i32 @mbedtls_mpi_bitlen(i32*) #1

declare dso_local i32 @mbedtls_mpi_free(i32*) #1

declare dso_local i32 @mbedtls_ecp_group_free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
