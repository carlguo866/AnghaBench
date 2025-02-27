; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table_algo.c_ta_init_numarray.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table_algo.c_ta_init_numarray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32 }
%struct.table_info = type { i32, i8* }
%struct.numarray_cfg = type { i32, i8* }

@M_IPFW = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ta_lookup_numarray = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_fw_chain*, i8**, %struct.table_info*, i8*, i32)* @ta_init_numarray to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ta_init_numarray(%struct.ip_fw_chain* %0, i8** %1, %struct.table_info* %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.ip_fw_chain*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.table_info*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.numarray_cfg*, align 8
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %6, align 8
  store i8** %1, i8*** %7, align 8
  store %struct.table_info* %2, %struct.table_info** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* @M_IPFW, align 4
  %13 = load i32, i32* @M_WAITOK, align 4
  %14 = load i32, i32* @M_ZERO, align 4
  %15 = or i32 %13, %14
  %16 = call i8* @malloc(i32 16, i32 %12, i32 %15)
  %17 = bitcast i8* %16 to %struct.numarray_cfg*
  store %struct.numarray_cfg* %17, %struct.numarray_cfg** %11, align 8
  %18 = load %struct.numarray_cfg*, %struct.numarray_cfg** %11, align 8
  %19 = getelementptr inbounds %struct.numarray_cfg, %struct.numarray_cfg* %18, i32 0, i32 0
  store i32 16, i32* %19, align 8
  %20 = load %struct.numarray_cfg*, %struct.numarray_cfg** %11, align 8
  %21 = getelementptr inbounds %struct.numarray_cfg, %struct.numarray_cfg* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = mul i64 4, %23
  %25 = trunc i64 %24 to i32
  %26 = load i32, i32* @M_IPFW, align 4
  %27 = load i32, i32* @M_WAITOK, align 4
  %28 = load i32, i32* @M_ZERO, align 4
  %29 = or i32 %27, %28
  %30 = call i8* @malloc(i32 %25, i32 %26, i32 %29)
  %31 = load %struct.numarray_cfg*, %struct.numarray_cfg** %11, align 8
  %32 = getelementptr inbounds %struct.numarray_cfg, %struct.numarray_cfg* %31, i32 0, i32 1
  store i8* %30, i8** %32, align 8
  %33 = load %struct.numarray_cfg*, %struct.numarray_cfg** %11, align 8
  %34 = bitcast %struct.numarray_cfg* %33 to i8*
  %35 = load i8**, i8*** %7, align 8
  store i8* %34, i8** %35, align 8
  %36 = load %struct.numarray_cfg*, %struct.numarray_cfg** %11, align 8
  %37 = getelementptr inbounds %struct.numarray_cfg, %struct.numarray_cfg* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = load %struct.table_info*, %struct.table_info** %8, align 8
  %40 = getelementptr inbounds %struct.table_info, %struct.table_info* %39, i32 0, i32 1
  store i8* %38, i8** %40, align 8
  %41 = load i32, i32* @ta_lookup_numarray, align 4
  %42 = load %struct.table_info*, %struct.table_info** %8, align 8
  %43 = getelementptr inbounds %struct.table_info, %struct.table_info* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  ret i32 0
}

declare dso_local i8* @malloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
