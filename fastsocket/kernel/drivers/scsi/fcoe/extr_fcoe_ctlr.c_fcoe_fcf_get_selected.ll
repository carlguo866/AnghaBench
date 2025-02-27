; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fcoe/extr_fcoe_ctlr.c_fcoe_fcf_get_selected.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fcoe/extr_fcoe_ctlr.c_fcoe_fcf_get_selected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fcoe_fcf_device = type { i32 }
%struct.fcoe_ctlr_device = type { i32 }
%struct.fcoe_ctlr = type { i32, %struct.fcoe_fcf* }
%struct.fcoe_fcf = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fcoe_fcf_get_selected(%struct.fcoe_fcf_device* %0) #0 {
  %2 = alloca %struct.fcoe_fcf_device*, align 8
  %3 = alloca %struct.fcoe_ctlr_device*, align 8
  %4 = alloca %struct.fcoe_ctlr*, align 8
  %5 = alloca %struct.fcoe_fcf*, align 8
  store %struct.fcoe_fcf_device* %0, %struct.fcoe_fcf_device** %2, align 8
  %6 = load %struct.fcoe_fcf_device*, %struct.fcoe_fcf_device** %2, align 8
  %7 = call %struct.fcoe_ctlr_device* @fcoe_fcf_dev_to_ctlr_dev(%struct.fcoe_fcf_device* %6)
  store %struct.fcoe_ctlr_device* %7, %struct.fcoe_ctlr_device** %3, align 8
  %8 = load %struct.fcoe_ctlr_device*, %struct.fcoe_ctlr_device** %3, align 8
  %9 = call %struct.fcoe_ctlr* @fcoe_ctlr_device_priv(%struct.fcoe_ctlr_device* %8)
  store %struct.fcoe_ctlr* %9, %struct.fcoe_ctlr** %4, align 8
  %10 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %4, align 8
  %11 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.fcoe_ctlr_device*, %struct.fcoe_ctlr_device** %3, align 8
  %14 = getelementptr inbounds %struct.fcoe_ctlr_device, %struct.fcoe_ctlr_device* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.fcoe_fcf_device*, %struct.fcoe_fcf_device** %2, align 8
  %17 = call %struct.fcoe_fcf* @fcoe_fcf_device_priv(%struct.fcoe_fcf_device* %16)
  store %struct.fcoe_fcf* %17, %struct.fcoe_fcf** %5, align 8
  %18 = load %struct.fcoe_fcf*, %struct.fcoe_fcf** %5, align 8
  %19 = icmp ne %struct.fcoe_fcf* %18, null
  br i1 %19, label %20, label %30

20:                                               ; preds = %1
  %21 = load %struct.fcoe_fcf*, %struct.fcoe_fcf** %5, align 8
  %22 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %4, align 8
  %23 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %22, i32 0, i32 1
  %24 = load %struct.fcoe_fcf*, %struct.fcoe_fcf** %23, align 8
  %25 = icmp eq %struct.fcoe_fcf* %21, %24
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 1, i32 0
  %28 = load %struct.fcoe_fcf_device*, %struct.fcoe_fcf_device** %2, align 8
  %29 = getelementptr inbounds %struct.fcoe_fcf_device, %struct.fcoe_fcf_device* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  br label %33

30:                                               ; preds = %1
  %31 = load %struct.fcoe_fcf_device*, %struct.fcoe_fcf_device** %2, align 8
  %32 = getelementptr inbounds %struct.fcoe_fcf_device, %struct.fcoe_fcf_device* %31, i32 0, i32 0
  store i32 0, i32* %32, align 4
  br label %33

33:                                               ; preds = %30, %20
  %34 = load %struct.fcoe_ctlr_device*, %struct.fcoe_ctlr_device** %3, align 8
  %35 = getelementptr inbounds %struct.fcoe_ctlr_device, %struct.fcoe_ctlr_device* %34, i32 0, i32 0
  %36 = call i32 @mutex_unlock(i32* %35)
  %37 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %4, align 8
  %38 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %37, i32 0, i32 0
  %39 = call i32 @mutex_unlock(i32* %38)
  ret void
}

declare dso_local %struct.fcoe_ctlr_device* @fcoe_fcf_dev_to_ctlr_dev(%struct.fcoe_fcf_device*) #1

declare dso_local %struct.fcoe_ctlr* @fcoe_ctlr_device_priv(%struct.fcoe_ctlr_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.fcoe_fcf* @fcoe_fcf_device_priv(%struct.fcoe_fcf_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
