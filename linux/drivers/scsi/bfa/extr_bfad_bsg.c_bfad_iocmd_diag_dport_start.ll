; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_iocmd_diag_dport_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_iocmd_diag_dport_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfad_s = type { i32, i32 }
%struct.bfa_bsg_dport_enable_s = type { i64, i32, i32 }
%struct.bfad_hal_comp = type { i64, i32 }

@bfad_hcb_comp = common dso_local global i32 0, align 4
@BFA_STATUS_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfad_iocmd_diag_dport_start(%struct.bfad_s* %0, i8* %1) #0 {
  %3 = alloca %struct.bfad_s*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.bfa_bsg_dport_enable_s*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.bfad_hal_comp, align 8
  store %struct.bfad_s* %0, %struct.bfad_s** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.bfa_bsg_dport_enable_s*
  store %struct.bfa_bsg_dport_enable_s* %9, %struct.bfa_bsg_dport_enable_s** %5, align 8
  %10 = getelementptr inbounds %struct.bfad_hal_comp, %struct.bfad_hal_comp* %7, i32 0, i32 1
  %11 = call i32 @init_completion(i32* %10)
  %12 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %13 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %12, i32 0, i32 0
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %17 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %16, i32 0, i32 1
  %18 = load %struct.bfa_bsg_dport_enable_s*, %struct.bfa_bsg_dport_enable_s** %5, align 8
  %19 = getelementptr inbounds %struct.bfa_bsg_dport_enable_s, %struct.bfa_bsg_dport_enable_s* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.bfa_bsg_dport_enable_s*, %struct.bfa_bsg_dport_enable_s** %5, align 8
  %22 = getelementptr inbounds %struct.bfa_bsg_dport_enable_s, %struct.bfa_bsg_dport_enable_s* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @bfad_hcb_comp, align 4
  %25 = call i64 @bfa_dport_start(i32* %17, i32 %20, i32 %23, i32 %24, %struct.bfad_hal_comp* %7)
  %26 = load %struct.bfa_bsg_dport_enable_s*, %struct.bfa_bsg_dport_enable_s** %5, align 8
  %27 = getelementptr inbounds %struct.bfa_bsg_dport_enable_s, %struct.bfa_bsg_dport_enable_s* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %29 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %28, i32 0, i32 0
  %30 = load i64, i64* %6, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32* %29, i64 %30)
  %32 = load %struct.bfa_bsg_dport_enable_s*, %struct.bfa_bsg_dport_enable_s** %5, align 8
  %33 = getelementptr inbounds %struct.bfa_bsg_dport_enable_s, %struct.bfa_bsg_dport_enable_s* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @BFA_STATUS_OK, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %2
  %38 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %39 = load %struct.bfa_bsg_dport_enable_s*, %struct.bfa_bsg_dport_enable_s** %5, align 8
  %40 = getelementptr inbounds %struct.bfa_bsg_dport_enable_s, %struct.bfa_bsg_dport_enable_s* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @bfa_trc(%struct.bfad_s* %38, i64 %41)
  br label %50

43:                                               ; preds = %2
  %44 = getelementptr inbounds %struct.bfad_hal_comp, %struct.bfad_hal_comp* %7, i32 0, i32 1
  %45 = call i32 @wait_for_completion(i32* %44)
  %46 = getelementptr inbounds %struct.bfad_hal_comp, %struct.bfad_hal_comp* %7, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.bfa_bsg_dport_enable_s*, %struct.bfa_bsg_dport_enable_s** %5, align 8
  %49 = getelementptr inbounds %struct.bfa_bsg_dport_enable_s, %struct.bfa_bsg_dport_enable_s* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  br label %50

50:                                               ; preds = %43, %37
  ret i32 0
}

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @bfa_dport_start(i32*, i32, i32, i32, %struct.bfad_hal_comp*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @bfa_trc(%struct.bfad_s*, i64) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
