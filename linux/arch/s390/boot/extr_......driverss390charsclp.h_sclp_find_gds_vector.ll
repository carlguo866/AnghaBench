; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/boot/extr_......driverss390charsclp.h_sclp_find_gds_vector.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/boot/extr_......driverss390charsclp.h_sclp_find_gds_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gds_vector = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gds_vector* (i8*, i8*, i64)* @sclp_find_gds_vector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gds_vector* @sclp_find_gds_vector(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.gds_vector*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.gds_vector*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.gds_vector*
  store %struct.gds_vector* %10, %struct.gds_vector** %8, align 8
  br label %11

11:                                               ; preds = %25, %3
  %12 = load %struct.gds_vector*, %struct.gds_vector** %8, align 8
  %13 = bitcast %struct.gds_vector* %12 to i8*
  %14 = load i8*, i8** %6, align 8
  %15 = icmp ult i8* %13, %14
  br i1 %15, label %16, label %34

16:                                               ; preds = %11
  %17 = load %struct.gds_vector*, %struct.gds_vector** %8, align 8
  %18 = getelementptr inbounds %struct.gds_vector, %struct.gds_vector* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %7, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load %struct.gds_vector*, %struct.gds_vector** %8, align 8
  store %struct.gds_vector* %23, %struct.gds_vector** %4, align 8
  br label %35

24:                                               ; preds = %16
  br label %25

25:                                               ; preds = %24
  %26 = load %struct.gds_vector*, %struct.gds_vector** %8, align 8
  %27 = bitcast %struct.gds_vector* %26 to i8*
  %28 = load %struct.gds_vector*, %struct.gds_vector** %8, align 8
  %29 = getelementptr inbounds %struct.gds_vector, %struct.gds_vector* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = getelementptr i8, i8* %27, i64 %31
  %33 = bitcast i8* %32 to %struct.gds_vector*
  store %struct.gds_vector* %33, %struct.gds_vector** %8, align 8
  br label %11

34:                                               ; preds = %11
  store %struct.gds_vector* null, %struct.gds_vector** %4, align 8
  br label %35

35:                                               ; preds = %34, %22
  %36 = load %struct.gds_vector*, %struct.gds_vector** %4, align 8
  ret %struct.gds_vector* %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
