; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_ioc_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_ioc_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ioc_s = type { i32, %struct.TYPE_2__, i32, i8*, i8*, %struct.bfa_timer_mod_s*, %struct.bfa_ioc_cbfn_s*, i8* }
%struct.TYPE_2__ = type { %struct.bfa_ioc_s* }
%struct.bfa_ioc_cbfn_s = type { i32 }
%struct.bfa_timer_mod_s = type { i32 }

@BFA_FALSE = common dso_local global i8* null, align 8
@BFA_TRUE = common dso_local global i32 0, align 4
@bfa_ioc_sm_uninit = common dso_local global i32 0, align 4
@IOC_E_RESET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_ioc_attach(%struct.bfa_ioc_s* %0, i8* %1, %struct.bfa_ioc_cbfn_s* %2, %struct.bfa_timer_mod_s* %3) #0 {
  %5 = alloca %struct.bfa_ioc_s*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.bfa_ioc_cbfn_s*, align 8
  %8 = alloca %struct.bfa_timer_mod_s*, align 8
  store %struct.bfa_ioc_s* %0, %struct.bfa_ioc_s** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.bfa_ioc_cbfn_s* %2, %struct.bfa_ioc_cbfn_s** %7, align 8
  store %struct.bfa_timer_mod_s* %3, %struct.bfa_timer_mod_s** %8, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %5, align 8
  %11 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %10, i32 0, i32 7
  store i8* %9, i8** %11, align 8
  %12 = load %struct.bfa_ioc_cbfn_s*, %struct.bfa_ioc_cbfn_s** %7, align 8
  %13 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %5, align 8
  %14 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %13, i32 0, i32 6
  store %struct.bfa_ioc_cbfn_s* %12, %struct.bfa_ioc_cbfn_s** %14, align 8
  %15 = load %struct.bfa_timer_mod_s*, %struct.bfa_timer_mod_s** %8, align 8
  %16 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %5, align 8
  %17 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %16, i32 0, i32 5
  store %struct.bfa_timer_mod_s* %15, %struct.bfa_timer_mod_s** %17, align 8
  %18 = load i8*, i8** @BFA_FALSE, align 8
  %19 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %5, align 8
  %20 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %19, i32 0, i32 4
  store i8* %18, i8** %20, align 8
  %21 = load i8*, i8** @BFA_FALSE, align 8
  %22 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %5, align 8
  %23 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %22, i32 0, i32 3
  store i8* %21, i8** %23, align 8
  %24 = load i32, i32* @BFA_TRUE, align 4
  %25 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %5, align 8
  %26 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  %27 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %5, align 8
  %28 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %5, align 8
  %29 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store %struct.bfa_ioc_s* %27, %struct.bfa_ioc_s** %30, align 8
  %31 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %5, align 8
  %32 = call i32 @bfa_ioc_mbox_attach(%struct.bfa_ioc_s* %31)
  %33 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %5, align 8
  %34 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %33, i32 0, i32 0
  %35 = call i32 @INIT_LIST_HEAD(i32* %34)
  %36 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %5, align 8
  %37 = load i32, i32* @bfa_ioc_sm_uninit, align 4
  %38 = call i32 @bfa_fsm_set_state(%struct.bfa_ioc_s* %36, i32 %37)
  %39 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %5, align 8
  %40 = load i32, i32* @IOC_E_RESET, align 4
  %41 = call i32 @bfa_fsm_send_event(%struct.bfa_ioc_s* %39, i32 %40)
  ret void
}

declare dso_local i32 @bfa_ioc_mbox_attach(%struct.bfa_ioc_s*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @bfa_fsm_set_state(%struct.bfa_ioc_s*, i32) #1

declare dso_local i32 @bfa_fsm_send_event(%struct.bfa_ioc_s*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
