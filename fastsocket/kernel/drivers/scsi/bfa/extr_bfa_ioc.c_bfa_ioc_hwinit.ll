; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_ioc_hwinit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_ioc_hwinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ioc_s = type { i32 }

@BFI_IOC_UNINIT = common dso_local global i32 0, align 4
@BFI_FWBOOT_TYPE_NORMAL = common dso_local global i32 0, align 4
@BFI_FWBOOT_ENV_OS = common dso_local global i32 0, align 4
@BFA_FALSE = common dso_local global i64 0, align 8
@BFI_IOC_INITING = common dso_local global i32 0, align 4
@BFI_IOC_DISABLED = common dso_local global i32 0, align 4
@BFI_IOC_OP = common dso_local global i32 0, align 4
@IOCPF_E_FWREADY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_ioc_s*, i64)* @bfa_ioc_hwinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_ioc_hwinit(%struct.bfa_ioc_s* %0, i64 %1) #0 {
  %3 = alloca %struct.bfa_ioc_s*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bfa_ioc_s* %0, %struct.bfa_ioc_s** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %10 = call i32 @bfa_ioc_get_cur_ioc_fwstate(%struct.bfa_ioc_s* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i64, i64* %4, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @BFI_IOC_UNINIT, align 4
  store i32 %14, i32* %5, align 4
  br label %15

15:                                               ; preds = %13, %2
  %16 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @bfa_trc(%struct.bfa_ioc_s* %16, i32 %17)
  %19 = load i32, i32* @BFI_FWBOOT_TYPE_NORMAL, align 4
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* @BFI_FWBOOT_ENV_OS, align 4
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @BFI_IOC_UNINIT, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %15
  %25 = load i64, i64* @BFA_FALSE, align 8
  br label %30

26:                                               ; preds = %15
  %27 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i64 @bfa_ioc_fwver_valid(%struct.bfa_ioc_s* %27, i32 %28)
  br label %30

30:                                               ; preds = %26, %24
  %31 = phi i64 [ %25, %24 ], [ %29, %26 ]
  store i64 %31, i64* %6, align 8
  %32 = load i64, i64* %6, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %30
  %35 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @bfa_ioc_boot(%struct.bfa_ioc_s* %35, i32 %36, i32 %37)
  %39 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %40 = call i32 @bfa_ioc_poll_fwinit(%struct.bfa_ioc_s* %39)
  br label %70

41:                                               ; preds = %30
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @BFI_IOC_INITING, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %47 = call i32 @bfa_ioc_poll_fwinit(%struct.bfa_ioc_s* %46)
  br label %70

48:                                               ; preds = %41
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @BFI_IOC_DISABLED, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %56, label %52

52:                                               ; preds = %48
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @BFI_IOC_OP, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %52, %48
  %57 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %58 = call i32 @bfa_ioc_msgflush(%struct.bfa_ioc_s* %57)
  %59 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %60 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %59, i32 0, i32 0
  %61 = load i32, i32* @IOCPF_E_FWREADY, align 4
  %62 = call i32 @bfa_fsm_send_event(i32* %60, i32 %61)
  br label %70

63:                                               ; preds = %52
  %64 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @bfa_ioc_boot(%struct.bfa_ioc_s* %64, i32 %65, i32 %66)
  %68 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %69 = call i32 @bfa_ioc_poll_fwinit(%struct.bfa_ioc_s* %68)
  br label %70

70:                                               ; preds = %63, %56, %45, %34
  ret void
}

declare dso_local i32 @bfa_ioc_get_cur_ioc_fwstate(%struct.bfa_ioc_s*) #1

declare dso_local i32 @bfa_trc(%struct.bfa_ioc_s*, i32) #1

declare dso_local i64 @bfa_ioc_fwver_valid(%struct.bfa_ioc_s*, i32) #1

declare dso_local i32 @bfa_ioc_boot(%struct.bfa_ioc_s*, i32, i32) #1

declare dso_local i32 @bfa_ioc_poll_fwinit(%struct.bfa_ioc_s*) #1

declare dso_local i32 @bfa_ioc_msgflush(%struct.bfa_ioc_s*) #1

declare dso_local i32 @bfa_fsm_send_event(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
