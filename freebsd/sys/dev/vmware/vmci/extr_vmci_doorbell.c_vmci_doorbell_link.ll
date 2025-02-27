; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmci/extr_vmci_doorbell.c_vmci_doorbell_link.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmci/extr_vmci_doorbell.c_vmci_doorbell_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmci_handle = type { i32 }
%struct.vmci_doorbell_link_msg = type { i32, %struct.vmci_handle, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32 }
%struct.vmci_datagram = type { i32 }

@VMCI_DOORBELL_LINK = common dso_local global i32 0, align 4
@VMCI_ERROR_UNAVAILABLE = common dso_local global i32 0, align 4
@VMCI_HYPERVISOR_CONTEXT_ID = common dso_local global i32 0, align 4
@VMCI_ANON_SRC_HANDLE = common dso_local global i32 0, align 4
@VMCI_DG_HEADERSIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @vmci_doorbell_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmci_doorbell_link(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vmci_handle, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.vmci_doorbell_link_msg, align 8
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %5, i32 0, i32 0
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %5, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @VMCI_HANDLE_INVALID(i32 %12)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @ASSERT(i32 %16)
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @VMCI_DOORBELL_LINK, align 4
  store i32 %21, i32* %9, align 4
  br label %25

22:                                               ; preds = %3
  %23 = call i32 @ASSERT(i32 0)
  %24 = load i32, i32* @VMCI_ERROR_UNAVAILABLE, align 4
  store i32 %24, i32* %4, align 4
  br label %45

25:                                               ; preds = %20
  %26 = load i32, i32* @VMCI_HYPERVISOR_CONTEXT_ID, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @VMCI_MAKE_HANDLE(i32 %26, i32 %27)
  %29 = getelementptr inbounds %struct.vmci_doorbell_link_msg, %struct.vmci_doorbell_link_msg* %8, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @VMCI_ANON_SRC_HANDLE, align 4
  %32 = getelementptr inbounds %struct.vmci_doorbell_link_msg, %struct.vmci_doorbell_link_msg* %8, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 8
  %34 = load i64, i64* @VMCI_DG_HEADERSIZE, align 8
  %35 = sub i64 24, %34
  %36 = getelementptr inbounds %struct.vmci_doorbell_link_msg, %struct.vmci_doorbell_link_msg* %8, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = getelementptr inbounds %struct.vmci_doorbell_link_msg, %struct.vmci_doorbell_link_msg* %8, i32 0, i32 1
  %39 = bitcast %struct.vmci_handle* %38 to i8*
  %40 = bitcast %struct.vmci_handle* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %39, i8* align 4 %40, i64 4, i1 false)
  %41 = load i32, i32* %7, align 4
  %42 = getelementptr inbounds %struct.vmci_doorbell_link_msg, %struct.vmci_doorbell_link_msg* %8, i32 0, i32 0
  store i32 %41, i32* %42, align 8
  %43 = bitcast %struct.vmci_doorbell_link_msg* %8 to %struct.vmci_datagram*
  %44 = call i32 @vmci_send_datagram(%struct.vmci_datagram* %43)
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %25, %22
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @VMCI_HANDLE_INVALID(i32) #1

declare dso_local i32 @VMCI_MAKE_HANDLE(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @vmci_send_datagram(%struct.vmci_datagram*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
