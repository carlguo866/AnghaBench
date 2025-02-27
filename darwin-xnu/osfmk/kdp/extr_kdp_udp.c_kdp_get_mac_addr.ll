; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kdp/extr_kdp_udp.c_kdp_get_mac_addr.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kdp/extr_kdp_udp.c_kdp_get_mac_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kdp_ether_addr = type { i32 }

@kdp_current_mac_address = common dso_local global %struct.kdp_ether_addr zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kdp_get_mac_addr() #0 {
  %1 = alloca %struct.kdp_ether_addr, align 4
  %2 = bitcast %struct.kdp_ether_addr* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %2, i8* align 4 bitcast (%struct.kdp_ether_addr* @kdp_current_mac_address to i8*), i64 4, i1 false)
  %3 = getelementptr inbounds %struct.kdp_ether_addr, %struct.kdp_ether_addr* %1, i32 0, i32 0
  %4 = load i32, i32* %3, align 4
  ret i32 %4
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
