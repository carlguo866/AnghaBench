; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-sflow.c_sflow_print_counter_sample.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-sflow.c_sflow_print_counter_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sflow_counter_sample_t = type { i32, i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c" seqnum %u, type %u, idx %u, records %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @sflow_print_counter_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sflow_print_counter_sample(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sflow_counter_sample_t*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca { i64, i32 }, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = icmp ult i64 %15, 12
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %62

18:                                               ; preds = %3
  %19 = load i32*, i32** %6, align 8
  %20 = bitcast i32* %19 to %struct.sflow_counter_sample_t*
  store %struct.sflow_counter_sample_t* %20, %struct.sflow_counter_sample_t** %8, align 8
  %21 = load %struct.sflow_counter_sample_t*, %struct.sflow_counter_sample_t** %8, align 8
  %22 = bitcast { i64, i32 }* %13 to i8*
  %23 = bitcast %struct.sflow_counter_sample_t* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %22, i8* align 4 %23, i64 12, i1 false)
  %24 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %13, i32 0, i32 0
  %25 = load i64, i64* %24, align 4
  %26 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %13, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ND_TCHECK(i64 %25, i32 %27)
  %29 = load %struct.sflow_counter_sample_t*, %struct.sflow_counter_sample_t** %8, align 8
  %30 = getelementptr inbounds %struct.sflow_counter_sample_t, %struct.sflow_counter_sample_t* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @EXTRACT_32BITS(i32 %31)
  store i32 %32, i32* %10, align 4
  %33 = load %struct.sflow_counter_sample_t*, %struct.sflow_counter_sample_t** %8, align 8
  %34 = getelementptr inbounds %struct.sflow_counter_sample_t, %struct.sflow_counter_sample_t* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @EXTRACT_32BITS(i32 %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %10, align 4
  %38 = ashr i32 %37, 24
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %10, align 4
  %40 = and i32 %39, 4095
  store i32 %40, i32* %12, align 4
  %41 = load i32*, i32** %5, align 8
  %42 = load %struct.sflow_counter_sample_t*, %struct.sflow_counter_sample_t** %8, align 8
  %43 = getelementptr inbounds %struct.sflow_counter_sample_t, %struct.sflow_counter_sample_t* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @EXTRACT_32BITS(i32 %44)
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = inttoptr i64 %49 to i32*
  %51 = call i32 @ND_PRINT(i32* %50)
  %52 = load i32*, i32** %5, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 12
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = sub i64 %56, 12
  %58 = trunc i64 %57 to i32
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @sflow_print_counter_records(i32* %52, i32* %54, i32 %58, i32 %59)
  store i32 %60, i32* %4, align 4
  br label %62

61:                                               ; No predecessors!
  store i32 1, i32* %4, align 4
  br label %62

62:                                               ; preds = %61, %18, %17
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @ND_TCHECK(i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @EXTRACT_32BITS(i32) #1

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @sflow_print_counter_records(i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
