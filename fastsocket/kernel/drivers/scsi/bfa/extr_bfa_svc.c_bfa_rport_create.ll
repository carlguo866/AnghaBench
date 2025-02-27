; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_bfa_rport_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_bfa_rport_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_rport_s = type { i32, i8*, %struct.bfa_s* }
%struct.bfa_s = type { i32 }

@bfa_rport_sm_uninit = common dso_local global i32 0, align 4
@BFA_RPORT_SM_CREATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bfa_rport_s* @bfa_rport_create(%struct.bfa_s* %0, i8* %1) #0 {
  %3 = alloca %struct.bfa_rport_s*, align 8
  %4 = alloca %struct.bfa_s*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.bfa_rport_s*, align 8
  store %struct.bfa_s* %0, %struct.bfa_s** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.bfa_s*, %struct.bfa_s** %4, align 8
  %8 = call i32 @BFA_RPORT_MOD(%struct.bfa_s* %7)
  %9 = call %struct.bfa_rport_s* @bfa_rport_alloc(i32 %8)
  store %struct.bfa_rport_s* %9, %struct.bfa_rport_s** %6, align 8
  %10 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %6, align 8
  %11 = icmp eq %struct.bfa_rport_s* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store %struct.bfa_rport_s* null, %struct.bfa_rport_s** %3, align 8
  br label %34

13:                                               ; preds = %2
  %14 = load %struct.bfa_s*, %struct.bfa_s** %4, align 8
  %15 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %6, align 8
  %16 = getelementptr inbounds %struct.bfa_rport_s, %struct.bfa_rport_s* %15, i32 0, i32 2
  store %struct.bfa_s* %14, %struct.bfa_s** %16, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %6, align 8
  %19 = getelementptr inbounds %struct.bfa_rport_s, %struct.bfa_rport_s* %18, i32 0, i32 1
  store i8* %17, i8** %19, align 8
  %20 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %6, align 8
  %21 = getelementptr inbounds %struct.bfa_rport_s, %struct.bfa_rport_s* %20, i32 0, i32 0
  %22 = call i32 @memset(i32* %21, i32 0, i32 4)
  %23 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %6, align 8
  %24 = load i32, i32* @bfa_rport_sm_uninit, align 4
  %25 = call i32 @bfa_sm_cmp_state(%struct.bfa_rport_s* %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 @WARN_ON(i32 %28)
  %30 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %6, align 8
  %31 = load i32, i32* @BFA_RPORT_SM_CREATE, align 4
  %32 = call i32 @bfa_sm_send_event(%struct.bfa_rport_s* %30, i32 %31)
  %33 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %6, align 8
  store %struct.bfa_rport_s* %33, %struct.bfa_rport_s** %3, align 8
  br label %34

34:                                               ; preds = %13, %12
  %35 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %3, align 8
  ret %struct.bfa_rport_s* %35
}

declare dso_local %struct.bfa_rport_s* @bfa_rport_alloc(i32) #1

declare dso_local i32 @BFA_RPORT_MOD(%struct.bfa_s*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @bfa_sm_cmp_state(%struct.bfa_rport_s*, i32) #1

declare dso_local i32 @bfa_sm_send_event(%struct.bfa_rport_s*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
