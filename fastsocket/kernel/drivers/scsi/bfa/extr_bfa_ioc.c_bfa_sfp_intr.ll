; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_sfp_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_sfp_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfi_mbmsg_s = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.bfa_sfp_s = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_sfp_intr(i8* %0, %struct.bfi_mbmsg_s* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.bfi_mbmsg_s*, align 8
  %5 = alloca %struct.bfa_sfp_s*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.bfi_mbmsg_s* %1, %struct.bfi_mbmsg_s** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.bfa_sfp_s*
  store %struct.bfa_sfp_s* %7, %struct.bfa_sfp_s** %5, align 8
  %8 = load %struct.bfi_mbmsg_s*, %struct.bfi_mbmsg_s** %4, align 8
  %9 = getelementptr inbounds %struct.bfi_mbmsg_s, %struct.bfi_mbmsg_s* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %20 [
    i32 128, label %12
    i32 129, label %16
  ]

12:                                               ; preds = %2
  %13 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %5, align 8
  %14 = load %struct.bfi_mbmsg_s*, %struct.bfi_mbmsg_s** %4, align 8
  %15 = call i32 @bfa_sfp_show_comp(%struct.bfa_sfp_s* %13, %struct.bfi_mbmsg_s* %14)
  br label %28

16:                                               ; preds = %2
  %17 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %5, align 8
  %18 = load %struct.bfi_mbmsg_s*, %struct.bfi_mbmsg_s** %4, align 8
  %19 = call i32 @bfa_sfp_scn(%struct.bfa_sfp_s* %17, %struct.bfi_mbmsg_s* %18)
  br label %28

20:                                               ; preds = %2
  %21 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %5, align 8
  %22 = load %struct.bfi_mbmsg_s*, %struct.bfi_mbmsg_s** %4, align 8
  %23 = getelementptr inbounds %struct.bfi_mbmsg_s, %struct.bfi_mbmsg_s* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @bfa_trc(%struct.bfa_sfp_s* %21, i32 %25)
  %27 = call i32 @WARN_ON(i32 1)
  br label %28

28:                                               ; preds = %20, %16, %12
  ret void
}

declare dso_local i32 @bfa_sfp_show_comp(%struct.bfa_sfp_s*, %struct.bfi_mbmsg_s*) #1

declare dso_local i32 @bfa_sfp_scn(%struct.bfa_sfp_s*, %struct.bfi_mbmsg_s*) #1

declare dso_local i32 @bfa_trc(%struct.bfa_sfp_s*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
