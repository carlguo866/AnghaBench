; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_ipfw_destroy_srv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_ipfw_destroy_srv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32, i32 }

@M_IPFW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipfw_destroy_srv(%struct.ip_fw_chain* %0) #0 {
  %2 = alloca %struct.ip_fw_chain*, align 8
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %2, align 8
  %3 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %2, align 8
  %4 = getelementptr inbounds %struct.ip_fw_chain, %struct.ip_fw_chain* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @M_IPFW, align 4
  %7 = call i32 @free(i32 %5, i32 %6)
  %8 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %2, align 8
  %9 = getelementptr inbounds %struct.ip_fw_chain, %struct.ip_fw_chain* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @ipfw_objhash_destroy(i32 %10)
  ret void
}

declare dso_local i32 @free(i32, i32) #1

declare dso_local i32 @ipfw_objhash_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
