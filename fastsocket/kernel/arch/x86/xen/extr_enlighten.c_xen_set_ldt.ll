; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/xen/extr_enlighten.c_xen_set_ldt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/xen/extr_enlighten.c_xen_set_ldt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmuext_op = type { %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.multicall_space = type { i32, %struct.mmuext_op* }

@MMUEXT_SET_LDT = common dso_local global i32 0, align 4
@DOMID_SELF = common dso_local global i32 0, align 4
@PARAVIRT_LAZY_CPU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @xen_set_ldt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xen_set_ldt(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mmuext_op*, align 8
  %6 = alloca %struct.multicall_space, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = call { i32, %struct.mmuext_op* } @xen_mc_entry(i32 24)
  %8 = bitcast %struct.multicall_space* %6 to { i32, %struct.mmuext_op* }*
  %9 = getelementptr inbounds { i32, %struct.mmuext_op* }, { i32, %struct.mmuext_op* }* %8, i32 0, i32 0
  %10 = extractvalue { i32, %struct.mmuext_op* } %7, 0
  store i32 %10, i32* %9, align 8
  %11 = getelementptr inbounds { i32, %struct.mmuext_op* }, { i32, %struct.mmuext_op* }* %8, i32 0, i32 1
  %12 = extractvalue { i32, %struct.mmuext_op* } %7, 1
  store %struct.mmuext_op* %12, %struct.mmuext_op** %11, align 8
  %13 = getelementptr inbounds %struct.multicall_space, %struct.multicall_space* %6, i32 0, i32 1
  %14 = load %struct.mmuext_op*, %struct.mmuext_op** %13, align 8
  store %struct.mmuext_op* %14, %struct.mmuext_op** %5, align 8
  %15 = load i32, i32* @MMUEXT_SET_LDT, align 4
  %16 = load %struct.mmuext_op*, %struct.mmuext_op** %5, align 8
  %17 = getelementptr inbounds %struct.mmuext_op, %struct.mmuext_op* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 8
  %18 = load i8*, i8** %3, align 8
  %19 = ptrtoint i8* %18 to i64
  %20 = load %struct.mmuext_op*, %struct.mmuext_op** %5, align 8
  %21 = getelementptr inbounds %struct.mmuext_op, %struct.mmuext_op* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store i64 %19, i64* %22, align 8
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.mmuext_op*, %struct.mmuext_op** %5, align 8
  %25 = getelementptr inbounds %struct.mmuext_op, %struct.mmuext_op* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 8
  %27 = getelementptr inbounds %struct.multicall_space, %struct.multicall_space* %6, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.mmuext_op*, %struct.mmuext_op** %5, align 8
  %30 = load i32, i32* @DOMID_SELF, align 4
  %31 = call i32 @MULTI_mmuext_op(i32 %28, %struct.mmuext_op* %29, i32 1, i32* null, i32 %30)
  %32 = load i32, i32* @PARAVIRT_LAZY_CPU, align 4
  %33 = call i32 @xen_mc_issue(i32 %32)
  ret void
}

declare dso_local { i32, %struct.mmuext_op* } @xen_mc_entry(i32) #1

declare dso_local i32 @MULTI_mmuext_op(i32, %struct.mmuext_op*, i32, i32*, i32) #1

declare dso_local i32 @xen_mc_issue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
