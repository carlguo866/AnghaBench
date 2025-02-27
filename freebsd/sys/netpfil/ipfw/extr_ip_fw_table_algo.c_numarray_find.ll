; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table_algo.c_numarray_find.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table_algo.c_numarray_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.numarray = type { i32 }
%struct.table_info = type { i32, i32 }

@compare_ifidx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.numarray* (%struct.table_info*, i8*)* @numarray_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.numarray* @numarray_find(%struct.table_info* %0, i8* %1) #0 {
  %3 = alloca %struct.table_info*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.numarray*, align 8
  store %struct.table_info* %0, %struct.table_info** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = load %struct.table_info*, %struct.table_info** %3, align 8
  %8 = getelementptr inbounds %struct.table_info, %struct.table_info* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.table_info*, %struct.table_info** %3, align 8
  %11 = getelementptr inbounds %struct.table_info, %struct.table_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @compare_ifidx, align 4
  %14 = call %struct.numarray* @bsearch(i8* %6, i32 %9, i32 %12, i32 4, i32 %13)
  store %struct.numarray* %14, %struct.numarray** %5, align 8
  %15 = load %struct.numarray*, %struct.numarray** %5, align 8
  ret %struct.numarray* %15
}

declare dso_local %struct.numarray* @bsearch(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
