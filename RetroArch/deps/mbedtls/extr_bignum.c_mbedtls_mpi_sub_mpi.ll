; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_bignum.c_mbedtls_mpi_sub_mpi.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_bignum.c_mbedtls_mpi_sub_mpi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_mpi_sub_mpi(%struct.TYPE_13__* %0, %struct.TYPE_13__* %1, %struct.TYPE_13__* %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %6, align 8
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %8, align 4
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = mul nsw i32 %14, %17
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %45

20:                                               ; preds = %3
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %23 = call i64 @mbedtls_mpi_cmp_abs(%struct.TYPE_13__* %21, %struct.TYPE_13__* %22)
  %24 = icmp sge i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %20
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %29 = call i32 @mbedtls_mpi_sub_abs(%struct.TYPE_13__* %26, %struct.TYPE_13__* %27, %struct.TYPE_13__* %28)
  %30 = call i32 @MBEDTLS_MPI_CHK(i32 %29)
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  br label %44

34:                                               ; preds = %20
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %38 = call i32 @mbedtls_mpi_sub_abs(%struct.TYPE_13__* %35, %struct.TYPE_13__* %36, %struct.TYPE_13__* %37)
  %39 = call i32 @MBEDTLS_MPI_CHK(i32 %38)
  %40 = load i32, i32* %8, align 4
  %41 = sub nsw i32 0, %40
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %34, %25
  br label %54

45:                                               ; preds = %3
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %49 = call i32 @mbedtls_mpi_add_abs(%struct.TYPE_13__* %46, %struct.TYPE_13__* %47, %struct.TYPE_13__* %48)
  %50 = call i32 @MBEDTLS_MPI_CHK(i32 %49)
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  br label %54

54:                                               ; preds = %45, %44
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %7, align 4
  ret i32 %56
}

declare dso_local i64 @mbedtls_mpi_cmp_abs(%struct.TYPE_13__*, %struct.TYPE_13__*) #1

declare dso_local i32 @MBEDTLS_MPI_CHK(i32) #1

declare dso_local i32 @mbedtls_mpi_sub_abs(%struct.TYPE_13__*, %struct.TYPE_13__*, %struct.TYPE_13__*) #1

declare dso_local i32 @mbedtls_mpi_add_abs(%struct.TYPE_13__*, %struct.TYPE_13__*, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
