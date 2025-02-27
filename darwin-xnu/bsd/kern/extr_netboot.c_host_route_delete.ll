; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_netboot.c_host_route_delete.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_netboot.c_host_route_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_addr = type { i32 }

@RTM_DELETE = common dso_local global i32 0, align 4
@RTF_HOST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @host_route_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @host_route_delete(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.in_addr, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.in_addr, align 4
  %6 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %3, i32 0, i32 0
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %4, align 4
  %7 = bitcast %struct.in_addr* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %7, i8 0, i64 4, i1 false)
  %8 = load i32, i32* @RTM_DELETE, align 4
  %9 = load i32, i32* @RTF_HOST, align 4
  %10 = load i32, i32* %4, align 4
  %11 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %3, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %5, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %5, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @route_cmd(i32 %8, i32 %12, i32 %14, i32 %16, i32 %9, i32 %10)
  ret i32 %17
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @route_cmd(i32, i32, i32, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
