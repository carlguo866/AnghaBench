; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table_algo.c_ta_dump_fhash_tinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table_algo.c_ta_dump_fhash_tinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.table_info = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }
%struct.fhash_cfg = type { i32, i32 }

@IPFW_TATFLAGS_AFITEM = common dso_local global i32 0, align 4
@IPFW_TACLASS_HASH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.table_info*, %struct.TYPE_3__*)* @ta_dump_fhash_tinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ta_dump_fhash_tinfo(i8* %0, %struct.table_info* %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.table_info*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca %struct.fhash_cfg*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.table_info* %1, %struct.table_info** %5, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %6, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.fhash_cfg*
  store %struct.fhash_cfg* %9, %struct.fhash_cfg** %7, align 8
  %10 = load i32, i32* @IPFW_TATFLAGS_AFITEM, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 5
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* @IPFW_TACLASS_HASH, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 4
  store i32 %13, i32* %15, align 4
  %16 = load %struct.fhash_cfg*, %struct.fhash_cfg** %7, align 8
  %17 = getelementptr inbounds %struct.fhash_cfg, %struct.fhash_cfg* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 4
  %21 = load %struct.fhash_cfg*, %struct.fhash_cfg** %7, align 8
  %22 = getelementptr inbounds %struct.fhash_cfg, %struct.fhash_cfg* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store i32 4, i32* %27, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  store i32 4, i32* %29, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
